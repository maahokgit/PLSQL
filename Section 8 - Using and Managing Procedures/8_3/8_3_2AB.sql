/* -- 2A
CREATE OR REPLACE PROCEDURE find_area_pop
(
	p_country_id IN countries.country_id%TYPE,
	p_country_name OUT countries.country_name%TYPE,
	p_population OUT countries.population%TYPE
) IS
BEGIN
	SELECT country_name, population 
	INTO p_country_name, p_population
	FROM countries WHERE country_id = p_country_id;
EXCEPTION
	WHEN NO_DATA_FOUND THEN
		DBMS_OUTPUT.PUT_LINE('Invalid Country ID, try again!');
END find_area_pop;
/*/
-- 2B
DECLARE
	a_country_name countries.country_name%TYPE;
	a_population countries.population%TYPE;
BEGIN -- using country id: 2 for Canada and 10 for nothing... lols
	find_area_pop(10, a_country_name, a_population);
	DBMS_OUTPUT.PUT_LINE('Country    : '||a_country_name);
	DBMS_OUTPUT.PUT_LINE('Population : '||a_population);
END;
/
