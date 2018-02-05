DECLARE

	v_employee_id employees.employee_id%TYPE;
	v_last_name employees.last_name%TYPE;

BEGIN

	SELECT employee_id, last_name INTO v_employee_id, v_last_name
	FROM employees
	WHERE department_id = 20; -- run with values 10, 20, and 30
	
	DBMS_OUTPUT.PUT_LINE('The SELECT was successful');

EXCEPTION

	WHEN OTHERS THEN
	DBMS_OUTPUT.PUT_LINE('An exception has occurred');

END;
/
