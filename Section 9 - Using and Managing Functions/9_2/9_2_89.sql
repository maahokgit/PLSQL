-- Question 8
/* -- modified procedure
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
		INSERT INTO f_depts VALUES (p_dept_id, 'TEMPORARY');
		INSERT INTO f_emps VALUES (p_employee_id, p_last_name, p_salary, p_dept_id);
	END IF;
END insert_emp;
/ 
-- Question 8running procedure
BEGIN
	insert_emp(800, 'Jokinen', 5000, 750);
END;
/ */
-- Question 9 - Inner Join does the same thing!
SELECT f_emps.employee_id, f_emps.last_name, f_emps.salary, f_emps.department_id, f_depts.department_name
FROM f_emps
INNER JOIN f_depts ON f_emps.department_id = f_depts.department_id;
