/* -- PLSQL 9_4
-- Question 1 
-- Part A
DROP TABLE my_depts;
CREATE TABLE my_depts
AS SELECT * FROM departments;

ALTER TABLE my_depts
ADD CONSTRAINT my_dept_id_pk PRIMARY KEY (department_id);
-- Part B
DROP PROCEDURE add_my_dept;
CREATE OR REPLACE PROCEDURE add_my_dept
	(
	p_dept_id IN VARCHAR2, 
	p_dept_name IN VARCHAR2
	) 
IS
BEGIN
	INSERT INTO my_depts (department_id, department_name)
	VALUES (p_dept_id, p_dept_name);
END add_my_dept;
/
-- Part C
BEGIN
	add_my_dept(10, 'Test Zone');
END;
/ 
-- Part D 
CREATE OR REPLACE PROCEDURE add_my_dept
	(
	p_dept_id IN VARCHAR2, 
	p_dept_name IN VARCHAR2
	) 
IS
BEGIN
	INSERT INTO my_depts (department_id, department_name)
	VALUES (p_dept_id, p_dept_name);
	DBMS_OUTPUT.PUT_LINE('Added dept '||p_dept_id||': '||p_dept_name);
EXCEPTION
	WHEN OTHERS THEN
	DBMS_OUTPUT.PUT_LINE('Error adding Dept '||p_dept_id||': '||p_dept_name);
END add_my_dept;
/
-- Part E
BEGIN
	add_my_dept(10, 'Test Zone');
END;
/ 
-- Part F
CREATE OR REPLACE PROCEDURE add_my_dept
	(
	p_dept_id IN VARCHAR2,
	p_dept_name IN VARCHAR2
	) 
IS
BEGIN
	INSERT INTO my_depts (department_id,department_name)
	VALUES (p_dept_id, p_dept_name);
END add_my_dept;
/
-- Part G
CREATE OR REPLACE PROCEDURE outer_proc IS
	v_dept NUMBER(2) := 10;
	v_dname VARCHAR2(30) := 'Admin';
BEGIN
	add_my_dept(v_dept, v_dname);
EXCEPTION
	WHEN OTHERS THEN
	DBMS_OUTPUT.PUT_LINE('Exception was propagated to outer_proc');
END;
/ 
-- Question 2
SELECT object_name FROM user_objects WHERE object_type = 'PROCEDURE';
-- Question 3
DROP PROCEDURE outer_proc;*/
-- Question 4
SELECT text FROM user_source WHERE name = 'ADD_MY_DEPT'; -- name must be in caps!
