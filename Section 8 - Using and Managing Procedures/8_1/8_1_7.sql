-- Editing Stored Procedure 'name_change' without errors
CREATE OR REPLACE PROCEDURE name_change IS
BEGIN
	UPDATE employees_dup
	SET first_name = 'Susan'
	WHERE department_id = 80;
END name_change;
/
