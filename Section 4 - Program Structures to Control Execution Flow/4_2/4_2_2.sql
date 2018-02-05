DECLARE
	v_country_name countries.country_name%TYPE := 'Mongolia';
	v_coastline countries.coastline %TYPE;
	v_coastline_description VARCHAR2(50);
BEGIN
	SELECT coastline INTO v_coastline
	FROM countries
	WHERE country_name = v_country_name;

	v_coastline_description :=
	
	CASE
		WHEN v_coastline = 0 THEN 'no coastline.'
		WHEN v_coastline < 1000 THEN 'a small coastline.'
		WHEN v_coastline < 10000 THEN 'a mid-range coastline.'
		WHEN v_coastline > 10000 THEN 'a large coastline.'
	END;
	DBMS_OUTPUT.PUT_LINE('Country ' || v_country_name || ' has '
	|| v_coastline_description);
END;
/
