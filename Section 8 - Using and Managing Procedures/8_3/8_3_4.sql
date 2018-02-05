/* -- Question 4A
DECLARE
	v_country_id countries.country_id%TYPE;
	v_country_name countries.country_name%TYPE;
	v_population countries.population%TYPE;
	v_pop_density NUMBER;
BEGIN -- using country id: 2 for Canada
	v_country_id := 2;
	find_area_pop
		(
		p_population => v_population,
		p_pop_density => v_pop_density,	
		p_country_id => v_country_id,
		p_country_name => v_country_name
		);
	DBMS_OUTPUT.PUT_LINE('Country    : '||v_country_name);
	DBMS_OUTPUT.PUT_LINE('Population : '||v_population);
	DBMS_OUTPUT.PUT_LINE('Pop Density: '||ROUND(v_pop_density,3));
END;
/
-- Question 4B
DECLARE
	v_country_name countries.country_name%TYPE;
	v_population countries.population%TYPE;
	v_pop_density NUMBER;
BEGIN -- using country id: 2 for Canada
	find_area_pop
		(
		p_population => v_population,
		p_pop_density => v_pop_density,	
		2,
		p_country_name => v_country_name
		);
	DBMS_OUTPUT.PUT_LINE('Country    : '||v_country_name);
	DBMS_OUTPUT.PUT_LINE('Population : '||v_population);
	DBMS_OUTPUT.PUT_LINE('Pop Density: '||ROUND(v_pop_density,3));
END;
/ */
-- Question 4C
DECLARE
	v_country_name countries.country_name%TYPE;
	v_population countries.population%TYPE;
	v_pop_density NUMBER;
BEGIN -- using country id: 2 for Canada
	find_area_pop
		(
		2,
		p_population => v_population,
		p_pop_density => v_pop_density,	
		p_country_name => v_country_name
		);
	DBMS_OUTPUT.PUT_LINE('Country    : '||v_country_name);
	DBMS_OUTPUT.PUT_LINE('Population : '||v_population);
	DBMS_OUTPUT.PUT_LINE('Pop Density: '||ROUND(v_pop_density,3));
END;
/
