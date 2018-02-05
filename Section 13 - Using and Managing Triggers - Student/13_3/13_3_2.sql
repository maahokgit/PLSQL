-- Question 2
CREATE OR REPLACE TRIGGER emp_audit_trigg
AFTER INSERT OR DELETE ON employees
BEGIN
	IF INSERTING THEN
		INSERT INTO audit_table (action) VALUES ('Inserting');
	END IF;
	IF DELETING THEN
		INSERT INTO audit_table (action) VALUES ('Deleting');
	END IF;
END;	
/
