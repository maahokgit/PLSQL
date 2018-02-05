DECLARE
	CURSOR cur_salaryUP IS 
			SELECT salary FROM upd_emps FOR UPDATE NOWAIT;
BEGIN
	FOR v_salaryup IN cur_salaryUP
	LOOP
		UPDATE upd_emps
		SET salary = salary + 1;
	END LOOP;
END;
