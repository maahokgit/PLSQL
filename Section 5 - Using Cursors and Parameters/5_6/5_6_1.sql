DECLARE
	CURSOR cur_depts IS
		SELECT department_name, department_id
		FROM departments ORDER BY department_id ASC;
	
	CURSOR cur_emps(p_dept_id departments.department_id%TYPE) IS
		SELECT first_name, last_name, salary
		FROM employees
		WHERE department_id = p_dept_id
		ORDER BY last_name ASC;
	
	v_dept_rec cur_depts%ROWTYPE;
	v_emps_rec cur_emps%ROWTYPE;
BEGIN
	FOR v_dept_rec IN cur_depts
	LOOP
		DBMS_OUTPUT.PUT_LINE(chr(13)||chr(10)||v_dept_rec.department_id||' '||v_dept_rec.department_name);
		DBMS_OUTPUT.PUT_LINE('-----------------------------');
		FOR v_emps_rec IN cur_emps(v_dept_rec.department_id)
		LOOP
			DBMS_OUTPUT.PUT_LINE(v_emps_rec.first_name||' '||v_emps_rec.last_name||' '||v_emps_rec.salary);
		END LOOP;
	END LOOP;
END;
/
