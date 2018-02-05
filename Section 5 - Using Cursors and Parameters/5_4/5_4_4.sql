-- ANSWER FOR QUESTION 4 in SECTION 5_4
DECLARE

	CURSOR cur_country_area (p_area NUMBER) IS
		SELECT country_name, area FROM countries
		WHERE region_id = 5 AND area > p_area;

BEGIN -- chr(13)||chr(10) to break lines so it will look nice.
	
	DBMS_OUTPUT.PUT_LINE('Country with area over 200,000.'||chr(13)||chr(10));
	FOR v_areaTwoHundThous IN cur_country_area(200000)
		LOOP
			DBMS_OUTPUT.PUT_LINE(v_areaTwoHundThous.country_name || ' have the area of ' ||v_areaTwoHundThous.area);
		END LOOP;

	DBMS_OUTPUT.PUT_LINE(chr(13)||chr(10)||'Country with area over 1,000,000'||chr(13)||chr(10));
	FOR v_areaOneMil IN cur_country_area(1000000)
		LOOP
			DBMS_OUTPUT.PUT_LINE(v_areaOneMil.country_name || ' have the area of ' ||v_areaOneMil.area);
		END LOOP;
END;
/
