/* -- Question 3
-- Part 1
ALTER TABLE audit_table
  ADD emp_id NUMBER(6);
-- Part 2
DESCRIBE audit_table;
-- Part 3 */
CREATE OR REPLACE TRIGGER emp_audit_trigg
AFTER INSERT OR DELETE ON employees FOR EACH ROW
BEGIN
	IF INSERTING THEN
		INSERT INTO audit_table (action, emp_id) VALUES ('Inserting', :NEW.employee_id);
	END IF;
	IF DELETING THEN
		INSERT INTO audit_table (action, emp_id) VALUES ('Deleting', :OLD.employee_id);
	END IF;
END;	
/ 
-- Part 4
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id)
VALUES(853,'Edward','Ma','EMA','902.403.3362',TO_DATE('2017-11-28','yyyy-mm-dd'),'MK_REP',80000,null,201,20 );
-- Part 5
SELECT * FROM audit_table;
-- Part 6
DELETE FROM employees WHERE last_name = 'Ma';
-- Part 7
SELECT * FROM audit_table;
