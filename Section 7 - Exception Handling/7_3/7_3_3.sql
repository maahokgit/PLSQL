-- Scripts for Question 3 Section 7_3
DECLARE
	e_invalid_dept EXCEPTION;
	PRAGMA EXCEPTION_INIT (e_invalid_dept, -20202);
 	v_error_code NUMBER;
	v_error_message VARCHAR2(255);
	v_deptno NUMBER := 40;-- 20, 30,40
BEGIN
	UPDATE excep_emps
	SET salary = 10000
	WHERE department_id = v_deptno;
	IF SQL%NOTFOUND THEN
		RAISE_APPLICATION_ERROR(-20202, 'Invalid Department ID');
	END IF;
END;
/
