-- Question 5
CREATE OR REPLACE TRIGGER max_salary
BEFORE UPDATE OF salary ON employees
FOR EACH ROW
DECLARE
	v_max_sal employees.salary%TYPE;
BEGIN
	SELECT MAX(salary) INTO v_max_sal
	FROM employees;
	
	DBMS_OUTPUT.PUT_LINE('Current Max Salary is '||v_max_sal);
END max_salary;
/
