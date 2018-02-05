-- Script for Question 5B of Section 7_2
/*
DECLARE
	v_language_id languages.language_id%TYPE;
	v_language_name languages.language_name%TYPE;
BEGIN
	SELECT language_id, language_name INTO v_language_id, v_language_name
	FROM languages
	WHERE LOWER(language_name) LIKE 'al%'; -- for example 'ab%'

	INSERT INTO languages(language_id, language_name)
	VALUES(80, null);
EXCEPTION
	WHEN NO_DATA_FOUND THEN
		DBMS_OUTPUT.PUT_LINE('NO DATA FOUND Exception Triggered!');
	WHEN TOO_MANY_ROWS THEN
		DBMS_OUTPUT.PUT_LINE('TOO MANY ROWS Exception Triggered!');
	WHEN DUP_VAL_ON_INDEX THEN
		DBMS_OUTPUT.PUT_LINE('DUP VAL ON INDEX Exception Triggered!');
END;
/
*/
-- Script for Question 5C
/*
DECLARE
	e_insert_excep EXCEPTION;
	PRAGMA EXCEPTION_INIT(e_insert_excep, -1400);
	v_language_id languages.language_id%TYPE;
	v_language_name languages.language_name%TYPE;
BEGIN
	SELECT language_id, language_name INTO v_language_id, v_language_name
	FROM languages
	WHERE LOWER(language_name) LIKE 'al%'; -- for example 'ab%'

	INSERT INTO languages(language_id, language_name)
	VALUES(80, null);
EXCEPTION
	WHEN NO_DATA_FOUND THEN
		DBMS_OUTPUT.PUT_LINE('NO DATA FOUND Exception Triggered!');
	WHEN TOO_MANY_ROWS THEN
		DBMS_OUTPUT.PUT_LINE('TOO MANY ROWS Exception Triggered!');
	WHEN DUP_VAL_ON_INDEX THEN
		DBMS_OUTPUT.PUT_LINE('DUP VAL ON INDEX Exception Triggered!');
	WHEN e_insert_excep THEN
		DBMS_OUTPUT.PUT_LINE('Insert Failed...');
END;
/
*/
-- Scripts for Extension
/*
DROP TABLE error_log;

CREATE TABLE error_log
(
	who VARCHAR2(30),
	when DATE,
	error_code NUMBER(6),
	error_message VARCHAR2(255)
);
*/
DECLARE
	v_error_code NUMBER;
	v_error_message VARCHAR2(255);
	v_language_id languages.language_id%TYPE;
	v_language_name languages.language_name%TYPE;
BEGIN
	SELECT language_id, language_name INTO v_language_id, v_language_name
	FROM languages
	WHERE LOWER(language_name) LIKE 'al%'; -- for example 'ab%'

	INSERT INTO languages(language_id, language_name)
	VALUES(80, null);
EXCEPTION
	WHEN OTHERS THEN
		ROLLBACK;

		v_error_code := SQLCODE;
		v_error_message := SQLERRM;
		INSERT INTO error_log(who, when,error_code, error_message)
			VALUES(USER, SYSDATE, v_error_code, v_error_message);
END;
/
