-- SQL Basics - SELECT statements -- Week 2
/* First practice from coursera The Structured Query Language (SQL) */

SELECT firstname || ' ' || lastname as "full name",
        date_part('month', hiredate) as "month number",
        to_char(hiredate, 'month') as "hire month"
FROM employees;
-- practice from video class

-- Lab 1: Coding Your First SELECT Statements
/* List all the products in the Northwinds database showing 
productid, productname, quantity per unit, unitprice, and unitsinstock. */
SELECT productid, productname, quantityperunit,
        unitprice, unitsinstock
FROM products;

/* For all employees at Northwinds, 
list the first name and last name concatenated together with a blank space in-between, 
and the YEAR when they were hired.  */
SELECT firstname || ' ' || lastname as "full name",
        date_part('year', hiredate) as "hire year"
FROM employees;

/* For all products in the Northwinds database, list the productname, unitprice, 
unitsinstock,  and the total value of the inventory of that product as “Total Value”.  
(HINT:  total value = unitsinstock * unitprice.) */
SELECT productname, unitprice, unitsinstock,
        unitprice * unitsinstock as "total value"
FROM products;

/* For all employees at Northwinds, list the first name and last name concatenated together with 
a blank space in-between with a column header “Name”, and the name of the month (spelled out) 
for each employee’s birthday. */
SELECT firstname || ' ' || lastname as "Name",
        to_char(birthday, 'month') as "Birthday month"
FROM employees;

