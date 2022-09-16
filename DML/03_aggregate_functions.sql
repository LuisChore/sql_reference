##### Aggregate Functions #####
/*
They are applied on MULTIPLE ROWS  of a SINGLE COLUMN of a table and
return a SINGLE VALUE.

They ignore NULL values unless told not to.
*/


### COUNT() ###
/*
	It counts the number of non-null records in a field
    It is combined usually with DISTINCT
    
    SELECT 
		COUNT(column_name) 
    FROM 
		table_name
*/
SELECT 
	COUNT(emp_no)
FROM
	employees;
    
SELECT 
    COUNT(DISTINCT first_name)
FROM
    employees;


#	How many annual contracts with a value higher than or equal to $100,000 
# 	have been registered in the salaries table?

SELECT 
	COUNT(emp_no) 
FROM
	salaries
WHERE
	salary >= 100000;
    
# 	How many managers do we have in the “employees” database? 

SELECT
	COUNT(*)
FROM 
	dept_manager;
    
### SUM() ###
/*
	It sum all the non-null values in a column 
*/


### MIN() ###

### MAX() ###

### AVG() ###
/*
	It calculates the average of all non-null values belonging to a 
    certain column of a table 
*/



##### ORDER BY #####
/*
	* ASC
    * DESC 
*/ 

SELECT 
    *
FROM
    employees
ORDER BY first_name DESC;

# Order by two or more fields 

SELECT 
    *
FROM
    employees
ORDER BY first_name DESC , last_name ASC;



##### GROUP BY #####
/**
	When working in SQL results can be grouped according to a specific field or fields 
    
    SELECT column_name(s)
    FROM table_name 
    WHERE conditions
    GROUP BY column_name(s)
    ORDER BY column_name(s) 
    
    Using GROUP BY only distinct values will be selected.
    
    In most cases, when you need an AGGREGATE FUNCTION, you must add a 
    GROUP BY clause in your query too, specially when we need a SINGLE TOTAL
    VALUE from a single field 
    
    Example of use:		
		column_name || number_of_times the value is repeated 
        
	Rule of thumb 
		Always include the field you have grouped your results by in the 
        select statement 
*/

SELECT 
    first_name, COUNT(first_name)
FROM
    employees
GROUP BY first_name;