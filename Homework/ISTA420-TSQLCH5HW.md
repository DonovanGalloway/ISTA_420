# ISTA420 TSQL Chapter 5 Homework
## Donovan Galloway
### 9 March  2018
1.  What is a table expression? Can you give a technical definition of a table expression? a table expression is a named query expression that represents a valid relational table. in table expression inner and outer queries are merged into 1 query.

3.  In what SQL clause are derived tables (table valued subqueries) located? derived tables are defined in the FROM clause of of an outer query.
4.  Why can you refer to column aliases in an outer query that you defined in an inner table valued subquery? it helps get around the fact that you can't refer to column aliases assigned in the Select clause in query clauses that are logically processed prior to the select clause.
5.  What SQL key word defines a common table expression? CTE's are defined by using the WITH statement.
6.  When using common table expressions, can a subsequent derived table use a table alias declared in a preceding table expression? yes
7.  Can a main query refer to a previously defined common table expression by multiple aliases? 
8.  In SQL, is a view a durable object? yes
9.  In a view, what does WITH CHECK OPTION do? Why is this important? prevents modification through the view that conflicts with the view's filter, it keeps new values from showing in the view you have created.
10.  In a view, what does SCHEMABINDING do? Why is this important? it binds the schema of referenced objects and columns to the schema of the referencing object. it keeps referenced objects and referenced columns from being dropped or altered.
11.  What is a table valued function? reusable table expressions that support input parameters
12.  What does the APPLY operator do? the apply operator operates in two input tables to produces a resulting table with unified result sets.
13.  What are the two forms of the APPLY operator? Give an example of each. cross apply and outer apply
SELECT S.shipperid, E.empid FROM Sales.Shippers AS S CROSS APPLY HR.Employees AS E; SELECT C.custid, A.orderid, A.orderdate FROM Sales.Customers AS C OUTER APPLY (SELECT TOP (3) orderid, empid, orderdate, requiredate FROM Sales.Orders AS O WHERE O.custid = C.custid ORDER BY orderdate DESC, orderid DESC) AS A;
