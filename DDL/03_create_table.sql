
/*
CREATE TABLE table_name({columns});

Requirements:
- Add at least one column


CREATE TABLE [IF NOT EXISTS] table_name(
	column_1 data_type constraints,
	column_2 data_type constraints,
    ...
	column_n data_type constraints
);

*/

/*
	DROP TABLE table_name;
*/

/* CONSTRAINT 

AUTO_INCREMENT
	Frees  you  from having  to  insert  all primary key numbers manually through the INSERT
    command at a larger stage. Assigns 1 to the first record of the table and autommatically
    increments by 1 for every subsequent row 

*/


/* SQL Objects
Whenever you would like to refer to an SQL object in your queries, you must specify the 
database to which it is applied

SQL objects:
- SQL table
- view 
- stored procedures
- functions 


1) Set a default database
	USE database_name;
    
    
2) Call a table from a certain database
	database_name . sql_object
*/

USE sales_db;

CREATE TABLE IF NOT EXISTS sales(
	purchase_number INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	date_of_purchase DATE NOT NULL,
    customer_id INT,
    item_code VARCHAR(10) NOT NULL
);

CREATE TABLE IF NOT EXISTS customers(
	customer_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email_adress VARCHAR(255),
    number_of_compaints INT DEFAULT 0
);

ALTER TABLE customers
RENAME COLUMN email_adress TO email_address;

ALTER TABLE customers
RENAME COLUMN number_of_compaints TO number_of_complaints;
