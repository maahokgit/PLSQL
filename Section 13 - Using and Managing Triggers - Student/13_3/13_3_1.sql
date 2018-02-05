-- Question 1
DROP TRIGGER emp_audit_trigg;
CREATE OR REPLACE TRIGGER emp_audit_trigg
AFTER INSERT ON employees
BEGIN
	INSERT INTO audit_table (action) VALUES ('Inserting');
END;
/
