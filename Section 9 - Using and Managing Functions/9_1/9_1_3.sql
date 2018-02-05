/* -- 3
CREATE OR REPLACE FUNCTION divide
	(p_num_one NUMBER,
	p_num_two NUMBER)
	RETURN NUMBER
	IS
	v_divided NUMBER(38,2) := NULL;
BEGIN
	v_divided := p_num_one / p_num_two;
	RETURN v_divided;
END divide;
/ 
-- 3A
BEGIN
	DBMS_OUTPUT.PUT_LINE('50 / 2 = '||divide(50,2));
	DBMS_OUTPUT.PUT_LINE('25 / 3 = '||divide(25,3));
END;
/ 
-- 3B
BEGIN
	DBMS_OUTPUT.PUT_LINE('16 / 0 = '||divide(16,0));
END;
/ 
-- 3C
CREATE OR REPLACE FUNCTION divide
	(p_num_one NUMBER,
	p_num_two NUMBER)
	RETURN NUMBER
	IS
	v_divided NUMBER(38,2) := NULL;
BEGIN
	v_divided := p_num_one / p_num_two;
	RETURN v_divided;
EXCEPTION
	WHEN ZERO_DIVIDE THEN
	v_divided := 0;
	RETURN v_divided;
END divide;
/ */
-- 3D
BEGIN
	DBMS_OUTPUT.PUT_LINE('16 / 0 = '||divide(16,0));
END;
/ 
