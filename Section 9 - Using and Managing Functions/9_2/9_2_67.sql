/* -- Question 6 
CREATE OR REPLACE PROCEDURE insert_emp
(
	p_employee_id IN f_emps.employee_id%TYPE,
	p_last_name IN f_emps.last_name%TYPE,
	p_salary IN f_emps.salary%TYPE,
	p_dept_id IN f_emps.department_id%TYPE
) IS
BEGIN
	IF check_dept(p_dept_id) = TRUE THEN
		INSERT INTO f_emps VALUES (p_employee_id, p_last_name, p_salary, p_dept_id);
	ELSE
		DBMS_OUTPUT.PUT_LINE('Department ID: '||p_dept_id||' does not exist!');
	END IF;
END insert_emp;
/ */
-- Question 7
BEGIN
	insert_emp(800, 'Jokinen', 5000, 750);
END;
/
