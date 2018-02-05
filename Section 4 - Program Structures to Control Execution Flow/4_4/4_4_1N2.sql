/*
DECLARE
	v_country_id countries.country_id%TYPE := 51;
	v_country_name countries.country_name%TYPE;
BEGIN
	WHILE v_country_id != 56 LOOP
		
		SELECT country_id, country_name 
		INTO v_country_id, v_country_name 
		FROM countries WHERE country_id = v_country_id;
		
		DBMS_OUTPUT.PUT_LINE(v_country_id ||' is '||v_country_name);
		
		v_country_id := v_country_id + 1;
	END LOOP;
END;
/
*/

DECLARE
	v_country_id countries.country_id%TYPE;
	v_country_name countries.country_name%TYPE;
BEGIN
	FOR i IN 51..55
	LOOP	
		SELECT country_id, country_name 
		INTO v_country_id, v_country_name 
		FROM countries WHERE country_id = i;
		
		DBMS_OUTPUT.PUT_LINE(v_country_id ||' is '||v_country_name);
		
	END LOOP;
END;
/
