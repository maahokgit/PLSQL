/* -- 1
CREATE OR REPLACE FUNCTION sal_increase
	(
	p_salary f_emps.salary%TYPE,
	p_percent_incr NUMBER
	)
	RETURN NUMBER
	IS
BEGIN
	RETURN (p_salary + (p_salary * p_percent_incr / 100));
END;
/ 
-- First Select SQL
SELECT last_name, salary, sal_increase(salary, 5)
FROM f_emps;
-- Second Select SQL without Function
SELECT last_name, salary, (salary + (salary * 0.05))
FROM f_emps WHERE ((salary + (salary * 0.05)) > 10000);
-- Second Select SQL with Function
SELECT last_name, salary, sal_increase(salary, 5) 
FROM f_emps WHERE sal_increase(salary, 5) > 10000;

-- Question 3
SELECT last_name, salary, sal_increase(salary, 5) 
FROM f_emps 
ORDER BY sal_increase(salary, 5) DESC;

-- Question 4
SELECT department_id, SUM(salary)
FROM f_emps
GROUP BY department_id
HAVING SUM(salary) > 20000;
*/
-- Question 4 using function
SELECT department_id, SUM(sal_increase(salary, 5))
FROM f_emps
GROUP BY department_id
HAVING SUM(sal_increase(salary, 5)) > 20000;
