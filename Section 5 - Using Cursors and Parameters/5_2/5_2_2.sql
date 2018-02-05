DECLARE
	CURSOR cur_country_holi IS
		SELECT country_name, national_holiday_date, national_holiday_name 
		FROM countries WHERE region_id = 5;
	v_holiday_record cur_country_holi%ROWTYPE;
BEGIN
	OPEN cur_country_holi;
	LOOP
		FETCH cur_country_holi INTO v_holiday_record;
		EXIT WHEN cur_country_holi%NOTFOUND;
		DBMS_OUTPUT.PUT_LINE(v_holiday_record.country_name
					||': '
					||v_holiday_record.national_holiday_name
					||' - '
					||v_holiday_record.national_holiday_date);
	END LOOP;
	CLOSE cur_country_holi;
END;
/
