-- For Answer 4B in Section 5_5
DECLARE
	CURSOR cur_update_jenny IS 
			SELECT * FROM upd_emps WHERE employee_id = 200 FOR UPDATE NOWAIT;
	v_update_jenny upd_emps%ROWTYPE;
	v_update_name upd_emps.first_name%TYPE := 'Jenny';
BEGIN
	OPEN cur_update_jenny;
END;
/
