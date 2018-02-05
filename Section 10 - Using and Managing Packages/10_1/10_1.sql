/* -- PL/SQL 10_1
-- Question 4
SELECT object_name FROM user_objects WHERE object_type = 'PACKAGE';
-- Question 5
CREATE OR REPLACE PACKAGE check_emp_pkg
IS
	g_max_length_of_service NUMBER := 100;
	PROCEDURE chk_hiredate
	(
		p_date IN employees.hire_date%TYPE
	);
	PROCEDURE chk_dept_mgr
	(
		p_empid IN employees.employee_id%TYPE,
		p_mgr IN employees.manager_id%TYPE
	);
END check_emp_pkg;
/
-- Question 6
CREATE OR REPLACE PACKAGE BODY check_emp_pkg
IS
	PROCEDURE chk_hiredate
	(
		p_date IN employees.hire_date%TYPE
	)
	IS
	BEGIN
		IF MONTHS_BETWEEN (SYSDATE, p_date) >
			g_max_length_of_service * 12 THEN
		RAISE_APPLICATION_ERROR(-20201, 'Hire Date is Too old');
		END IF;
	END chk_hiredate;
	
	PROCEDURE chk_dept_mgr
	(
		p_empid IN employees.employee_id%TYPE,
		p_mgr IN employees.manager_id%TYPE
	)
	IS
		v_emp_mgr_id employees.manager_id%TYPE;
	BEGIN
		SELECT manager_id 
		INTO v_emp_mgr_id
		FROM employees 
		WHERE employee_id = p_empid;
		
		IF v_emp_mgr_id = p_mgr THEN
		DBMS_OUTPUT.PUT_LINE('SUCCESS');
		END IF;
	EXCEPTION
		WHEN NO_DATA_FOUND THEN
		DBMS_OUTPUT.PUT_LINE('Invalid Input, No Data found');
	END chk_dept_mgr;
END check_emp_pkg;
/ 
-- Question 7
-- Part 1
BEGIN
	check_emp_pkg.chk_hiredate('17-Jan-1987');
END;
/
-- Part 2
BEGIN
	check_emp_pkg.chk_hiredate('17-Jan-1887');
END;
/
-- Question 8
-- Part 1
BEGIN
	check_emp_pkg.chk_dept_mgr(174,149);
END;
/
-- Part 2
BEGIN
	check_emp_pkg.chk_dept_mgr(174,176);
END;
/ */
-- Question 9
CREATE OR REPLACE PACKAGE BODY check_emp_pkg
IS
	PROCEDURE chk_hiredate
	(
		p_date IN employees.hire_date%TYPE
	)
	IS
	BEGIN
		IF MONTHS_BETWEEN (SYSDATE, p_date) >
			g_max_length_of_service * 12 THEN
		RAISE_APPLICATION_ERROR(-20201, 'Hire Date is Too old');
		END IF;
	END chk_hiredate;
	
	PROCEDURE chk_dept_mgr
	(
		p_empid IN employees.employee_id%TYPE,
		p_mgr IN employees.manager_id%TYPE
	)
	IS
		v_emp_mgr_id employees.manager_id%TYPE;
	BEGIN
		SELECT manager_id 
		INTO v_emp_mgr_id
		FROM employees 
		WHERE employee_id = p_empid;
		
		IF v_emp_mgr_id = p_mgr THEN
			DBMS_OUTPUT.PUT_LINE('SUCCESS');
	 	ELSE
			DBMS_OUTPUT.PUT_LINE('FAIL');
		END IF;
	EXCEPTION
		WHEN NO_DATA_FOUND THEN
		DBMS_OUTPUT.PUT_LINE('Invalid Input, No Data found');
	END chk_dept_mgr;
END check_emp_pkg;
/ 
