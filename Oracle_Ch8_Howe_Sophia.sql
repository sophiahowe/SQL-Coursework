-- Oracle SQL, chapter 8
-- BMIS 441 Data Base Management
-- Sophia Howe
-- Row: 3

-- #2
SELECT order#, shipdate
FROM orders
WHERE shipdate > '01-APR-09';

-- #4-A
SELECT customer#, lastname, state
FROM customers
WHERE state = 'GA' OR state = 'NJ'
ORDER BY lastname ASC;

-- #4-B
SELECT customer#, lastname, state
FROM customers 
WHERE state LIKE 'GA' OR state LIKE 'NJ'
ORDER BY lastname ASC;

-- #6
SELECT lname, fname
FROM author
WHERE lname LIKE '%IN%'
ORDER BY lname ASC, fname ASC;

-- #8-A
SELECT title, category
FROM books
WHERE category IN('CHILDREN', 'COOKING');

-- #8-B
SELECT title, category
FROM books
WHERE category = 'CHILDREN' OR category = 'COOKING';

-- #8-C
SELECT title, category
FROM books
WHERE category LIKE 'CHIL%' OR category LIKE 'COOK%';

-- #10-A
SELECT title, pubdate
FROM books
WHERE (pubdate BETWEEN '01-JAN-05' AND '31-DEC-05')
AND category = 'COMPUTER';

-- #10-B
SELECT title, pubdate
FROM books
WHERE (category IN('COMPUTER'))
AND (pubdate BETWEEN '01-JAN-05' AND '31-DEC-05');

-- #10-C
SELECT title, pubdate
FROM books
WHERE (category LIKE 'COMP%') AND (pubdate LIKE '%05');