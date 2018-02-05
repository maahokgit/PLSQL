-- ANSWER FOR QUESTION 3 in SECTION 5_4
DECLARE

	CURSOR cur_country_area (p_region_id NUMBER) IS
		SELECT country_name, area FROM countries
		WHERE region_id = p_region_id;

BEGIN -- chr(13)||chr(10) to break lines so it will look nice.
	
	DBMS_OUTPUT.PUT_LINE('Area of Country with Region ID 5'||chr(13)||chr(10));
	FOR v_regionFive IN cur_country_area(5)
		LOOP
			DBMS_OUTPUT.PUT_LINE(v_regionFive.country_name || ' have the area of ' ||v_regionFive.area);
		END LOOP;

	DBMS_OUTPUT.PUT_LINE(chr(13)||chr(10)||'Area of Country with Region ID 30'||chr(13)||chr(10));
	FOR v_regionThirty IN cur_country_area(30)
		LOOP
			DBMS_OUTPUT.PUT_LINE(v_regionThirty.country_name || ' have the area of ' ||v_regionThirty.area);
		END LOOP;
END;
/
