-- ANSWER FOR Question 2 on Section 5_3
DECLARE
	CURSOR countries_cur IS
		SELECT country_name, national_holiday_name, national_holiday_date
		FROM countries
		WHERE region_id = 5;
	v_countries_rec countries_cur%ROWTYPE;
BEGIN
	FOR v_countries_rec IN countries_cur
		LOOP
		EXIT WHEN countries_cur%NOTFOUND;
			DBMS_OUTPUT.PUT_LINE ('Country: ' 
						|| v_countries_rec.country_name 
						|| ' National holiday: '
						|| v_countries_rec.national_holiday_name
						|| ', held on: '
						|| v_countries_rec.national_holiday_date);
	END LOOP;
END;
/
