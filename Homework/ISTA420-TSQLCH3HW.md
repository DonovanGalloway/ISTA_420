# ISTA-420 TSQLCH3HW
## Donovan Galloway
### 6 March 2018

1.  In general, why would you even want to join two (or more) tables together? This is a good time to think about the nature of relational algebra.

3.  Describe in your own words the output from an inner join. Its the data that two tables have in common between them
4.  Describe in your own words the output from an outer join. 
5.  Describe in your own words the output from an cross join. The simplest of join types that pulls matches rows from one table to matching rows in the table that its joined to.
6.  A convenient mnemonic for remembering the various joins is “Ohio.” Why is this true?
7.  Give an example of a composite join. 
8.  What is the difference between the following two queries? The business problem is “How many orders do we have from each customer?” the first query does not specify the orderid to pair to the custid.

================first query===============

SELECT C.custid, COUNT(*) AS numorders

FROM Sales.Customers AS C

LEFT OUTER JOIN Sales.Orders AS O

ON C.custid = O.custid GROUP BY C.custid;

================second query===============

SELECT C.custid, COUNT(O.orderid) AS numorders

FROM Sales.Customers AS C

LEFT OUTER JOIN Sales.Orders AS O

ON C.custid = O.custid GROUP BY C.custid;

8. What might be one reason the following query does not return the column custID in this query? a mistake in which the orderdate was never input so its not found.

SELECT C.custid, C.companyname, O.orderid, O.orderdate

FROM Sales.Customers AS C

LEFT OUTER JOIN Sales.Orders AS O

ON C.custid = O.custid

WHERE O.orderdate >= ’20160101’;

