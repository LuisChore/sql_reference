

#### CREATE TABLE ####
/*
CREATE TABLE table_name({column names});

Requirements:
- Add at least one column

CREATE TABLE [IF NOT EXISTS] table_name(
	column_1 data_type constraints,
	column_2 data_type constraints,
    ...
	column_n data_type constraints
);

*/


use sales_db;
CREATE TABLE IF NOT EXISTS sales(
	purchase_number INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    date_of_purchase DATE NOT NULL,
    customer_id INT,
    item_code VARCHAR(10) NOT NULL
);

CREATE TABLE IF NOT EXISTS customers(
	customer_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email_address VARCHAR(255),
    number_of_complaints INT DEFAULT 0
);
#### DROP TABLE #### 
/*
	DROP TABLE table_name;
*/

DROP TABLE sales;
DROP TABLE customers;

#### AUTO_INCREMENT ####
/* 
	Constraint that frees  you  from having  to  insert  all primary key numbers manually through the INSERT
    command at a larger stage. Assigns 1 to the first record of the table and autommatically
    increments by 1 for every subsequent row 

*/

#### Using SQL Objects ####
/* 
Whenever you would like to refer to an SQL object in your queries, you must specify the 
database to which it is applied

SQL objects:
- SQL table
- view 
- stored procedures
- functions 


1) Set a default database
	USE database_name;
    
    
2) Call a table from a certain database (dot operator)
	database_name.sql_object
*/

