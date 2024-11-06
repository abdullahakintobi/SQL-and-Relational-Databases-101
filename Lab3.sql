-- Lab 3 - Composing and Running Basic SQL Queries
-- Hands-on Lab: Composing and Running Basic SQL Queries
--
-- Drop table if it exists
DROP TABLE
  IF EXISTS INSTRUCTOR;
--
-- Create table
CREATE TABLE
  INSTRUCTOR (
    ins_id INT NOT NULL PRIMARY KEY,
    lastname VARCHAR(20) NOT NULL,
    firstname VARCHAR(20) NOT NULL,
    city VARCHAR(15),
    country CHAR(2)
  );
--
-- Insert a record into the INSTRUCTOR table
INSERT INTO
  INSTRUCTOR (ins_id, lastname, firstname, city, country)
VALUES
  ('1', 'Ahuja', 'Rav', 'Toronto', 'CA');
--
-- Insert two records into the INSTRUCTOR table
INSERT INTO
  INSTRUCTOR (ins_id, lastname, firstname, city, country)
VALUES
  ('2', 'Chong', 'Raul', 'Toronto', 'CA'),
  ('3', 'Vasudevan', 'Hima', 'Chicago', 'US');
--
-- Select all rows from INSTRUCTOR table
SELECT
  *
FROM
  INSTRUCTOR;
--
-- Select the firstname, lastname and country where the city is Toronto
SELECT
  firstname,
  lastname,
  country
FROM
  INSTRUCTOR
WHERE
  city = 'Toronto';
--
-- Update the row for Rav Ahuja and change his city to Markham
UPDATE
  INSTRUCTOR
SET
  city = 'Markham'
WHERE
  firstname = 'Rav';
--
-- Delete the row for Raul Chong from the table
DELETE FROM
  INSTRUCTOR
WHERE
  ins_id = 2;
--
-- Retrieve all rows in the INSTRUCTOR table
SELECT
  *
FROM
  INSTRUCTOR;
