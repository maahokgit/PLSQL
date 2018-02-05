-- Question 1
SELECT trigger_name AS "Name", 
	trigger_type AS "Type", 
	triggering_event AS "Event", 
	table_name AS "Table", 
	action_type AS "Action", 
	status
FROM user_triggers;
-- Question 2
ALTER TRIGGER max_salary DISABLE;
-- Question 3
SELECT text FROM user_source WHERE name = 'MAX_SALARY';
-- Question 4
DROP TRIGGER max_salary;
