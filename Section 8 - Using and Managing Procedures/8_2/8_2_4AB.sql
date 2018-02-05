-- Creating Procedure for Question 4A
/*
CREATE OR REPLACE PROCEDURE get_country_count 
(
	p_region_id IN countries.region_id%TYPE,
	p_highest_elevation IN countries.highest_elevation%TYPE
)
IS
v_count NUMBER;

BEGIN
	SELECT count(country_name)
	INTO v_count
	FROM countries 
	WHERE region_id = p_region_id AND highest_elevation > p_highest_elevation;
	
	DBMS_OUTPUT.PUT_LINE(
				'There is total of '||
				v_count||
				' countries, with Region ID '||
				p_region_id||
				' with elevation higher than '||
				p_highest_elevation||'.');
EXCEPTION
	WHEN NO_DATA_FOUND THEN
	DBMS_OUTPUT.PUT_LINE('Region ID '||p_region_id||' does not exist');
END get_country_count;
/
*/
-- 4B) Running Stored Procedure
BEGIN
	get_country_count(5, 2000);
END;
/
