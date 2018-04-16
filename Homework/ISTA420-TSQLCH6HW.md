# ISTA420 TSQL Chapter 6 Homework
## Donovan Galloway
### 10 March 2018

1.  What does a set operator do? compares complete rows between the results of the two input queries involved.

3.  What are the general requirements of a set operator. the two input queries must produce results with the same number of columns, and corresponding columns must have compatible data types. 
4.  What is a Venn Diagram? a diagram representing mathematical or logical sets pictorially as circles or closed curves within an enclosing rectangle (the universal set), common elements of the sets being represented by the areas of overlap among the circles.
5.  Draw a Venn Diagram of the UNION operator. What does it do? Unifies the results of two input queries.
6.  Draw a Venn Diagram of the UNION ALL operator. What does it do? unifies the two input query results without attempting to remove duplicates from the result
7.  Draw a Venn Diagram of the INTERSECT operator. What does it do? It returns only  the rows that are common to the results of the two input queries.
8.  If SQL Server supported the INTERSECT ALL operator, what would it do? it would return the number of duplicate rows matching the lower of the counts in both input multisets
9.  Draw a Venn Diagram of the EXCEPT operator. What does it do? it operates on the results of two input queries  and returns rows that appear in the first input but not the second.
10.  If SQL Server supported the EXCEPT ALL operator, what would it do? would do the same as the except operator but would also take into account the number of occurrences of each row.
11.  What is the precedence of the set operators. Intersect operator happens before union and except and union and except are evaluated in order of appearance.
