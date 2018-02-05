-- Editing Stored Procedure 'name_change'
CREATE PROCEDURE name_change IS
BEGIN
	UPDAT employees_dup
	SET first_name = 'Susan'
	WHERE department_id = 80;
END name_change;
/
