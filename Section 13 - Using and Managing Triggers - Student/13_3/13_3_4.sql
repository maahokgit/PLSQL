/* -- Question 4 
-- Part A
DROP TABLE dept_count;
CREATE TABLE dept_count
AS SELECT department_id dept_id, count(*) count_emps
FROM employees
GROUP BY department_id; 
-- Part B 
DROP VIEW emp_vu;
CREATE VIEW emp_vu
AS SELECT employee_id, last_name, department_id
FROM employees;
-- Part C 
-- I cannot get DELETE TO WORK */
DROP TRIGGER update_count;
CREATE OR REPLACE TRIGGER update_count
INSTEAD OF INSERT ON emp_vu
FOR EACH ROW
BEGIN
	UPDATE dept_count
	SET count_emps = count_emps + 1
	WHERE dept_id = :NEW.department_id;
END;	
/
