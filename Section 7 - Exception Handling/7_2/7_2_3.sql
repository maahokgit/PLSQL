-- ANSWER FOR QUESTION 3A
/*
DECLARE
	v_number NUMBER(6, 2) := 100;
	v_region_id regions.region_id%TYPE;
	v_region_name regions.region_name%TYPE;
BEGIN
	SELECT region_id, region_name INTO v_region_id, v_region_name
	FROM regions
	WHERE region_id = 1;
	
	DBMS_OUTPUT.PUT_LINE('Region: ' || v_region_id || ' is: ' || v_region_name);
	v_number := v_number / 0;
END;
/
*/
-- ANSWER FOR QUESTION 3B
/*
DECLARE
	v_number NUMBER(6, 2) := 100;
	v_region_id regions.region_id%TYPE;
	v_region_name regions.region_name%TYPE;
BEGIN
	SELECT region_id, region_name INTO v_region_id, v_region_name
	FROM regions
	WHERE region_id = 1;
	
	DBMS_OUTPUT.PUT_LINE('Region: ' || v_region_id || ' is: ' || v_region_name);
	v_number := v_number / 0;
EXCEPTION
	WHEN NO_DATA_FOUND THEN
		DBMS_OUTPUT.PUT_LINE('No Data found for this SELECT query...try again, mate');
END;
/
*/
--ANSWER FOR QUESTION 3C
/*
DECLARE
	v_number NUMBER(6, 2) := 100;
	v_region_id regions.region_id%TYPE;
	v_region_name regions.region_name%TYPE;
BEGIN
	SELECT region_id, region_name INTO v_region_id, v_region_name
	FROM regions
	WHERE region_id = 29;
	
	DBMS_OUTPUT.PUT_LINE('Region: ' || v_region_id || ' is: ' || v_region_name);
	v_number := v_number / 0;
EXCEPTION
	WHEN NO_DATA_FOUND THEN
		DBMS_OUTPUT.PUT_LINE('No Data found for this SELECT query...try again, mate');
END;
/
*/
--ANSWER FOR QUESTION 3D
DECLARE
	v_number NUMBER(6, 2) := 100;
	v_region_id regions.region_id%TYPE;
	v_region_name regions.region_name%TYPE;
BEGIN
	SELECT region_id, region_name INTO v_region_id, v_region_name
	FROM regions
	WHERE region_id = 29;
	
	DBMS_OUTPUT.PUT_LINE('Region: ' || v_region_id || ' is: ' || v_region_name);
	v_number := v_number / 0;
EXCEPTION
	WHEN NO_DATA_FOUND THEN
		DBMS_OUTPUT.PUT_LINE('No Data found for this SELECT query...try again, mate');
	WHEN ZERO_DIVIDE THEN
		DBMS_OUTPUT.PUT_LINE('Cannot divide by zero... even if its zero');
END;
/
