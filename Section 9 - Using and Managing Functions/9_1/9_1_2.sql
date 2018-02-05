/* -- 2
CREATE OR REPLACE FUNCTION full_name
	(p_last_name VARCHAR2,
	p_first_name VARCHAR2)
	RETURN VARCHAR2
	IS
	v_full_name VARCHAR2(50) := NULL;
BEGIN
	v_full_name := p_last_name||', '||p_first_name;
	RETURN v_full_name;
END full_name;
/ 
-- 2A
DECLARE
	v_last_name VARCHAR2(50) := 'Ma';
	v_first_name VARCHAR2(50) := 'Edward';
	v_full_name VARCHAR(50) := NULL;
BEGIN 
	v_full_name := full_name(v_last_name,v_first_name); 
END;
/ 
-- 2B
BEGIN
	DBMS_OUTPUT.PUT_LINE(full_name('Ma','Edward'));
END;
/ */
-- 2C
DECLARE
	CURSOR cur_full_name (p_dept_id NUMBER) IS
		SELECT first_name, last_name FROM employees
		WHERE department_id = p_dept_id;
	v_first_name employees.first_name%TYPE;
	v_last_name employees.last_name%TYPE;
BEGIN -- chr(13)||chr(10) to break lines so it will look nice.
	DBMS_OUTPUT.PUT_LINE('First Name | Last Name | Full Name');
	OPEN cur_full_name(50);
		LOOP
			FETCH cur_full_name INTO v_first_name, v_last_name;
			EXIT WHEN cur_full_name%NOTFOUND;
			DBMS_OUTPUT.PUT_LINE(v_first_name||' | '||v_last_name||' | '||full_name(v_last_name, v_first_name));
		END LOOP;
	CLOSE cur_full_name;
END;
/
