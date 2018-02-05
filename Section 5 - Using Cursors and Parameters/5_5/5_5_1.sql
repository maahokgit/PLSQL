-- Answer for Question 1 in Section 5_5

DECLARE
	CURSOR cur_emp IS
		SELECT employee_id, department_id, salary 
		FROM employees WHERE salary < 5000 FOR UPDATE NOWAIT;
	v_emp_rec cur_emp%ROWTYPE;
	v_date proposed_raises.date_proposed%TYPE := SYSDATE;
	v_new_salary proposed_raises.proposed_new_salary%TYPE;
BEGIN
	OPEN cur_emp;
		LOOP
			FETCH cur_emp INTO v_emp_rec;
			EXIT WHEN cur_emp%NOTFOUND;
			v_new_salary := v_emp_rec.salary*1.05;
			INSERT INTO proposed_raises(date_proposed,
					employee_id,
					department_id,
					original_salary,
					proposed_new_salary)
			VALUES(v_date,
				v_emp_rec.employee_id, 
				v_emp_rec.department_id, 
				v_emp_rec.salary, 
				v_new_salary);
		END LOOP;
	CLOSE cur_emp;
END;
/
