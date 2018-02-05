DECLARE
	CURSOR cur_region IS
		SELECT region_name, region_id
		FROM regions WHERE region_name LIKE '%America%' ORDER BY region_name ASC;
	
	CURSOR cur_country(p_region_id regions.region_id%TYPE) IS
		SELECT country_name, area, population
		FROM countries
		WHERE region_id = p_region_id
		ORDER BY country_name ASC;
	
	v_region_rec cur_region%ROWTYPE;
	v_country_rec cur_country%ROWTYPE;
BEGIN
	FOR v_region_rec IN cur_region
	LOOP
		DBMS_OUTPUT.PUT_LINE(chr(13)||chr(10)||v_region_rec.region_id||' '||v_region_rec.region_name);
		DBMS_OUTPUT.PUT_LINE('-----------------------------');
		FOR v_country_rec IN cur_country(v_region_rec.region_id)
		LOOP
			DBMS_OUTPUT.PUT_LINE(v_country_rec.country_name||' '||v_country_rec.area||' '||v_country_rec.population);
		END LOOP;
	END LOOP;
END;
/
