DECLARE
	x BOOLEAN;
	y BOOLEAN;
	v_color VARCHAR(20) := 'Red';
BEGIN
	IF (x AND y)
		THEN v_color := 'White';
	ELSE
		v_color := 'Black';
	END IF;
		DBMS_OUTPUT.PUT_LINE(v_color);
END;
/
