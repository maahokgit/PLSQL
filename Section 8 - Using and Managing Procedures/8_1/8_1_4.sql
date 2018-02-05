--Create Employee Dups
/*
DROP TABLE employees_dup;
CREATE TABLE employees_dup AS SELECT * FROM employees;

--A) Create name_change procedure
CREATE OR REPLACE PROCEDURE name_change IS
BEGIN
	UPDATE employees_dup
	SET first_name = 'Susan'
	WHERE department_id = 80;
END name_change;
/
*/
-- B) INVOKE the procedure
BEGIN
	name_change;
END;
/
