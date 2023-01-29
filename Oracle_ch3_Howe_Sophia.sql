Spool c:\oradata02\chapter3\Oracle_ch3_Spool_Howe_Sophia.txt

-- Oracle SQL, chapter 3
-- BMIS441 Data Base Management
-- Sophia Howe
-- Row: 0

-- #1
CREATE TABLE CATEGORY (CatCode CHAR(2), CatDesc CHAR(10));

-- #2
CREATE TABLE EMPLOYEES (Emp# NUMBER(5), Lastname VARCHAR2(12), Firstname VARCHAR2(12), Job_class VARCHAR2(4)); 

-- #3
ALTER TABLE EMPLOYEES 
ADD EmpDate DATE DEFAULT SYSDATE 
ADD EndDate DATE;

-- #4
ALTER TABLE EMPLOYEES
MODIFY Job_Class NUMBER(2);

-- #5
ALTER TABLE EMPLOYEES
DROP COLUMN EndDate;

-- #6
RENAME EMPLOYEES TO JL_EMPS;

-- #7
CREATE TABLE BOOK_PRICING
AS (SELECT ISBN as ID, Cost, Retail, Category
FROM Books);

-- #8
ALTER TABLE BOOK_PRICING 
SET UNUSED (Category);

SELECT * FROM BOOK_PRICING;


