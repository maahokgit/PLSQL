-- US Dollar Code: USD, Swiss franc Code: CHF, Euro Code: EUR

DECLARE
	v_country_code countries.currency_code%TYPE := 'EUR';
	v_curr_count NUMBER;
BEGIN	
	SELECT COUNT(country_name) 
	INTO v_curr_count 
	FROM countries 
	WHERE currency_code = v_country_code;
	
	CASE
		WHEN v_curr_count < 10 THEN
		DBMS_OUTPUT.PUT_LINE(v_country_code ||' is used infewer than 10 countries');
		WHEN v_curr_count >=10 AND v_curr_count < 20 THEN
		DBMS_OUTPUT.PUT_LINE(v_country_code ||' is used in between 10 and 20 countries');
		WHEN v_curr_count > 20 THEN
		DBMS_OUTPUT.PUT_LINE(v_country_code ||' is used in more than 20 countries');
	END CASE;
END;
/
