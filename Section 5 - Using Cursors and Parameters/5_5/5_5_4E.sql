-- For Answer 4E in Section 5_5
DECLARE
	CURSOR cur_update_jenny IS 
			SELECT * FROM upd_emps WHERE employee_id = 200 FOR UPDATE NOWAIT;
	v_update_jenny upd_emps.first_name%TYPE := 'Jenny';
BEGIN
	OPEN cur_update_jenny;
		UPDATE upd_emps
		SET first_name = v_update_jenny;
	CLOSE cur_update_jenny;
END;
/
