/* 
DECLARE
	v_max_deptno new_depts.department_id%TYPE;
	v_dept_name new_depts.department_name%TYPE := 'A New Department';
	v_dept_id new_depts.department_id%TYPE;
BEGIN
	SELECT MAX(department_id) INTO v_max_deptno
	FROM new_depts;
	
	v_dept_id := v_max_deptno + 10;
	
	INSERT INTO new_depts (department_id, department_name, manager_id, location_id)
	Values(v_dept_id,v_dept_name,null,null);
	
	DBMS_OUTPUT.PUT_LINE('The new department id is: ' || v_dept_id);
	DBMS_OUTPUT.PUT_LINE('The new department name is: ' || v_dept_name);
	DBMS_OUTPUT.PUT_LINE(SQL%ROWCOUNT||' was inserted');

END;

*/

DECLARE
	v_max_deptno new_depts.department_id%TYPE;
	v_dept_name new_depts.department_name%TYPE := 'A New Department';
	v_dept_id new_depts.department_id%TYPE;
	v_new_location_id new_depts.location_id%TYPE := 1400;
BEGIN
	SELECT MAX(department_id) INTO v_max_deptno
	FROM new_depts;
	
	v_dept_id := v_max_deptno + 10;
	
	UPDATE new_depts
	SET location_id = v_new_location_id
	WHERE location_id = 1700;
		
	DBMS_OUTPUT.PUT_LINE(SQL%ROWCOUNT||' was updated');

END;
