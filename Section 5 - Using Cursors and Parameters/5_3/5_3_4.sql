-- ANSWER FOR QUESTION 4 in SECTION 5_3
BEGIN
	FOR v_country_elevation IN (
				SELECT country_name, highest_elevation, climate 
				FROM countries WHERE highest_elevation > 8000)
	LOOP
		DBMS_OUTPUT.PUT_LINE('Country: ' || v_country_elevation.country_name ||chr(13)||chr(10)||
					'Highest Elevation: '|| v_country_elevation.highest_elevation ||chr(13)||chr(10)||
					'Climate: ' || v_country_elevation.climate);
	END LOOP;
END;
/
