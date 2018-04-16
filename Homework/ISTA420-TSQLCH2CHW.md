# ISTA420 T-SQL CH2C HW
## Donovan Galloway
### 28 February 2018

1. What is a data type? Why do we have data types? an attribute that specifies the type of data that an object can hold; They help organize information into the columns and rows when creating tables.

1. What is a collation? Name four elements of a collation. refers to a set of rules that tells data how to be stored. Elements: Language Support, sort order, case sensitivity, and accent sensitivity.

1. How would you strip whitespace from a string? For example, suppose you had “ Dave ” but wanted only “Dave”. Use R Trim and L Trim functions.

1. Suppose you wanted to make a list of every college and university that was called an Institute from the college table. Write the query.

1. How would you find out the index of the first space in a string? For example, the index of the first space in “Barack Hussein Obama” would be 7.

1. How would you select just the first name in a list of the presidents. First names can be an arbitrary length, from “Cal” to “Benjamin.” Use the substring function. 

1. Payments are due exactly 30 days from the date of the last function. Write a select query that calculates the date of the next payment. Pretend we want to update a column in a database that contains the date of the next payment. We will do this when we write UPDATE queries. DateAdd (day, 30, "lastpayment");

1. Suppose your son or daughter wants to run a query every day that tells them the number of days until their 16th birthday. Write a select query that does this. select datediff(day, '20180301', '20180404');

1. What function returns the current date? This is very useful in a table that maintains a log of events, such as user logins. select sysdatetime 
