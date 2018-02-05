-- Create Stored Procedure 'pay_raise'
/*
CREATE OR REPLACE PROCEDURE pay_raise IS
BEGIN
	UPDATE employees_dup
	SET salary = 30000;
END pay_raise;
/
*/
-- Run the Procedure
BEGIN
	pay_raise;
END;
/
