-- Oracle SQL, Chapter 9
-- BMIS 441-02 Data Base Management
-- Sophia Howe
-- Row: 3

-- #2-a
SELECT c.firstname, c.lastname, o.order#
FROM orders o, customers c
WHERE c.customer# = o.customer#
AND shipdate IS NULL
ORDER BY o.orderdate;

-- #2-b
SELECT c.firstname, c.lastname, o.order#
FROM orders o JOIN customers c
ON c.customer# = o.customer#
WHERE shipdate IS NULL
ORDER BY o.orderdate;


-- #5-a
SELECT b.title, TO_CHAR(oi.paideach-b.cost, '$99.99') AS Profit
FROM customers c, orders o, books b, orderitems oi
WHERE c.customer# = o.customer#
AND o.order# = oi.order#
AND oi.isbn = b.isbn
AND c.firstname = 'JAKE' 
AND c.lastname = 'LUCAS'
ORDER BY o.orderdate, Profit DESC;


-- #5-b
SELECT b.title, TO_CHAR(oi.paideach-b.cost, '$99.99') AS Profit
FROM customers c NATURAL JOIN orders o NATURAL JOIN books b NATURAL JOIN orderitems oi
WHERE c.firstname = 'JAKE' 
AND c.lastname = 'LUCAS'
ORDER BY o.orderdate, Profit DESC;