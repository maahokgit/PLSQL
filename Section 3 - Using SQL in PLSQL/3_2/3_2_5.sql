-- Part A
--CREATE TABLE emp_dup AS (SELECT * FROM employees);

-- Part B
--SELECT first_name, last_name FROM emp_dup;

-- Part C
/* DECLARE
	last_name VARCHAR2(25) := 'Fay';
BEGIN
	UPDATE emp_dup SET first_name = 'Jennifer'
	WHERE last_name = last_name;
END;
/
*/

-- Part D
--SELECT first_name, last_name FROM emp_dup;

-- Part E
-- DROP TABLE emp_dup;

-- CREATE TABLE emp_dup AS (SELECT * FROM employees);

-- Part F
DECLARE
	v_last_name VARCHAR2(25) := 'Fay';
BEGIN
	UPDATE emp_dup SET first_name = 'Jennifer'
	WHERE last_name = v_last_name;
END;
/

-- Part G
-- SELECT first_name, last_name FROM emp_dup;
