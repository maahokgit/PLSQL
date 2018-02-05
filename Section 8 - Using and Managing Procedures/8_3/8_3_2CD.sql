/* --2C
CREATE OR REPLACE PROCEDURE find_area_pop
(
	p_country_id IN countries.country_id%TYPE,
	p_country_name OUT countries.country_name%TYPE,
	p_population OUT countries.population%TYPE,
	p_pop_density IN OUT NUMBER
) IS
	v_area countries.area%TYPE;
BEGIN
	SELECT country_name, population, area 
	INTO p_country_name, p_population, v_area
	FROM countries WHERE country_id = p_country_id;

	p_pop_density := (p_population / v_area);
EXCEPTION
	WHEN NO_DATA_FOUND THEN
		DBMS_OUTPUT.PUT_LINE('Invalid Country ID, try again!');
END find_area_pop;
/ */
-- 2D
DECLARE
	a_country_name countries.country_name%TYPE;
	a_population countries.population%TYPE;
	a_pop_density NUMBER;
BEGIN -- using country id: 2 for Canada and 10 for nothing... lols
	find_area_pop(2, a_country_name, a_population, a_pop_density);
	DBMS_OUTPUT.PUT_LINE('Country    : '||a_country_name);
	DBMS_OUTPUT.PUT_LINE('Population : '||a_population);
	DBMS_OUTPUT.PUT_LINE('Pop Density: '||ROUND(a_pop_density,3));
END;
/
