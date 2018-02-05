DECLARE
	v_country_name countries.country_name%TYPE := 'Navassa Island';
	v_airports countries.airports%TYPE;
BEGIN
	SELECT airports INTO v_airports
	FROM countries
	WHERE country_name = v_country_name;
	CASE
		WHEN v_airports >= 0 AND v_airports <= 100 THEN
			DBMS_OUTPUT.PUT_LINE('There are 100 or fewer airports.');
		WHEN v_airports >= 101 AND v_airports <= 1000 THEN
			DBMS_OUTPUT.PUT_LINE('There are between 101 and 1,000 airports.');
		WHEN v_airports >= 1001 AND v_airports <= 10000 THEN
			DBMS_OUTPUT.PUT_LINE('There are between 1,001 and 10,000 airports.');
		WHEN v_airports > 10000 THEN
			DBMS_OUTPUT.PUT_LINE('There are more than 10,000 airports.');
		WHEN v_airports IS NULL THEN
			DBMS_OUTPUT.PUT_LINE('No Airport');
	END CASE;
END;
/
