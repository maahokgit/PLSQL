DECLARE
	v_country_id countries.country_id%TYPE := 0;
	v_country_name countries.country_name%TYPE;
BEGIN
	LOOP
		v_country_id := v_country_id + 1;
		
		SELECT country_id, country_name 
		INTO v_country_id, v_country_name 
		FROM countries WHERE country_id = v_country_id;
		
		DBMS_OUTPUT.PUT_LINE(v_country_id ||' is '||v_country_name);
		
		IF v_country_id = 3 THEN
			EXIT;
		END IF;	
	END LOOP;
END;
/
