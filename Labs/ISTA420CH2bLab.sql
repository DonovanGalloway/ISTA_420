.echo on
.headers on

-- Name: ISTA420_Lab2B
-- Author: Donovan Galloway
-- Date: 28 February 2018

select customerid, companyname, country from customers 
	where country in ('USA','Canada','Mexico');

select orderid, orderdate from orders where orderdate like '1998-04-%';

select productname from products where productname like '%sauce%'; 

select productname from products where productname like '%dried%';

select employeeid, shipcountry, shippeddate from orders where shipcountry like 'Ger%' and shippeddate like '%-12-%';

select orderid, productid, unitprice, quantity, (unitprice * quantity) as total_price, discount, ((unitprice * quatity) 
	- (unitprice * quantity * discount)) as net from order_details where productid = 19 and discount > 0;

select titleofcourtesy || ' ' || firstname || ' ' || lastname ||'
   ...> ' || title || ' 
   ' from employees;
   
select --contactname,
substr(contactname, instr(contactname,	’ ’ )) | |	
’, ’ | |
substr(contactname,	1, instr(contactname, ’ ’))
from customers order by fullname;
