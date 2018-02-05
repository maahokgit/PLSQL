/* 
CREATE TABLE chinese
(	
	ch_id NUMBER,
	chinese VARCHAR2(50)
);

INSERT INTO chinese VALUES (1, 'chinese');
INSERT INTO chinese VALUES (2, 'japanese');
INSERT INTO chinese VALUES (3, 'something-nese');
*/

DECLARE
	chinese chinese.chinese%TYPE := 'japanese';
	v_id chinese.ch_id%TYPE;
BEGIN
	SELECT ch_id INTO v_id FROM chinese WHERE chinese = chinese;
	DBMS_OUTPUT.PUT_LINE('ch_id is '||v_id||' when chinese is '||chinese);
END;
