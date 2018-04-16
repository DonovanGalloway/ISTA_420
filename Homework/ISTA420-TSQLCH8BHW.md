# ISTA 420 TSQL Chapter 8B Homework
## Donovan Galloway
### 24 March 2017
1.  The sales tax rate for a state just changed. How would you update the state sales tax table to reflect the changes? Assume that this table has an ID column, an RATE column, and a STATE column.

2.  The Revenue Division has requested that you provide a report on what the actual sales taxes would have been for all orders in the past year, assuming the retroactivity of the new sales tax rate. How would you calculate this?
3.  Explain how the proprietary assignment update command works.
4.  What is one very important purpose of the MERGE SQL statement? What is ETL (not in book)?
5.  What are the semantics of MERGE?
6.  Write a typical INSERT OUTPUT statement. INSERT INTO dbo.T1(datacol) OUTPUT inserted.keycol, inserted datacol SELECT lastname FROM HR.Employees WHERE country = N'USA';
7.  Write a typical UPDATE OUTPUT statement. UPDATE dbo.OrderDetails SET discount += 0.05 OUTPUT inserted.orderid, inserted.productid, deleted.discount AS olddiscount, inserted.discount AS newdiscount WHERE productid = 51;
8.  Write a typical DELETE OUTPUT statement.DELETE FROM dbo.Orders OUTPUT deleted.orderid, deleted.orderdate, deleted.empid, deleted.custid WHERE orderdate < '20160101';
9.  Write a typical MERGE OUTPUT statement. MERGE INTO dbo.Customers AS TGT USING dbo.CustomerStage AS SRC ON TGT.custid = SRC.custid WHEN MATCHED THEN UPDATE SET TGT.companyname = SRC.companyname, TGT.phone = SRC.phone, TGT.address = SRC.address WHEN NOT MATCHED THEN INSERT (custid, companyname, phone, address) VALUES (SRC.custid, SRC.companyname, SRC.phone, SRC.address) OUTPUT $action AS theaction, inserted.custid, deleted.companyname AS oldcompanyname, inserted.companyname AS newcompanyname, deleted.phone AS oldphone, inserted.phone AS newphone, deleted.address AS oldaddress, inserted.address AS newaddress,
10.  What is nested DML? a feature of TSQL used to directly insert into a final target table only the subset of rows you need from the full set of modified rows.

