-- ANSWER FOR QUESTION 2 in SECTION 5_4
DECLARE
	CURSOR cur_country_area (p_region_id NUMBER) IS
		SELECT country_name, area FROM countries
		WHERE region_id = p_region_id;
	v_country_name countries.country_name%TYPE;
	v_country_area countries.area%TYPE;
BEGIN -- chr(13)||chr(10) to break lines so it will look nice.
	DBMS_OUTPUT.PUT_LINE('Area of Country with Region ID 5'||chr(13)||chr(10));
	OPEN cur_country_area (5);
		LOOP
			FETCH cur_country_area INTO v_country_name, v_country_area;
			EXIT WHEN cur_country_area%NOTFOUND;
			DBMS_OUTPUT.PUT_LINE(v_country_name ||' have the area of '|| v_country_area);
		END LOOP;
	CLOSE cur_country_area;

	DBMS_OUTPUT.PUT_LINE(chr(13)||chr(10)||'Area of Country with Region ID 30'||chr(13)||chr(10));
	OPEN cur_country_area (30);
		LOOP
			FETCH cur_country_area INTO v_country_name, v_country_area;
			EXIT WHEN cur_country_area%NOTFOUND;
			DBMS_OUTPUT.PUT_LINE(v_country_name ||' have the area of '|| v_country_area);
		END LOOP;
	CLOSE cur_country_area;
END;
/
