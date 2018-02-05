-- ANSWER FOR QUESTION 5 in SECTION 5_3
DECLARE
	CURSOR cur_langcount IS
			SELECT countries.country_name, idCount.langID FROM countries
			INNER JOIN 
				(
				SELECT * FROM 
					(
					SELECT COUNT(language_id) langID, country_id
					FROM spoken_languages GROUP BY country_id
					) WHERE langID > 6
				) idCount
			ON countries.country_ID = idCount.country_id;
	v_total_language NUMBER;
BEGIN
	FOR v_country_lang IN cur_langcount
	LOOP
		v_total_language := cur_langcount%ROWCOUNT;
		DBMS_OUTPUT.PUT_LINE(v_country_lang.country_name ||' have '|| v_country_lang.langID ||' languages');
	END LOOP;
		DBMS_OUTPUT.PUT_LINE('Total Country: '|| v_total_language);
END;
/
