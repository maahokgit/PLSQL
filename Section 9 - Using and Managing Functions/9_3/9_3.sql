-- PLSQL 9_3
-- Question 3
SELECT object_name, object_type, status FROM user_objects ORDER BY object_type;
-- Question 4
SELECT owner, object_name, object_type, status 
FROM ALL_OBJECTS 
WHERE owner = 'DATADEV' AND 
object_type IN ('FUNCTION','PROCEDURE') 
ORDER BY object_type;
-- Question 6
SELECT * FROM dict WHERE table_name LIKE 'USER%VIEWS%';

