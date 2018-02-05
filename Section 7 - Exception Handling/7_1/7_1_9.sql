DECLARE
	v_number NUMBER(2);
BEGIN
	v_number := 9999;
EXCEPTION
	WHEN OTHERS THEN
		DBMS_OUTPUT.PUT_LINE('An exception has occurred');
END;
/
