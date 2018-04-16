# ISTA 420 TSQL Chapter 8A Homework
## Donovan Galloway
### 25 March 2017
1.  When using INSERT, is the list of columns necessary? Why or why not? Specifying a list of column names right after the table name is optional. But by doing so, you control the value-column associations 
instead of relying on the order of the columns in the CREATE TABLE statement.

2.  When using INSERT SELECT, do you use a subquery (derived table)? Under what circumstances do you not use a subquery? Yes a subquery is required. The Select phrase will return the derived table, whose values will be inserted into the columns of a new 
table.
4.  What is the operand for the INSERT EXEC statement?
5.  How would you use the INSERT INTO statement?
6.  What are the parameters to the BULK INSERT statement? BULK INSERT statement is used to insert into an existing table data originating from a file. In the statement, you specify the target 
table, the source file and options. You can specify many options including the data file type, the field terminator, the row terminator
and others.
7.  Does IDENTITY guarantee uniqueness? If not, how do you guarantee uniqueness? IDENTITY does not guarantee uniqueness. There might be two tables that have the same identity. Identity might be unique in a table but 
not in the database.
9.  How do you create a SEQUENCE object?To Create a sequence object, we have to use the CREATE SEQUENCE command. The minimum required information is just the sequence name.
10.  How do you use a SEQUENCE object?CREATE SEQUENCE dbo.SeqOrdersIDs AS INT
MINVALUE 1
CYCLE;
11.  How do you alter a SEQUENCE object?
12.  What is the difference between DELETE and TRUNCATE? DELETE will delete the information inside the table but not the table itself. However, TURNCATE will delete all rows from the table.
Unlike DELETE statement, TURNCATE has no filter13. 
14.  What is the difference between DELETE and DROP TABLE?
