-- SQL Basics - GROUP BY -- Week 3

-- Lab 4: Using the GROUP BY

/*List the total (unitprice * quantity) as “Total Value” by orderid for the top 5 orders.  
(That is, the five orders with the highest Total Value.)  */
SELECT orderid, SUM(unitprice * quantity) AS "total value"
    FROM orderdetails
    GROUP BY orderid
ORDER BY 2 DESC LIMIT 5;

/* How many products does Northwinds have in inventory?  */
SELECT SUM(unitsinstock)
    FROM products;

/* How many products are out of stock? */
SELECT COUNT(unitsinstock)
    FROM products
    WHERE unitsinstock = 0;

/* From which supplier(s) does Northwinds carry the fewest products? */
SELECT supplierid, SUM(unitsinstock)
    FROM products
    GROUP BY supplierid
    ORDER BY 2;

/* Which Northwinds employees (just show their employeeid) had over 100 orders ? */
SELECT employeeid, COUNT(employeeid) AS "total orders"
    FROM products  
    GROUP BY employeeid
    HAVING COUNt(employeeid)>100
    ORDER BY 2 DESC;