DECLARE
	v_max_deptno new_depts.department_id%TYPE;
BEGIN
	SELECT MAX(department_id) INTO v_max_deptno
	FROM new_depts;
	DBMS_OUTPUT.PUT_LINE('The maximum department id is: ' || v_max_deptno);
END;
