/*
DROP TABLE new_emps;

CREATE TABLE new_emps AS SELECT * FROM employees;

ALTER TABLE new_emps ADD stars VARCHAR2(50);
*/
DECLARE
	v_empno new_emps.employee_id%TYPE := 142;
	v_asterisk new_emps.stars%TYPE := NULL;
	v_sal_in_thousands new_emps.salary%TYPE;
BEGIN
	SELECT NVL(TRUNC(salary/1000), 0) INTO v_sal_in_thousands
	FROM new_emps WHERE employee_id = v_empno;
	FOR i IN 1..v_sal_in_thousands
	LOOP
	
	v_asterisk:=v_asterisk||'*';
	
	UPDATE new_emps SET stars = v_asterisk
	WHERE employee_id = v_empno;
	
	END LOOP;	
END;
/
