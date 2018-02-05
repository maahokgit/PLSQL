-- 9_2 Set up
DROP TABLE f_emps;
CREATE TABLE f_emps
AS SELECT employee_id, last_name, salary, department_id
FROM employees;

DROP TABLE f_depts;
CREATE TABLE f_depts
AS SELECT department_id, department_name
FROM departments;
