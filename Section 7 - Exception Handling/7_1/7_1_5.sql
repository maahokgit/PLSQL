BEGIN
	INSERT INTO departments (department_id, department_name,
	manager_id, location_id)
	VALUES (50, 'A new department', 100, 1500);
	DBMS_OUTPUT.PUT_LINE('The new department was inserted');
EXCEPTION
	WHEN OTHERS THEN
	DBMS_OUTPUT.PUT_LINE ('An exception has occurred.');
END;
/
