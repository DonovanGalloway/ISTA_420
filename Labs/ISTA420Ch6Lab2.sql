.echo on
.header on

--Name: ISTA220 TSQL Chapter6Labs
--Author: Donovan Galloway
--Date: 20 March 2018

--1. The Union All operator unifies the two input query result sets and doesnt remove duplicates from the result. 
--The Union operator (implied Distinct) also unifies the two input query result sets, but it does remove duplicates from the result.

--2. Write a query that generates a virtual auxiliary table of 10 numbers in the range of 1-10 without using a looping construct:
SELECT 1 AS n
UNION ALL SELECT 2
UNION ALL SELECT 3
UNION ALL SELECT 4
UNION ALL SELECT 5 
UNION ALL SELECT 6
UNION ALL SELECT 7
UNION ALL SELECT 8
UNION ALL SELECT 9
UNION ALL SELECT 10;

--3. Write a query that returns customer and employee pairs that had order activity in January 2016 but not in February 2016:
SELECT custid, empid
FROM sales.orders
WHERE orderdate like '2016-01-%'
EXCEPT
SELECT custid, empid
FROM sales.orders
WHERE orderdate like '2016-02-%';

--4. Write a query that returns customer and employee pairs that had order activity in both January 2016 and February 2016:
SELECT custid, empid
FROM Sales.Orders
WHERE orderdate like '2016-01-%'
INTERSECT
SELECT custid, empid
FROM Sales.Orders
Where orderdate like '2016-02-%';

--5. Write a query that returns customer and employee pairs that had order activity in both January and February 2016 but not in 2015:
SELECT custid, empid
FROM Sales.Orders
WHERE orderdate like '2016-01-%'
INTERSECT 
SELECT custid, empid
FROM Sales.Orders
WHERE orderdate like '2016-02-%'
EXCEPT
SELECT custid, empid
FROM Sales.Orders
WHERE orderdate like '2015-%'