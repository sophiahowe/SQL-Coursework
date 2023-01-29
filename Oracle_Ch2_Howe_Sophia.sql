Spool c:\oradata02\chapter2\Oracle_Ch2_Spool_Howe_Sophia.txt

SQL> -- Oracle SQL, chapter 2
SQL> -- BMIS441-02 Data Base Management
SQL> -- Sophia Howe
SQL> -- Row: 0

SQL> -- #3
SELECT title, pubdate AS "Publication Date" FROM books;

SQL> --#5                          
SQL> SELECT name, contact AS "Contact Person", phone FROM publisher;

SQL> -- #7
SQL> SELECT DISTINCT customer# FROM orders;

SQL> -- #9
SQL> SELECT lname || ', ' || fname FROM author;

SQL> --#1
SQL> SET LINESIZE 80
SQL> SET PAGESIZE 45
SQL> column title format a12 heading 'Book Title' WORD
SQL> column PubID format 99 heading 'ID'
SQL> column Cost format $999.99
SQL> column retail format $999.99

SQL> SELECT * FROM books;

SPOOL OFF