-- if 0 then leap year, if not 0 then not leap year
-- for year 1990
/*
DECLARE
	v_year NUMBER(4) :=1990;
	v_result NUMBER(4);
BEGIN
	v_result := MOD(v_year, 4);
	
	IF v_result = 0 THEN
		DBMS_OUTPUT.PUT_LINE(v_year||' is a leap year');
	ELSE
		DBMS_OUTPUT.PUT_LINE(v_year||' is not a leap year');
	END IF;
END;
/

-- for year 2000
DECLARE
	v_year NUMBER(4) :=2000;
	v_result NUMBER(4);
BEGIN
	v_result := MOD(v_year, 4);
	
	IF v_result = 0 THEN
		DBMS_OUTPUT.PUT_LINE(v_year||' is a leap year');
	ELSE
		DBMS_OUTPUT.PUT_LINE(v_year||' is not a leap year');
	END IF;
END;
/

-- for year 1996
DECLARE
	v_year NUMBER(4) :=1996;
	v_result NUMBER(4);
BEGIN
	v_result := MOD(v_year, 4);
	
	IF v_result = 0 THEN
		DBMS_OUTPUT.PUT_LINE(v_year||' is a leap year');
	ELSE
		DBMS_OUTPUT.PUT_LINE(v_year||' is not a leap year');
	END IF;
END;
/

-- for year 1900
DECLARE
	v_year NUMBER(4) :=1900;
	v_result NUMBER(4);
BEGIN
	v_result := MOD(v_year, 4);
	
	IF v_result = 0 THEN
		DBMS_OUTPUT.PUT_LINE(v_year||' is a leap year');
	ELSE
		DBMS_OUTPUT.PUT_LINE(v_year||' is not a leap year');
	END IF;
END;
/

-- for year 2016
DECLARE
	v_year NUMBER(4) :=2016;
	v_result NUMBER(4);
BEGIN
	v_result := MOD(v_year, 4);
	
	IF v_result = 0 THEN
		DBMS_OUTPUT.PUT_LINE(v_year||' is a leap year');
	ELSE
		DBMS_OUTPUT.PUT_LINE(v_year||' is not a leap year');
	END IF;
END;
/
*/
-- for year 1884
DECLARE
	v_year NUMBER(4) :=1884;
	v_result NUMBER(4);
BEGIN
	v_result := MOD(v_year, 4);
	
	IF v_result = 0 THEN
		DBMS_OUTPUT.PUT_LINE(v_year||' is a leap year');
	ELSE
		DBMS_OUTPUT.PUT_LINE(v_year||' is not a leap year');
	END IF;
END;
/
