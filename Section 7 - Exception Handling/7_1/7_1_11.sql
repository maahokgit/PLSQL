DECLARE
	v_number NUMBER(4);
BEGIN
	v_number := 1234;
	DECLARE
		v_number NUMBER(4);
	BEGIN
		v_number := 5678;
		v_number := 'A character string';
	END;
EXCEPTION
	WHEN OTHERS THEN
		DBMS_OUTPUT.PUT_LINE('An exception has occurred');
		DBMS_OUTPUT.PUT_LINE('The number is: ' || v_number);
END;
/
