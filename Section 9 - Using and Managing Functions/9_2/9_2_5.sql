/* -- Question 5
CREATE OR REPLACE FUNCTION check_dept
	(p_dept_id f_depts.department_id%TYPE)
	RETURN BOOLEAN IS
	v_dept_id f_depts.department_id%TYPE;
BEGIN
	SELECT department_id INTO v_dept_id
	FROM f_depts
	WHERE department_id = p_dept_id;
		RETURN TRUE;
EXCEPTION
	WHEN NO_DATA_FOUND THEN
	RETURN FALSE;
END;
/ */
-- Trying Function...with SELECT statement
SELECT check_dept(5) FROM f_depts;
