-- Exercise 1: String Patterns
-- Retrieve all employees whose address is in Elgin,IL.
SELECT
	*
FROM
	EMPLOYEES
WHERE
	ADDRESS LIKE '%Elgin,IL';
-- Retrieve all employees who were born during the 1970’s.
SELECT
	*
FROM 
	EMPLOYEES
WHERE
	B_DATE 
		BETWEEN '1970-01-01' AND '1979-12-31';
-- Retrieve all employees in department 5 whose salary is between 60000 and 70000.
SELECT
	*
FROM 
	EMPLOYEES
WHERE
	DEP_ID = 5
	AND SALARY BETWEEN 60000 AND 70000;
--
-- Exercise 2: Sorting
-- 

