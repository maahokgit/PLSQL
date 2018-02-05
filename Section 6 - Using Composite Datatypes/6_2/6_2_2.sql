-- ANSWER TO QUESTION 2A FOR SECTION 6_2
/*
DECLARE
	TYPE t_country_name IS TABLE OF countries.country_name%TYPE
	INDEX BY BINARY_INTEGER;
	
	v_country_name_tab t_country_name;
BEGIN
	FOR country_rec IN (SELECT country_name, country_id FROM countries WHERE region_id = 5 ORDER BY country_name ASC)
	LOOP
		v_country_name_tab(country_rec.country_id) := country_rec.country_name;
	END LOOP;
END;
/
-- ANSWER FOR 2B
DECLARE
	TYPE t_country_name IS TABLE OF countries.country_name%TYPE
	INDEX BY BINARY_INTEGER;
	
	v_country_name_tab t_country_name;
BEGIN
	FOR country_rec IN (SELECT country_name, country_id FROM countries WHERE region_id = 5 ORDER BY country_name ASC)
	LOOP
		v_country_name_tab(country_rec.country_id) := country_rec.country_name;
	END LOOP;
	
	FOR i IN v_country_name_tab.FIRST..v_country_name_tab.LAST
	LOOP
		IF v_country_name_tab.EXISTS(i) THEN
			DBMS_OUTPUT.PUT_LINE('Country ID: '||i);
			DBMS_OUTPUT.PUT_LINE('Country Name: '||v_country_name_tab(i)||chr(13)||chr(10));
		END IF;
	END LOOP;
END;
/
*/
-- ANSWER FOR 2C
DECLARE
	TYPE t_country_name IS TABLE OF countries.country_name%TYPE
	INDEX BY BINARY_INTEGER;
	
	v_country_name_tab t_country_name;
	v_first NUMBER;
	v_last NUMBER;
BEGIN
	FOR country_rec IN (SELECT country_name, country_id FROM countries WHERE region_id = 5 ORDER BY country_name ASC)
	LOOP
		v_country_name_tab(country_rec.country_id) := country_rec.country_name;
	END LOOP;
	
	v_first := v_country_name_tab.FIRST;
	v_last := v_country_name_tab.LAST;
		DBMS_OUTPUT.PUT_LINE('First Country on INDEX');
		DBMS_OUTPUT.PUT_LINE('Country ID: '||v_first);
		DBMS_OUTPUT.PUT_LINE('Country Name: '||v_country_name_tab(v_first)||chr(13)||chr(10));
		
		DBMS_OUTPUT.PUT_LINE('Last Country on INDEX');
		DBMS_OUTPUT.PUT_LINE('Country ID: '||v_last);
		DBMS_OUTPUT.PUT_LINE('Country Name: '||v_country_name_tab(v_last));
END;
/
