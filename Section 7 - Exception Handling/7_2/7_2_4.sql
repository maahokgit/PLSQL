-- Script for Question 4
/*
DECLARE
	CURSOR regions_curs IS
		SELECT * FROM regions
		WHERE region_id < 20
		ORDER BY region_id;
	regions_rec regions_curs%ROWTYPE;
	v_count NUMBER(6);
BEGIN
	LOOP
	FETCH regions_curs INTO regions_rec;
		EXIT WHEN regions_curs%NOTFOUND;
	
	DBMS_OUTPUT.PUT_LINE('Region: ' || regions_rec.region_id
	|| ' Name: ' || regions_rec.region_name);

	END LOOP;

	CLOSE regions_curs;

	SELECT COUNT(*) INTO v_count
	FROM regions
	WHERE region_id = 1;
	DBMS_OUTPUT.PUT_LINE('The number of regions is: ' || v_count);
END;
/
*/
-- ANSWER FOR QUESTION 4B
/*
DECLARE
	CURSOR regions_curs IS
		SELECT * FROM regions
		WHERE region_id < 20
		ORDER BY region_id;
	regions_rec regions_curs%ROWTYPE;
	v_count NUMBER(6);
BEGIN
	LOOP
	FETCH regions_curs INTO regions_rec;
		EXIT WHEN regions_curs%NOTFOUND;
	
	DBMS_OUTPUT.PUT_LINE('Region: ' || regions_rec.region_id
	|| ' Name: ' || regions_rec.region_name);

	END LOOP;

	CLOSE regions_curs;

	SELECT COUNT(*) INTO v_count
	FROM regions
	WHERE region_id = 1;
	DBMS_OUTPUT.PUT_LINE('The number of regions is: ' || v_count);
EXCEPTION
	WHEN INVALID_CURSOR THEN
		DBMS_OUTPUT.PUT_LINE('Invalid Cursor... Did you do it right?');
END;
*/
-- ANSWER FOR QUESTION 4C
DECLARE
	CURSOR regions_curs IS
		SELECT * FROM regions
		WHERE region_id < 20
		ORDER BY region_id;
	regions_rec regions_curs%ROWTYPE;
	v_count NUMBER(6);
BEGIN
	OPEN regions_curs;
	LOOP
	FETCH regions_curs INTO regions_rec;
		EXIT WHEN regions_curs%NOTFOUND;
	
	DBMS_OUTPUT.PUT_LINE('Region: ' || regions_rec.region_id
	|| ' Name: ' || regions_rec.region_name);

	END LOOP;

	CLOSE regions_curs;

	SELECT COUNT(*) INTO v_count
	FROM regions
	WHERE region_id = 1;
	DBMS_OUTPUT.PUT_LINE('The number of regions is: ' || v_count);
EXCEPTION
	WHEN INVALID_CURSOR THEN
		DBMS_OUTPUT.PUT_LINE('Invalid Cursor... Did you do it right?');
END;
/
