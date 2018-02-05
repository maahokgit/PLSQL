/* -- 7
CREATE OR REPLACE FUNCTION reversing
	(input VARCHAR2) 
	RETURN VARCHAR2 IS
        reverse VARCHAR2(255);
BEGIN
        FOR i in reverse 1..LENGTH(input) 
	LOOP
                reverse := reverse||''||SUBSTR(input, i, 1);
        END LOOP;
        RETURN reverse;
END;
/ */
-- Running Function
BEGIN
	DBMS_OUTPUT.PUT_LINE('The reverse of Edward is '||reversing('Edward'));
END;
/
