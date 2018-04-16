# ISTA 420 TSQL Chapter 9 Homework
## Donovan Galloway
### 27 March 2018
1.  What is a temporal table? a table that reflects the current version of rows and historical states of the same that allows comparison of current stat with older states
2.  Under what circumstances would you use a temporal table? Temporal tables are in widespread use in certain kinds of businesses. to track changes made to a database, usually found in financial institutions.
3.  What are the semantics of a temporal table? There are seven of them. a primary key, two columns defining datetime2 with any precision, a start column, an end column, a designation of the period columns with the option, the table option SYSTEM VERSIONING, a linked history table.
4.  How do you search a history table? 
5.  How do you modify a history table? you don't, it is modified indirectly through modifying the current state.
6.  How do you delete date from a history table? Why would you want to delete data from a history table? you don't

8.  How do you query all data from both a history file and the current data? 
9.  How do you drop a temporal table? disable system versioning then utilize commands. 
