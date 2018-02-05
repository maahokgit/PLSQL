-- A
/*
DROP TABLE messages;
CREATE TABLE messages 
	(
	results NUMBER(2)
	);
*/
-- B

DECLARE
	v_num messages.results%TYPE := 0;
BEGIN
	LOOP
		v_num := v_num + 1;
		IF v_num != 6 AND v_num !=8 THEN
			INSERT INTO messages(results) VALUES (v_num);
			DBMS_OUTPUT.PUT_LINE('Inserted value '||v_num||' into messages table');
		ELSE
			DBMS_OUTPUT.PUT_LINE('Nothing inserted');
		END IF;
		
		EXIT WHEN v_num = 10;
	END LOOP;
END;
/

-- C

SELECT * FROM messages;
