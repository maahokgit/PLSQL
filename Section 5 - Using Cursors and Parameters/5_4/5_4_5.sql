-- ANSWER FOR QUESTION 4 in SECTION 5_4
DECLARE

	CURSOR cur_country_area (p_region_id NUMBER, p_area NUMBER) IS
		SELECT country_name, area FROM countries
		WHERE region_id = p_region_id AND area > p_area;

BEGIN -- chr(13)||chr(10) to break lines so it will look nice.
	
	DBMS_OUTPUT.PUT_LINE('Region: 5 Minimum Area: 200,000'||chr(13)||chr(10));
	FOR v_areaFive2K IN cur_country_area(5, 200000)
		LOOP
			DBMS_OUTPUT.PUT_LINE(v_areaFive2K.country_name || ' have the area of ' ||v_areaFive2K.area);
		END LOOP;
	DBMS_OUTPUT.PUT_LINE(chr(13)||chr(10)||'Region: 5. Minimum Area: 1,000,000'||chr(13)||chr(10));

	FOR v_areaThirty1Mil IN cur_country_area(30, 1000000)
		LOOP
			DBMS_OUTPUT.PUT_LINE(v_areaThirty1Mil.country_name || ' have the area of ' ||v_areaThirty1Mil.area);
		END LOOP;
END;
/
