-- ANSWER TO QUESTION 4B SECTION 7_3
/*
DECLARE
	e_zero_select EXCEPTION;
	e_zero_delete EXCEPTION;
	v_dept_id excep_emps.department_id%TYPE;
	v_count NUMBER;
BEGIN
	v_dept_id := 40;
	SELECT COUNT(*) INTO v_count
	FROM excep_emps
	WHERE department_id = v_dept_id;
	
	IF v_count = 0 THEN
		RAISE e_zero_select;
	ELSE
		DBMS_OUTPUT.PUT_LINE('There are ' || v_count || ' employees');
	END IF;

	DELETE FROM excep_emps
	WHERE department_id = v_dept_id;
	
	IF SQL%ROWCOUNT = 0 THEN
		RAISE e_zero_delete;
	ELSE
		DBMS_OUTPUT.PUT_LINE(SQL%ROWCOUNT || ' employees were deleted');
	END IF;
	ROLLBACK;
EXCEPTION
	WHEN e_zero_select THEN
		DBMS_OUTPUT.PUT_LINE('ERROR: Zero row select, do you have the correcnt department number?');
	WHEN e_zero_delete THEN
		DBMS_OUTPUT.PUT_LINE('ERROR: Zero row delete, do you have the correcnt department number?');
END;
/
*/
-- ANSWER QUESTION 4C Section 7_3
DECLARE
	e_zero_select EXCEPTION;
	PRAGMA EXCEPTION_INIT (e_zero_select, -20203);
	e_zero_delete EXCEPTION;
	PRAGMA EXCEPTION_INIT (e_zero_delete, -20204);
	v_dept_id excep_emps.department_id%TYPE;
	v_count NUMBER;
BEGIN
	v_dept_id := 40;

	SELECT COUNT(*) INTO v_count
	FROM excep_emps
	WHERE department_id = v_dept_id;
	
	IF v_count = 0 THEN
		RAISE_APPLICATION_ERROR(-20203, 'Total Row Count is '||v_count);
	ELSE
		DBMS_OUTPUT.PUT_LINE('There are ' || v_count || ' employees');
	END IF;

	DELETE FROM excep_emps
	WHERE department_id = v_dept_id;
	IF SQL%ROWCOUNT = 0 THEN
		RAISE_APPLICATION_ERROR(-20203, 'ROWCOUNT is Zero');
	ELSE
		DBMS_OUTPUT.PUT_LINE(SQL%ROWCOUNT || ' employees were deleted');
	END IF;
	
	ROLLBACK;
END;
/
