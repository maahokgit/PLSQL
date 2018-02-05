-- Answer for Question PL/SQL 5_1 #6

DECLARE
	CURSOR cur_countries_region_name IS
		SELECT countries.country_name, regions.region_name
		FROM countries
		INNER JOIN regions ON countries.region_id = regions.region_id
		INNER JOIN (
		SELECT region_id 
		FROM 
			(
			SELECT COUNT(country_name) countNum, region_id 
			FROM countries GROUP BY region_id
			) 
		WHERE countNum >= 10) cri ON regions.region_id = cri.region_id
		ORDER BY regions.region_name ASC;
	
	v_countries_name countries.country_name%TYPE;
	v_region_name regions.region_name%TYPE;
	v_region_id countries.region_id%TYPE;
BEGIN
	DBMS_OUTPUT.PUT_LINE('Region Name with 10 countries or more');
	OPEN cur_countries_region_name;
	LOOP
		FETCH cur_countries_region_name INTO v_countries_name, v_region_name;
		EXIT WHEN cur_countries_region_name%NOTFOUND;
		DBMS_OUTPUT.PUT_LINE(v_region_name||': '||v_countries_name);
	END LOOP;
	CLOSE cur_countries_region_name;
END;
/
