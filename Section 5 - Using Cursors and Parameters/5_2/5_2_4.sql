DECLARE
	CURSOR cur_emp_salary IS
			SELECT first_name, last_name, job_id, salary 
			FROM employees ORDER BY salary DESC;
	v_emp_salary cur_emp_salary%ROWTYPE;
BEGIN
	OPEN cur_emp_salary;
	LOOP
		FETCH cur_emp_salary INTO v_emp_salary;
		EXIT WHEN cur_emp_salary%ROWCOUNT > 21 OR cur_emp_salary%NOTFOUND;
		DBMS_OUTPUT.PUT_LINE(v_emp_salary.first_name
					||' '
					||v_emp_salary.last_name
					||' - '
					||v_emp_salary.job_id
					||' - '
					||v_emp_salary.salary);
	END LOOP;
	CLOSE cur_emp_salary;
END;
/
