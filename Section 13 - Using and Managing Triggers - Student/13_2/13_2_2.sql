/* -- Question 2A
CREATE TABLE audit_table
(
	action VARCHAR2(50),
	user_name VARCHAR2(30) DEFAULT USER,
	last_change_date TIMESTAMP DEFAULT SYSTIMESTAMP
); 
-- Question 2B
CREATE OR REPLACE TRIGGER log_emp_change
AFTER INSERT ON employees
BEGIN
	INSERT INTO audit_table (action, user_name, last_change_date)
	VALUES ('INSERT', USER, SYSDATE);
END;
/
-- Question 2C
-- Part 1
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id)
VALUES(853,'Edward','Ma','EMA','902.403.3362',TO_DATE('2017-11-28','yyyy-mm-dd'),'MK_REP',80000,null,201,20 );
-- Part 2
SELECT * FROM audit_table;
-- QUESTION 2D
-- Part 1
DELETE FROM employees WHERE last_name = 'Ma';
-- Part 2
SELECT * FROM audit_table; */
