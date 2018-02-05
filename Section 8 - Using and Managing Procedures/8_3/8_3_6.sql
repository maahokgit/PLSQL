/* -- 6)
CREATE OR REPLACE PROCEDURE find_area_pop
(
	p_country_id countries.country_id%TYPE DEFAULT 2,
	p_country_name OUT countries.country_name%TYPE,
	p_population OUT countries.population%TYPE,
	p_pop_density OUT NUMBER
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
-- Running Procedure
DECLARE
	v_country_name countries.country_name%TYPE;
	v_population countries.population%TYPE;
	v_pop_density NUMBER;
BEGIN -- default country id: 2 for Canada
	find_area_pop
		(
		p_population => v_population,
		p_pop_density => v_pop_density,	
		p_country_name => v_country_name
		);
	DBMS_OUTPUT.PUT_LINE('Country    : '||v_country_name);
	DBMS_OUTPUT.PUT_LINE('Population : '||v_population);
	DBMS_OUTPUT.PUT_LINE('Pop Density: '||ROUND(v_pop_density,3));
END;
/
