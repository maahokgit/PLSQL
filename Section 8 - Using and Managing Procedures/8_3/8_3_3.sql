/*
CREATE OR REPLACE PROCEDURE power_of_two
(
	p_number IN OUT NUMBER
) IS
	
BEGIN
	p_number := p_number * p_number;
END power_of_two;
/ */
DECLARE
	num NUMBER := -20; -- 4, 7, -20
	a_number NUMBER := num;
BEGIN
	power_of_two(a_number);
	DBMS_OUTPUT.PUT_LINE(num||'^2 = '||a_number);
END;
/
