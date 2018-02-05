-- ANSWER FOR THE ONLY QUESTION on SECTOIN 6_1
/*
DECLARE
	v_dept_id departments.department_id%TYPE;
	v_dept_name departments.department_name%TYPE;
	v_mgr_id departments.manager_id%TYPE;
	v_loc_id departments.location_id%TYPE;
BEGIN
	SELECT department_id, department_name, manager_id, location_id
	INTO v_dept_id, v_dept_name, v_mgr_id, v_loc_id
	FROM departments
	WHERE department_id = 80;
	DBMS_OUTPUT.PUT_LINE(v_dept_id || ' ' || v_dept_name
	|| ' ' || v_mgr_id || ' ' || v_loc_id);
EXCEPTION
	WHEN NO_DATA_FOUND THEN
	DBMS_OUTPUT.PUT_LINE('This department does not exist');
END;
/
*/
DECLARE
	TYPE dept_rec IS RECORD
	(
	dept_id departments.department_id%TYPE,
	dept_name departments.department_name%TYPE,
	mgr_id departments.manager_id%TYPE,
	loc_id departments.location_id%TYPE
	);
	
	v_dept_rec dept_rec;
BEGIN
	SELECT d.department_id, d.department_name, d.manager_id, d.location_id
	INTO v_dept_rec
	FROM departments d
	WHERE department_id = 80;
	DBMS_OUTPUT.PUT_LINE(v_dept_rec.dept_id || ' ' || v_dept_rec.dept_name
	|| ' ' || v_dept_rec.mgr_id || ' ' || v_dept_rec.loc_id);
EXCEPTION
	WHEN NO_DATA_FOUND THEN
	DBMS_OUTPUT.PUT_LINE('This department does not exist');
END;
/
