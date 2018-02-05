DECLARE
	v_max_deptno departments.department_id%TYPE;
BEGIN
	SELECT department_id
	INTO v_max_deptno
	FROM departments
	WHERE department_id = (SELECT MAX(department_id) FROM departments);
	
	DBMS_OUTPUT.PUT_LINE('The Highest Department ID # is ' || v_max_deptno || '.');
END;
/
