-- Problem 1: Select the names and job start dates of all employees who work for the department number 5.
SELECT
  E.F_NAME,
  E.L_NAME,
  J.START_DATE
FROM 
  EMPLOYEES AS E
INNER JOIN 
  JOB_HISTORY AS J
  ON E.EMP_ID = J.EMPL_ID
WHERE E.DEP_ID = 5;
	
-- Problem 2: Select the names, job start dates, and job titles of all employees who work for the department number 5.
SELECT
  EM.F_NAME,
  EM.L_NAME,
  JH.START_DATE,
  JB.JOB_TITLE
FROM 
  EMPLOYEES AS EM
INNER JOIN 
  JOB_HISTORY AS JH
  ON EM.EMP_ID = JH.EMPL_ID
INNER JOIN
  JOBS AS JB
  ON JB.JOB_IDENT = JH.JOBS_ID
WHERE EM.DEP_ID = 5;

-- Problem 3: Perform a Left Outer Join on the EMPLOYEES and DEPARTMENT tables and select employee id, last name, department id and department name for all employees.
SELECT
  EM.EMP_ID,
  EM.L_NAME,
  EM.DEP_ID,
  DP.DEP_NAME
FROM 
  EMPLOYEES AS EM
LEFT JOIN 
  DEPARTMENTS AS DP
  ON EM.DEP_ID = DP.DEPT_ID_DEP;
	
-- Problem 4: Re-write the previous query but limit the result set to include only the rows for employees born before 1980.
SELECT
  EM.EMP_ID,
  EM.L_NAME,
  EM.DEP_ID,
  DP.DEP_NAME
FROM 
  EMPLOYEES AS EM
LEFT JOIN 
  DEPARTMENTS AS DP
  ON EM.DEP_ID = DP.DEPT_ID_DEP
WHERE EM.B_DATE < '1980-01-01';

-- Problem 5: Re-write the previous query but have the result set include all the employees but department names for only the employees who were born before 1980.
SELECT
  EM.EMP_ID,
  EM.L_NAME,
  EM.DEP_ID,
  DP.DEP_NAME
FROM 
	EMPLOYEES AS EM
LEFT JOIN 
  DEPARTMENTS AS DP
  ON EM.DEP_ID = DP.DEPT_ID_DEP
     AND EM.B_DATE < '1980-01-01';
	   
-- Problem 6: Perform a Full Join on the EMPLOYEES and DEPARTMENT tables and select the First name, Last name and Department name of all employees.
SELECT
  EM.F_NAME,
  EM.L_NAME,
  DP.DEP_NAME
FROM 
  EMPLOYEES AS EM
FULL JOIN 
  DEPARTMENTS AS DP
  ON EM.DEP_ID = DP.DEPT_ID_DEP;
	
-- Problem 7: Re-write the previous query but have the result set include all employee names but department id and department names only for male employees.
SELECT
  EM.F_NAME,
  EM.L_NAME,
  DP.DEPT_ID_DEP,
  DP.DEP_NAME
FROM 
  EMPLOYEES AS EM
FULL JOIN 
  DEPARTMENTS AS DP
  ON EM.DEP_ID = DP.DEPT_ID_DEP
     AND EM.SEX = 'M';
