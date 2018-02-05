-- 2A) 
-- Creating Stored Procedure 'get_country_info' for the last question!
/*
CREATE OR REPLACE PROCEDURE get_country_info 
(p_country_id IN countries.country_id%TYPE)
IS
v_country_name countries.country_name%TYPE;
v_capitol countries.capitol%TYPE;
BEGIN
	SELECT country_name, capitol INTO v_country_name, v_capitol
	FROM countries WHERE country_id = p_country_id;
	
	DBMS_OUTPUT.PUT_LINE('The Capitol of '||v_country_name||' is '||v_capitol);
END get_country_info;
/
-- 2B) using country id 90 (result should be turkey... and Ankara)
BEGIN
	get_country_info(90);
END;
/
*/
-- 2C) using country id 95
BEGIN
	get_country_info(95);
END;
/
