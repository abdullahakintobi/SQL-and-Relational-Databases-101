-- Lab 2 - Create tables using SQL scripts and Load data into tables
-- Hands-on Lab: Create Tables using SQL Scripts and Load Data into Tables
--
-- Exercise 1: Create tables using SQL scripts
-- DDL statement for table 'HR' database
-- Drop the tables in case they exist
DROP TABLE
  IF EXISTS EMPLOYEES;
--
DROP TABLE
  IF EXISTS JOB_HISTORY;
--
DROP TABLE
  IF EXISTS JOBS;
--
DROP TABLE
  IF EXISTS DEPARTMENTS;
--
DROP TABLE
  IF EXISTS LOCATIONS;
--
-- Create the tables
CREATE TABLE
  EMPLOYEES (
    EMP_ID CHAR(9) NOT NULL,
    F_NAME VARCHAR(15) NOT NULL,
    L_NAME VARCHAR(15) NOT NULL,
    SSN CHAR(9),
    B_DATE DATE,
    SEX CHAR,
    ADDRESS VARCHAR(30),
    JOB_ID CHAR(9),
    SALARY DECIMAL(10, 2),
    MANAGER_ID CHAR(9),
    DEP_ID CHAR(9) NOT NULL,
    PRIMARY KEY (EMP_ID)
  );
--
CREATE TABLE
  JOB_HISTORY (
    EMPL_ID CHAR(9) NOT NULL,
    START_DATE DATE,
    JOBS_ID CHAR(9) NOT NULL,
    DEPT_ID CHAR(9),
    PRIMARY KEY (EMPL_ID, JOBS_ID)
  );
--
CREATE TABLE
  JOBS (
    JOB_IDENT CHAR(9) NOT NULL,
    JOB_TITLE VARCHAR(30),
    MIN_SALARY DECIMAL(10, 2),
    MAX_SALARY DECIMAL(10, 2),
    PRIMARY KEY (JOB_IDENT)
  );
--
CREATE TABLE
  DEPARTMENTS (
    DEPT_ID_DEP CHAR(9) NOT NULL,
    DEP_NAME VARCHAR(15),
    MANAGER_ID CHAR(9),
    LOC_ID CHAR(9),
    PRIMARY KEY (DEPT_ID_DEP)
  );
--
CREATE TABLE
  LOCATIONS (
    LOCT_ID CHAR(9) NOT NULL,
    DEP_ID_LOC CHAR(9) NOT NULL,
    PRIMARY KEY (LOCT_ID, DEP_ID_LOC)
  );
--
-- Exercise 2: Load data into tables
INSERT 
  INTO 
    "FLT00090"."EMPLOYEES" (EMP_ID, F_NAME, L_NAME, SSN, B_DATE, SEX, ADDRESS, JOB_ID, SALARY, MANAGER_ID, DEP_ID)
  VALUES 
    ('E1001', 'John', 'Thomas', '123456789', '1976-09-01', 'M', '5631 Rice, OakPark,IL', 'JOB100', 100000.00, 'MGR30001', 'DEPT2'),
    ('E1002', 'Alice', 'James', '123457789', '1972-07-31', 'F', '980 Berry ln, Elgin,IL', 'JOB200', 80000.00, 'MGR30002', 'DEPT5'),
    ('E1003', 'Steve', 'Wells', '123458789', '1980-10-08', 'M', '291 Springs, Gary,IL', 'JOB300', 50000.00, 'MGR30002', 'DEPT5'),
    ('E1004', 'Santosh', 'Kumar', '123459789', '1985-07-20', 'M', '511 Aurora Av, Aurora,IL', 'JOB400', 60000.00, 'MGR30004', 'DEPT5'),
    ('E1005', 'Ahmed', 'Hussain', '123410789', '1981-04-01', 'M', '216 Oak Tree, Geneva,IL', 'JOB500', 70000.00, 'MGR30001', 'DEPT2'),
    ('E1006', 'Nancy', 'Allen', '123411789', '1978-06-02', 'F', '111 Green Pl, Elgin,IL', 'JOB600', 90000.00, 'MGR30001', 'DEPT2'),
    ('E1007', 'Mary', 'Thomas', '123412789', '1975-05-05', 'F', '100 Rose Pl, Gary,IL', 'JOB650', 65000.00, 'MGR30003', 'DEPT7'),
    ('E1008', 'Bharath', 'Gupta', '123413789', '1985-06-05', 'M', '145 Berry Ln, Naperville,IL', 'JOB660', 65000.00, 'MGR30003', 'DEPT7'),
    ('E1009', 'Andrea', 'Jones', '123414789', '1990-09-07', 'F', '120 Fall Creek, Gary,IL', 'JOB234', 70000.00, 'MGR30003', 'DEPT7'),
    ('E1010', 'Ann', 'Jacob', '123415789', '1982-03-30', 'F', '111 Britany Springs,Elgin,IL', 'JOB220', 70000.00, 'MGR30004', 'DEPT5');
--
INSERT 
  INTO 
    "FLT00090"."DEPARTMENTS" (DEPT_ID_DEP, DEP_NAME, MANAGER_ID, LOC_ID)
  VALUES
    ('DEPT2', 'Architect Group', 'MGR30001', 'LOC1'),
    ('DEPT5', 'Software Group', 'MGR30002', 'LOC2'),
    ('DEPT7', 'Design Team', 'MGR30003', 'LOC3');
--
INSERT 
  INTO 
    "FLT00090"."JOBS" (JOB_IDENT, JOB_TITLE, MIN_SALARY, MAX_SALARY)
  VALUES
    ('JOB100', 'Sr. Architect', 60000.00, 100000.00),
    ('JOB200', 'Sr.Software Developer', 60000.00, 80000.00),
    ('JOB300', 'Jr.Software Developer', 40000.00, 60000.00),
    ('JOB400', 'Jr.Software Developer', 40000.00, 60000.00),
    ('JOB500', 'Jr. Architect', 50000.00, 70000.00),
    ('JOB600', 'Lead Architect', 70000.00, 100000.00),
    ('JOB650', 'Jr. Designer', 60000.00, 70000.00),
    ('JOB660', 'Jr. Designer', 60000.00, 70000.00),
    ('JOB234', 'Sr. Designer', 70000.00, 90000.00),
    ('JOB220', 'Sr. Designer', 70000.00, 90000.00);
--
INSERT 
  INTO 
    "FLT00090"."LOCATIONS" (LOCT_ID, DEP_ID_LOC)
  VALUES
    ('LOC1', 'DEPT2'),
    ('LOC2', 'DEPT5'),
    ('LOC3', 'DEPT7');
--
INSERT 
  INTO 
    "FLT00090"."JOB_HISTORY" (EMPL_ID, START_DATE, JOBS_ID, DEPT_ID)
  VALUES
    ('E1001', '2000-08-01', 'JOB100', 'DEPT2'),
    ('E1002', '2001-08-01', 'JOB200', 'DEPT5'),
    ('E1003', '2001-08-16', 'JOB300', 'DEPT5'),
    ('E1004', '2000-08-16', 'JOB400', 'DEPT5'),
    ('E1005', '2000-05-30', 'JOB500', 'DEPT2'),
    ('E1006', '2001-08-16', 'JOB600', 'DEPT2'),
    ('E1007', '2002-05-30', 'JOB650', 'DEPT7'),
    ('E1008', '2010-05-06', 'JOB660', 'DEPT7'),
    ('E1009', '2016-08-16', 'JOB234', 'DEPT7'),
    ('E1010', '2016-08-16', 'JOB220', 'DEPT5');
