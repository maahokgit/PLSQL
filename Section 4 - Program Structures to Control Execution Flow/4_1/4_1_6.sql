-- for China Pop. 
/*
DECLARE
	v_pop countries.population%TYPE;
	c_pop countries.population%TYPE := 1000000000;
	c_pop_zero countries.population%TYPE := 0;
	c_pop_null countries.population%TYPE := null;
BEGIN
	SELECT population 
	INTO v_pop FROM countries
	WHERE country_id = 86; --86 china 44 UK, 672 Antaractica, 15 Europa Island
	
	IF v_pop > c_pop THEN
		DBMS_OUTPUT.PUT_LINE('China'||chr(39)||'s Population is greater than '||c_pop);
	ELSE IF v_pop > c_pop_zero THEN
		DBMS_OUTPUT.PUT_LINE('China'||chr(39)||'s Population is greater than '||c_pop_zero);
	ELSE IF v_pop = c_pop_zero THEN
		DBMS_OUTPUT.PUT_LINE('China'||chr(39)||'s Population is '||c_pop_zero);
	ELSE IF v_pop IS NULL THEN
		DBMS_OUTPUT.PUT_LINE('No data for this country');
	END IF;END IF;END IF;END IF; --end all ifs...
END;
/
*/
-- for UK Pop.
/*
DECLARE
	v_pop countries.population%TYPE;
	c_pop countries.population%TYPE := 1000000000;
	c_pop_zero countries.population%TYPE := 0;
	c_pop_null countries.population%TYPE := null;
BEGIN
	SELECT population 
	INTO v_pop FROM countries
	WHERE country_id = 44; --86 china 44 UK, 672 Antaractica, 15 Europa Island
	
	IF v_pop > c_pop THEN
		DBMS_OUTPUT.PUT_LINE('UK'||chr(39)||'s Population is greater than '||c_pop);
	ELSE IF v_pop > c_pop_zero THEN
		DBMS_OUTPUT.PUT_LINE('UK'||chr(39)||'s Population is greater than '||c_pop_zero);
	ELSE IF v_pop = c_pop_zero THEN
		DBMS_OUTPUT.PUT_LINE('UK'||chr(39)||'s Population is '||c_pop_zero);
	ELSE IF v_pop IS NULL THEN
		DBMS_OUTPUT.PUT_LINE('No data for this country');
	END IF;END IF;END IF;END IF; --end all ifs...
END;
/
*/
-- for Anarctica Pop.
/*
DECLARE
	v_pop countries.population%TYPE;
	c_pop countries.population%TYPE := 1000000000;
	c_pop_zero countries.population%TYPE := 0;
	c_pop_null countries.population%TYPE := null;
BEGIN
	SELECT population 
	INTO v_pop FROM countries
	WHERE country_id = 672; --86 china 44 UK, 672 Antaractica, 15 Europa Island
	
	IF v_pop > c_pop THEN
		DBMS_OUTPUT.PUT_LINE('Antaractica'||chr(39)||'s Population is greater than '||c_pop);
	ELSE IF v_pop > c_pop_zero THEN
		DBMS_OUTPUT.PUT_LINE('Antaractica'||chr(39)||'s Population is greater than '||c_pop_zero);
	ELSE IF v_pop = c_pop_zero THEN
		DBMS_OUTPUT.PUT_LINE('Antaractica'||chr(39)||'s Population is '||c_pop_zero);
	ELSE IF v_pop IS NULL THEN
		DBMS_OUTPUT.PUT_LINE('No data for this country');
	END IF;END IF;END IF;END IF; --end all ifs...
END;
/
*/
-- Europa Island Pop.
DECLARE
	v_pop countries.population%TYPE;
	c_pop countries.population%TYPE := 1000000000;
	c_pop_zero countries.population%TYPE := 0;
	c_pop_null countries.population%TYPE := null;
BEGIN
	SELECT population 
	INTO v_pop FROM countries
	WHERE country_id = 15; --86 china 44 UK, 672 Antaractica, 15 Europa Island
	
	IF v_pop > c_pop THEN
		DBMS_OUTPUT.PUT_LINE('Europa Island'||chr(39)||'s Population is greater than '||c_pop);
	ELSE IF v_pop > c_pop_zero THEN
		DBMS_OUTPUT.PUT_LINE('Europa Island'||chr(39)||'s Population is greater than '||c_pop_zero);
	ELSE IF v_pop = c_pop_zero THEN
		DBMS_OUTPUT.PUT_LINE('Europa Island'||chr(39)||'s Population is '||c_pop_zero);
	ELSE IF v_pop IS NULL THEN
		DBMS_OUTPUT.PUT_LINE('No data for this country');
	END IF;END IF;END IF;END IF; --end all ifs...
END;
/
