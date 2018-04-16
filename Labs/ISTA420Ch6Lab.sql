.echo on
.headers on

--Name: Chapter06Lab.sql
--Author: Donovan Galloway
--Date: 21 March 2018

--1. Create a list of every country where we have either a customer or supplier.
select distinct country from customers
union
select distinct country from suppliers;

--2. Create a list of every city and country where we have either customer or supplier.
select city, country from customers
union 
select city, country from suppliers
order by country, city;

--3. Create a list of every country where we have both a customer and a supplier.
select country from customers
intersect 
select country from suppliers
order by country;

--4. Create a list of every city and country where we have both customer or supplier.
select city, country from customers
intersect 
select city, country from suppliers
order by country, city;

--5. Create a list of every country where we have customers but not suppliers.
select country from customers
except 
select country from suppliers
order by country;

--6. Create a list of every country where we have suppliers but not customers.
select country from suppliers
except 
select country from customers
order by country;