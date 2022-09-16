/*** SELECT OPERATORS ***/

##### IN - NOT IN #####
/*
	It allows to retrieve different values of the same COLUMN
    It is faster than using a sequence of ORs
*/
USE employees;

SELECT 
    *
FROM
    employees
WHERE
    first_name IN ('Cathie' , 'Mark', 'Nathan');
    
    
    
##### LIKE - NOT LIKE #####
/*
	It help us to find patterns in a column 
    
    %: Substitute for a 0 or more characters
    _: Substitute for ANY character 
*/

SELECT 
    *
FROM
    employees
WHERE
    first_name LIKE('Mar___');
    
    
SELECT 
    *
FROM
    employees
WHERE
    first_name NOT LIKE ('%a%')
        AND first_name NOT LIKE ('%e%')
        AND first_name NOT LIKE ('%i%')
        AND first_name NOT LIKE ('%o%')
        AND first_name NOT LIKE ('%u%');


##### BETWEEN... AND... - NOT BETWEEN... AND... #####
/*
	It help us designate the interval to which a given value belongs.
    It applies to
    - DATE
    - NUMBERS
    - STRINGS 
*/

SELECT 
    *
FROM
    employees
WHERE
    hire_date BETWEEN '1990-01-01' AND '2000-01-01';
    

##### IS NOT NULL - IS NULL #####
/*
	Used to extract values that are not null 
*/

SELECT
	*
FROM 
	employees
WHERE 
	first_name IS NULL;
    
    
##### SELECT DISTINCT #####
/*
	Used to select all distinct, different data values 
*/

SELECT DISTINCT
	gender
FROM
	employees;