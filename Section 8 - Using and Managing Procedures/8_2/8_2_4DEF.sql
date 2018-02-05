-- Creating Procedure for Question 4D
/*
CREATE OR REPLACE PROCEDURE get_country_count 
(
	p_region_id IN countries.region_id%TYPE,
	p_highest_elevation IN countries.highest_elevation%TYPE,
	p_char IN CHAR
)
IS
v_count NUMBER;

BEGIN
	SELECT count(country_name)
	INTO v_count
	FROM countries 
	WHERE (region_id = p_region_id) 
		AND (highest_elevation > p_highest_elevation) 
		AND (country_name LIKE (p_char||'%'));
	
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
-- 4E) Running Procedure, ID:5, Elevation: 2000, CHAR: 'B'
BEGIN
	get_country_count(5,2000,'B');
END;
/
*/
-- 4F) Running Procedure 5,'B', 2000 ... it will break.... or show exception!
BEGIN
	get_country_count(5,'B',2000);
END;
/
