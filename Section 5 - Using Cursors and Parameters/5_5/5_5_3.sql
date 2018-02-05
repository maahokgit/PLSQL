-- Answer for Question 3A in Section 5_5
/*
DECLARE
	CURSOR cur_emp IS
		SELECT date_approved 
		FROM proposed_raises 
		FOR UPDATE OF date_approved NOWAIT;
	--v_emp_rec cur_emp%ROWTYPE;
	v_approveddate proposed_raises.date_approved%TYPE := SYSDATE;
	--v_new_salary proposed_raises.proposed_new_salary%TYPE;
BEGIN
	FOR v_emp_rec IN cur_emp
	LOOP
		UPDATE proposed_raises
		SET date_approved = v_approveddate
		WHERE CURRENT OF cur_emp;
	END LOOP;
END;
/
*/
-- Answer for Question 3B in Section 5_5
DECLARE
	CURSOR cur_emp IS
		SELECT *
		FROM proposed_raises WHERE department_id = 50
		FOR UPDATE NOWAIT;
BEGIN
	FOR v_emp_rec IN cur_emp
	LOOP
		DELETE FROM proposed_raises
		WHERE CURRENT OF cur_emp;
	END LOOP;
END;
/
