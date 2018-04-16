# ISTA 420 Chapter 4 Homework
## Donovan Galloway
### 6 March 2018

1.  In your own words, what is a subquery? a query within a query.

3.  In your own words, what is a self contained subquery? a query that is independent of the tables from the outer query.
4.  In your own words, what is a correlated subquery? subqueries that pulls information from the outer queries.
5.  Give an example of a subquery that returns a single value. When would you use this kind of subquery? 
SELECT orderid FROM Sales.Orders WHERE empid = (SELECT E.empid FROM HR.Employees AS E WHERE E.lastname LIKE N'C%'); used to display one set of information.
7. Give an example of a subquery that returns multiple values. When would you use this kind of subquery? SELECT custid, orderid, orderdate, empid FROM Sales.Orders WHERE custid IN (SELECT C.custid FROM Sales.Customers AS C WHERE C.country = N'USA'); 
8. Give an example of a subquery that returns table values. When would you use this kind of subquery? 
9.  What does the exists predicate do? Give an example.
10.  What happens if we use the not operator before a predicate? Give an example.
11.  When you use exists or not exists with respect to a row in a database, does it return two or three values? Explain your answer.
12.  How would you a subquery to calculate aggregates? For example, you want to calculate yearly sales of a product, and you also want to keep a running sum of total sales. Explain how you would use a subquery to do this.
