DECLARE
	v_country_name countries.country_name%TYPE := 'Federative Republic of Brazil';
	v_lowest_elevation countries.lowest_elevation%TYPE;
	v_highest_elevation countries.highest_elevation%TYPE;
BEGIN
	SELECT country_name, lowest_elevation, highest_elevation
	INTO v_country_name, v_lowest_elevation, v_highest_elevation
	FROM countries
	WHERE country_name = v_country_name;
	DBMS_OUTPUT.PUT_LINE('The lowest elevation in '
	|| v_country_name || ' is ' || v_lowest_elevation
	|| ' and the highest elevation is ' || v_highest_elevation || '.');
END;
/
