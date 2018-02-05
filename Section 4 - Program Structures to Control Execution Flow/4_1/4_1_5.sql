/*
DECLARE
	v_pop countries.population%TYPE;
	c_pop countries.population%TYPE := 1000000000;
BEGIN
	SELECT population 
	INTO v_pop FROM countries
	WHERE country_id = 91; --india
	
	IF v_pop >= c_pop
	THEN
		DBMS_OUTPUT.PUT_LINE('India'||chr(39)||'s Population is greater than '||c_pop);
	ELSE
		DBMS_OUTPUT.PUT_LINE('India'||chr(39)||'s Population is less than '||c_pop);
	END IF;
END;
/
*/

DECLARE
	v_pop countries.population%TYPE;
	c_pop countries.population%TYPE := 1000000000;
BEGIN
	SELECT population 
	INTO v_pop FROM countries
	WHERE country_id = 44; --UK, GOD SAVE THE QUEEN!
	
	IF v_pop >= c_pop
	THEN
		DBMS_OUTPUT.PUT_LINE('UK'||chr(39)||'s Population is greater than '||c_pop);
	ELSE
		DBMS_OUTPUT.PUT_LINE('UK'||chr(39)||'s Population is less than '||c_pop);
	END IF;
END;
/
