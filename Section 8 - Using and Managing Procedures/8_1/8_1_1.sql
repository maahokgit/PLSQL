-- Code Sample A
/*
DECLARE
	v_empid employees.employee_id%TYPE := 100;
	v_percent_increase NUMBER(2,2) := .05;
BEGIN
	UPDATE employees
	SET salary = (salary * v_percent_increase) + salary
	WHERE employee_id = v_empid;
END;
/
*/
-- Code Sample B
CREATE PROCEDURE pay_raise
	(p_empid employees employee_id%TYPE,
	p_percent_increase NUMBER)
	IS
BEGIN
	UPDATE employees
	SET salary = (salary * p_percent_increase) + salary
	WHERE employee_id = p_empid;
END pay_raise;
/
