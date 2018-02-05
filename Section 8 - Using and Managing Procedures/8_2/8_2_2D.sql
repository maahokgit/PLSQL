-- 2D)
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
EXCEPTION
	WHEN NO_DATA_FOUND THEN
	DBMS_OUTPUT.PUT_LINE('Country ID '||p_country_id||' does not exist');
END get_country_info;
/
*/
-- Running modified Procedure
BEGIN
	get_country_info(95);
END;
/
