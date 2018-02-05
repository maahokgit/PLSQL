--get Antarctica holiday
--SELECT date_of_independence, national_holiday_date FROM countries WHERE country_id = 672;
--check output
/*
DECLARE
	v_country_id countries.country_id%TYPE := 672;
	v_ind_date countries.date_of_independence%TYPE;
	v_natl_holiday countries.national_holiday_date%TYPE;
BEGIN
	SELECT date_of_independence, national_holiday_date
	INTO v_ind_date, v_natl_holiday
	FROM countries
	WHERE country_id = v_country_id;
	
	IF v_ind_date IS NOT NULL THEN
		DBMS_OUTPUT.PUT_LINE('A');
	ELSIF v_natl_holiday IS NOT NULL THEN
		DBMS_OUTPUT.PUT_LINE('B');
	ELSIF v_natl_holiday IS NULL AND v_ind_date IS NULL THEN
		DBMS_OUTPUT.PUT_LINE('C');
	END IF;
END;
/

--get Iraq holiday
SELECT date_of_independence, national_holiday_date FROM countries WHERE country_id = 964;
--check output
DECLARE
	v_country_id countries.country_id%TYPE := 964;
	v_ind_date countries.date_of_independence%TYPE;
	v_natl_holiday countries.national_holiday_date%TYPE;
BEGIN
	SELECT date_of_independence, national_holiday_date
	INTO v_ind_date, v_natl_holiday
	FROM countries
	WHERE country_id = v_country_id;
	
	IF v_ind_date IS NOT NULL THEN
		DBMS_OUTPUT.PUT_LINE('A');
	ELSIF v_natl_holiday IS NOT NULL THEN
		DBMS_OUTPUT.PUT_LINE('B');
	ELSIF v_natl_holiday IS NULL AND v_ind_date IS NULL THEN
		DBMS_OUTPUT.PUT_LINE('C');
	END IF;
END;
/

--get Spain holiday
SELECT date_of_independence, national_holiday_date FROM countries WHERE country_id = 34;
--check output
DECLARE
	v_country_id countries.country_id%TYPE := 34;
	v_ind_date countries.date_of_independence%TYPE;
	v_natl_holiday countries.national_holiday_date%TYPE;
BEGIN
	SELECT date_of_independence, national_holiday_date
	INTO v_ind_date, v_natl_holiday
	FROM countries
	WHERE country_id = v_country_id;
	
	IF v_ind_date IS NOT NULL THEN
		DBMS_OUTPUT.PUT_LINE('A');
	ELSIF v_natl_holiday IS NOT NULL THEN
		DBMS_OUTPUT.PUT_LINE('B');
	ELSIF v_natl_holiday IS NULL AND v_ind_date IS NULL THEN
		DBMS_OUTPUT.PUT_LINE('C');
	END IF;
END;
/
*/
--get US holiday
SELECT date_of_independence, national_holiday_date FROM countries WHERE country_id = 1;
--check output
DECLARE
	v_country_id countries.country_id%TYPE := 1;
	v_ind_date countries.date_of_independence%TYPE;
	v_natl_holiday countries.national_holiday_date%TYPE;
BEGIN
	SELECT date_of_independence, national_holiday_date
	INTO v_ind_date, v_natl_holiday
	FROM countries
	WHERE country_id = v_country_id;
	
	IF v_ind_date IS NOT NULL THEN
		DBMS_OUTPUT.PUT_LINE('A');
	ELSIF v_natl_holiday IS NOT NULL THEN
		DBMS_OUTPUT.PUT_LINE('B');
	ELSIF v_natl_holiday IS NULL AND v_ind_date IS NULL THEN
		DBMS_OUTPUT.PUT_LINE('C');
	END IF;
END;
/
