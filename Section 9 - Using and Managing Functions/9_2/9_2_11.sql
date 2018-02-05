/* -- Question 11 
CREATE OR REPLACE FUNCTION upd_sal
	(p_emp_id f_emps.employee_id%TYPE)
	RETURN NUMBER
	IS
	v_salary f_emps.salary%TYPE;
BEGIN
	SELECT salary INTO v_salary
	FROM f_emps
	WHERE employee_id = p_emp_id;
	
	v_salary := v_salary * 2;

	UPDATE f_emps
	SET salary = v_salary
	WHERE employee_id = p_emp_id;
	
	RETURN v_salary;
END;
/ */
-- Trying Function...
SELECT employee_id, last_name, salary, upd_sal(employee_id)
FROM f_emps
WHERE employee_id = 100;
