/*
DECLARE
	v_NN NUMBER(2);
	V_MMM NUMBER(3) :=100;
BEGIN
	FOR i IN 1..6
	LOOP
		V_NN := 59 + i;
		FOR x IN 1..12
		LOOP	
			DBMS_OUTPUT.PUT_LINE('inner Plate is '||v_NN||'-'||v_MMM);
			v_MMM := 100 + x;
		END LOOP;
	END LOOP;
END;
/
*/
DECLARE
	v_NN NUMBER(2);
	v_MMM NUMBER(3):=100;
	v_test NUMBER(3);
BEGIN
	<<outer_loop>>
	FOR i IN 1..6
	LOOP
		V_NN := 59 + i;
		v_test := v_NN + v_MMM;
		DBMS_OUTPUT.PUT_LINE('Outter Loop SUM is '||v_test);
		EXIT WHEN v_test = 172;
		<<inner_loop>>		
		FOR x IN 1..11
		LOOP
			v_MMM := 100 + x;
		END LOOP inner_loop;
	END LOOP outer_loop;
END;
/
