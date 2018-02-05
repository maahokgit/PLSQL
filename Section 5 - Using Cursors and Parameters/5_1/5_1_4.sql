--QUESTIONS 4 A to E
/*
DECLARE
	CURSOR currencies_cur IS
		SELECT * FROM (SELECT currency_code, currency_name FROM currencies ORDER BY currency_name) WHERE ROWNUM = 1;
	v_cur_code currencies.currency_code%TYPE;
	v_cur_name currencies.currency_name%TYPE;
BEGIN
	OPEN currencies_cur;
		FETCH currencies_cur INTO v_cur_code, v_cur_name;
		DBMS_OUTPUT.PUT_LINE
		(v_cur_name||': '||v_cur_code);
	CLOSE currencies_cur;
END;
/

--QUESTIONS 4 F
DECLARE
	CURSOR currencies_cur IS
		SELECT currency_code, currency_name 
		FROM currencies ORDER BY currency_name ASC;
	v_cur_code currencies.currency_code%TYPE;
	v_cur_name currencies.currency_name%TYPE;
BEGIN
	OPEN currencies_cur;
	LOOP
		FETCH currencies_cur INTO v_cur_code, v_cur_name;
		EXIT WHEN currencies_cur%NOTFOUND;
		DBMS_OUTPUT.PUT_LINE
		(v_cur_name||': '||v_cur_code);
	END LOOP;
	CLOSE currencies_cur;
END;
/
*/
-- QUESTIONS 4 G
DECLARE
	CURSOR cur_country_holi IS
		SELECT country_name, national_holiday_date, national_holiday_name 
		FROM countries WHERE region_id = 5 AND national_holiday_date IS NOT NULL;
	v_country_name countries.country_name%TYPE;
	v_nat_holi_date countries.national_holiday_date%TYPE;
	v_nat_holi_name countries.national_holiday_name%TYPE;
BEGIN
	OPEN cur_country_holi;
	LOOP
		FETCH cur_country_holi INTO v_country_name, v_nat_holi_date, v_nat_holi_name;
		EXIT WHEN cur_country_holi%NOTFOUND;
		DBMS_OUTPUT.PUT_LINE(v_country_name
					||': '
					||v_nat_holi_name
					||' - '
					||v_nat_holi_date);
	END LOOP;
	CLOSE cur_country_holi;
END;
/
