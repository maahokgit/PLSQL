-- ANSWER FOR Question 3 on Section 5_3
BEGIN
	FOR v_countries_rec IN (SELECT country_name, 
					national_holiday_name, 
					national_holiday_date
				FROM countries WHERE region_id = 5)
		LOOP
		DBMS_OUTPUT.PUT_LINE ('Country: ' 
					|| v_countries_rec.country_name 
					|| ' National holiday: '
					|| v_countries_rec.national_holiday_name
					|| ', held on: '
					|| v_countries_rec.national_holiday_date);
	END LOOP;
END;
/
