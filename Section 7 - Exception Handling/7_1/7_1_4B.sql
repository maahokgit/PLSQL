DECLARE
	v_jobid employees.job_id%TYPE;
BEGIN
	SELECT job_id INTO v_jobid
	FROM employees
	WHERE department_id = 80;
EXCEPTION
	WHEN TOO_MANY_ROWS THEN
	DBMS_OUTPUT.PUT_LINE('Query give more than one row. Maybe use a cursor?');
END;
/
