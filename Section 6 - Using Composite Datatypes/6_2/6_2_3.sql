-- ANSWER FOR QUESTION 3A in SECTION 6_2
/*
DECLARE
	CURSOR emp_cur IS 
		SELECT first_name, last_name, job_id, employee_id, salary 
		FROM employees ORDER BY employee_id ASC;

	TYPE t_emp_rec IS TABLE OF emp_cur%ROWTYPE
	INDEX BY BINARY_INTEGER;
	v_emp_rec_tab t_emp_rec;
BEGIN
	FOR emp_rec IN emp_cur
	LOOP
		v_emp_rec_tab(emp_rec.employee_id) := emp_rec;
	END LOOP;
END;
/
*/
-- ANSWER FOR QUESTION 3B IN SECTION 6_2
DECLARE
	CURSOR emp_cur IS 
		SELECT first_name, last_name, job_id, employee_id, salary 
		FROM employees ORDER BY employee_id ASC;

	TYPE t_emp_rec IS TABLE OF emp_cur%ROWTYPE
	INDEX BY BINARY_INTEGER;
	v_emp_rec_tab t_emp_rec;
BEGIN
	FOR emp_rec IN emp_cur
	LOOP
		v_emp_rec_tab(emp_rec.employee_id) := emp_rec;
	END LOOP;

	FOR i IN v_emp_rec_tab.FIRST..v_emp_rec_tab.LAST
	LOOP
		IF v_emp_rec_tab.EXISTS(i) THEN
			DBMS_OUTPUT.PUT_LINE(v_emp_rec_tab(i).first_name||' '||v_emp_rec_tab(i).last_name);
			DBMS_OUTPUT.PUT_LINE('Job ID: '||v_emp_rec_tab(i).job_id);
			DBMS_OUTPUT.PUT_LINE('Salary: '||v_emp_rec_tab(i).salary||chr(13)||chr(10));
		END IF;
	END LOOP;
END;
/
