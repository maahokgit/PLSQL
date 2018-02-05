/* -- Question 5
CREATE OR REPLACE TRIGGER log_emp_change
BEFORE UPDATE ON employees
BEGIN
	INSERT INTO audit_table (action, user_name, last_change_date)
	VALUES ('UPDATE', USER, SYSDATE);
END;
/
-- Part 1
UPDATE employees
SET salary = 80000
WHERE employee_id = 999;
-- Part 2
SELECT * FROM audit_table;
-- Question 5A
-- Part 1
CREATE OR REPLACE TRIGGER log_emp_change
BEFORE UPDATE ON employees
BEGIN
	IF (TO_NUMBER(TO_CHAR(SYSDATE, 'HH'))>=18) OR (TO_NUMBER(TO_CHAR(SYSDATE, 'HH'))<=8)
	THEN 
		RAISE_APPLICATION_ERROR(-20204, 'You can only UPDATE into Employees Table during Business hours!');
	END IF;
END;
/ */
-- Part 2
UPDATE employees
SET salary = 20000
WHERE employee_id = 100;
