-- Editing Stored Procedure 'pay_raise' for the last question!
/*
CREATE OR REPLACE PROCEDURE pay_raise IS
BEGIN
	UPDATE employees_dup
	SET salary = 1000
	WHERE department_id = 80;

	UPDATE employees_dup
	SET salary = 2000
	WHERE department_id = 50;

	UPDATE employees_dup
	SET salary = 3000
	WHERE (department_id != 80 AND department_id != 50);
END pay_raise;
/
*/
-- Running Procedure
BEGIN
	pay_raise;
END;
/
