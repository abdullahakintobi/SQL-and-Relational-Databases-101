-- Exercise 1: String Patterns

-- Problem 1: Retrieve all employees whose address is in Elgin,IL.
SELECT
	*
FROM
	EMPLOYEES
WHERE
	ADDRESS LIKE '%Elgin,IL';

-- Problem 2: Retrieve all employees who were born during the 1970’s.
SELECT
	*
FROM 
	EMPLOYEES
WHERE
	B_DATE 
		BETWEEN '1970-01-01' AND '1979-12-31';

-- Problem 3: Retrieve all employees in department 5 whose salary is between 60000 and 70000.
SELECT
	*
FROM 
	EMPLOYEES
WHERE
	DEP_ID = 5
	AND SALARY BETWEEN 60000 AND 70000;


-- Exercise 2: Sorting

-- Problem 1: Retrieve a list of employees ordered by department ID.
SELECT
	*
FROM 
	EMPLOYEES
ORDER BY DEP_ID;

-- Problem 2: Retrieve a list of employees ordered in descending order by department ID and within each department ordered alphabetically in descending order by last name.
SELECT
	*
FROM 
	EMPLOYEES
ORDER BY DEP_ID, L_NAME;

-- Problem 3: In SQL problem 2 (Exercise 2 Problem 2), use department name instead of department ID. Retrieve a list of employees ordered by department name, and within each department ordered alphabetically in descending order by last name.
SELECT
	E.EMP_ID,
	E.F_NAME,
	E.L_NAME,
	D.DEP_NAME
FROM
	EMPLOYEES AS E
INNER JOIN DEPARTMENTS AS D 
	ON E.DEP_ID = D.DEPT_ID_DEP
ORDER BY DEP_NAME, L_NAME DESC;


-- Exercise 3: Grouping

-- Problem 1: For each department ID retrieve the number of employees in the department.
SELECT
	DEP_ID,
	COUNT(1) AS EMP_COUNT
FROM 
	EMPLOYEES
GROUP BY DEP_ID;

-- Problem 2: For each department retrieve the number of employees in the department, and the average employee salary in the department.
SELECT
	DEP_ID,
	COUNT(1) AS EMP_COUNT,
	AVG(SALARY) AS AVG_SALARY
FROM 
	EMPLOYEES
GROUP BY DEP_ID;

-- Problem 3: Label the computed columns in the result set of SQL problem 2 (Exercise 3 Problem 2) as NUM_EMPLOYEES and AVG_SALARY.
SELECT
	DEP_ID,
	COUNT(1) AS NUM_EMPLOYEES,
	AVG(SALARY) AS AVG_SALARY
FROM 
	EMPLOYEES
GROUP BY DEP_ID;

-- Problem 4: In SQL problem 3 (Exercise 3 Problem 3), order the result set by Average Salary.
SELECT
	DEP_ID,
	COUNT(1) AS NUM_EMPLOYEES,
	AVG(SALARY) AS AVG_SALARY
FROM 
	EMPLOYEES
GROUP BY DEP_ID
HAVING COUNT(1) < 4
ORDER BY AVG_SALARY;
