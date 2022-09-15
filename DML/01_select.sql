/**** SELECT ****/

/*
	Statement that allows you to extract a fraction of the entire 
    data set

SELECT column1, column2, ... 
FROM table_name;

*/

USE employees;

SELECT 
    *
FROM
    employees;
    
    
##### WHERE #####
/*
	It allows us to set a condition upon which we will specify 
    what part of the data we want from the database 
    
    Operators used with WHERE
		* AND
		* OR
		* IN 
		* NOT IN 
		* LIKE
		* NOT LIKE 
		* BETWEEN... AND...
		* EXISTS
		* NOT EXISTS
		* IS NULL
		* IS NOT NULL
		* comparistion operators  
*/

SELECT 
    *
FROM
    employees
WHERE
    last_name = 'Denis'
        AND (gender = 'M' OR gender = 'F');
