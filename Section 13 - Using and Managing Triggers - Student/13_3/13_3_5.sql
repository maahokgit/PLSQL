/* -- Question 5
-- Part A
CREATE OR REPLACE TRIGGER emp_audit_trigg
	FOR UPDATE OF salary ON employees
	COMPOUND TRIGGER
BEFORE STATEMENT IS
BEGIN
	INSERT INTO audit_table (action)
	VALUES ('Updating salary');
END BEFORE STATEMENT;
AFTER EACH ROW IS
BEGIN
	INSERT INTO audit_table (action, emp_id)
	VALUES ('Updated. Old salary: ' || :OLD.salary || '. New salary: '|| :NEW.salary, :NEW.employee_id);
END AFTER EACH ROW;
END emp_audit_trigg;
/
-- Part B */
UPDATE employees
SET salary = 5800
WHERE employee_id = 124;
