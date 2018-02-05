/* -- Question 5 
-- Part A Based on this http://andreinc.net/2011/05/31/disable-all-triggers-in-the-schema-oracle/ */
CREATE OR REPLACE PROCEDURE alter_trigger(status VARCHAR2) IS
	CURSOR c_trigger IS
		SELECT trigger_name FROM user_triggers;
	v_c_trigger c_trigger%ROWTYPE;
BEGIN
	FOR v_c_trigger in c_trigger
	LOOP
		EXECUTE IMMEDIATE 'ALTER TRIGGER '|| v_c_trigger.trigger_name||' '|| status;
	END LOOP;
END;
/
