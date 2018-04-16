.echo on
.header on

-- name: chapter3Labs
-- Author: Donovan Galloway
-- Date: 7 March 2018

-- 1 
select e.lastname, e.firstname, e.employeeid, o.employeeid, o.orderdate, o.orderid
from orders o join employees e on e.employeeid = o.employeeid;
orderby e.lastname, e.firstname, o.orderdate, o.orderid;

-- 2
select t.territorydescription, t.regionid, r.regionid, r.regiondescription
from region r inner join territories t on r.regionid = t.regionid; 
order by r.regiondescription, t.territorydescription;

-- 3
select s.companyname, s.supplierid, p.supplierid, p.productname, p.productid
from suppliers s join products p on s.supplierid = p.supplierid
order by s.companyname, p.productname;

-- 4
select o.orderdate, o.orderid, od.orderid, od.productid, od.unitprice, od.quantity
from orders o join order_details od on o.orderid = od.orderid
where o.orderdate = '19980505';

-- 5
select o.orderdate, o.orderid, od.orderid, od.unitprice, od.quantity, od.productid, p.productid, p.productname
from orders o 
join order_details od on o.orderid = od.orderid
join products p on p.productid = od.productid
where o.orderdate = '19980505';
order by o.orderdate, o.orderid, od.productid;

-- 6
select o.orderid, o.orderdate, o.customerid, o.shipperid, 
c.companyname as 'Customer Name', s.companyname as 'Shipper Name'
from orders o 
join customers c on c.customerid = o.customerid
join shippers s on s.shipperid = o.shipperid
where o.orderdate like '1998-05-%';

-- 7
select o,orderid, o.customerid, o.employeeid, o.shipcountry, 
e.firstname|| ' ' || e.lastname as 'Employee Name', c.companyname as 'Customer Name'
from order o
join employees e on e.employeeid = o.employeeid
join customers c on c.customerid = o.customerid
where o.shipcountry like 'Fr%';

-- 8
select p.productname, o.shipcountry
from orders o
join order_details od on o.orderid = od.orderid
join products p on od.productid = p.productid 
where o.shipcountry like 'Germany';