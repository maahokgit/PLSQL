/* -- Question 5
-- Part A Based on this http://andreinc.net/2011/05/31/disable-all-triggers-in-the-schema-oracle/
CREATE OR REPLACE PROCEDURE alter_trigger(status VARCHAR2) IS
	CURSOR c_trigger IS
	(
		SELECT trigger_name FROM user_triggers
	);
BEGIN
	IF UPPER(status) NOT IN ('ENABLE', 'DISABLE') THEN
		DBMS_OUTPUT.PUT_LINE('Parameter must be '||CHR(39)||'Enable'||CHR(39)||' or '||CHR(39)||'Disable'||CHR(39));
		RAISE VALUE_ERROR;
	END IF;
	FOR i in c_trigger
	LOOP
		EXECUTE IMMEDIATE 'ALTER TRIGGER '|| i.trigger_name||' '|| status;
	END LOOP;
END;
/ 
-- Part B
-- Part 1 of B Show current status...
SELECT trigger_name, status FROM user_triggers;
-- Part 2 of B
DECLARE
	v_status VARCHAR2(10) := 'disable';
BEGIN
	alter_trigger(v_status);
END;
/
-- Part C */
SELECT trigger_name, status FROM user_triggers;
