/* -- Question 10 
CREATE OR REPLACE FUNCTION get_sal
	(p_emp_id f_emps.employee_id%TYPE)
	RETURN NUMBER
	IS
	v_salary f_emps.salary%TYPE;
BEGIN
	SELECT salary INTO v_salary
	FROM f_emps
	WHERE employee_id = p_emp_id;
	RETURN v_salary;
END;
/ */
-- Trying function with Update
UPDATE f_emps
SET department_id = 50
WHERE get_sal(employee_id) > 10000;
