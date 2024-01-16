-- SQL Basics - ORDER BY and DISTINCT statements -- Week 2
/* First practice from coursera The Structured Query Language (SQL) */

-- Lab 3: Date Functions and Nulls

/*List the employeeid, firstname + lastname concatenated as ‘employee’, 
and the age of the employee  when they were hired.*/
SELECT employeeid, firstname || ' ' || lastname as "employee",
		age(hiredate, birthdate)
    FROM employees;

/*Run a query to calculate your age as of today.  */
SELECT age(now(), '1997-11-25')

/*List the employeeid, firstname + lastname concatenated as ‘employee’, and hire date for all
 employees hired in 1993  */
SELECT employeeid, firstname || ' ' || lastname as "employee",
		hiredate
		FROM employees
		WHERE date_part('year', hiredate) = '1993;