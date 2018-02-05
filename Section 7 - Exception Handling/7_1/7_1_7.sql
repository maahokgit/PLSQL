DECLARE

	v_employee_id employees.employee_id%TYPE;
	v_last_name employees.last_name%TYPE;

BEGIN

	SELECT employee_id, last_name INTO v_employee_id, v_last_name
	FROM employees
	WHERE department_id = 30; -- run with values 10, 20, and 30
	
	DBMS_OUTPUT.PUT_LINE('The SELECT was successful');

EXCEPTION
	WHEN NO_DATA_FOUND THEN
	DBMS_OUTPUT.PUT_LINE('An exception: NO_DATA_FOUND has occurred');
	
	WHEN TOO_MANY_ROWS THEN
	DBMS_OUTPUT.PUT_LINE('An exception: TOO_MANY_ROWS has occurred');

	WHEN OTHERS THEN
	DBMS_OUTPUT.PUT_LINE('An exception has occurred');

END;
/
