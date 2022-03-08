# SQL Constraints 
/*Specific rules or limits that we define in our tables.*/


##### PRIMARY KEY #####
/*
Use of AUTO_INCREMENT is only used for
-PRIMARY KEY
-UNIQUE KEY
-INDEX

To include more than one columns in the primary key
	PRIMARY KEY(column1,column2,...) 
*/

USE sales_db;

DROP TABLE sales;
CREATE TABLE IF NOT EXISTS sales(
	purchase_number INT AUTO_INCREMENT,
    date_of_purchase DATE,
    customer_id INT,
    item_code VARCHAR(10),
    PRIMARY KEY(purchase_number)
);

DROP TABLE customers;
CREATE TABLE IF NOT EXISTS customers(
	customer_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email_address VARCHAR(255),
	number_of_complaints INT DEFAULT 0
);

DROP TABLE items;
CREATE TABLE IF NOT EXISTS items(
	item_code VARCHAR(255) NOT NULL,
    item VARCHAR(255) NOT NULL,
    unit_price NUMERIC(10,2) NOT NULL,
    company_id VARCHAR(255),
    PRIMARY KEY(item_code)
);

DROP TABLE companies;
CREATE TABLE IF NOT EXISTS companies(
	company_id VARCHAR(255) NOT NULL,
    company_name VARCHAR(255) NOT NULL,
    headquarters_phone_number INT,
    PRIMARY KEY(company_id)
);


##### FOREIGN KEY #####
/*
It points to a column for another table and, thus, links the two tables
The  foreing key mantains the referentian integrity within the database

PARENT TABLE - REFERENCED TABLE
- A set of columns represent its PRIMARY KEY

CHILD TABLE - REFERENCING TABLE
- A set of columns represent a FOREING KEY (a relation with the PARENT TABLE) 


OPTIONS:
	ON DELETE CASCADE:
		if a specific value from the parent table's primary key has been deleted
        all the records from the child table referring to this  values  will  be
        removed as well


*/

/*FIRST OPTION (don't delete the table)*/
DROP TABLE sales;
CREATE TABLE IF NOT EXISTS sales(
	purchase_number INT AUTO_INCREMENT,
    date_of_purchase DATE,
    customer_id INT,
    item_code VARCHAR(10),
    PRIMARY KEY(purchase_number)
);

DROP TABLE customers;
CREATE TABLE IF NOT EXISTS customers(
	customer_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email_address VARCHAR(255),
	number_of_complaints INT DEFAULT 0
);

ALTER TABLE sales
ADD FOREIGN KEY(customer_id) REFERENCES customers(customer_id)
ON DELETE CASCADE;





/*SECOND OPTION (Delete the table)*/
DROP TABLE sales;

DROP TABLE customers;
CREATE TABLE IF NOT EXISTS customers(
	customer_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email_address VARCHAR(255),
	number_of_complaints INT DEFAULT 0
);

CREATE TABLE IF NOT EXISTS sales(
	purchase_number INT AUTO_INCREMENT,
    date_of_purchase DATE,
    customer_id INT,
    item_code VARCHAR(10),
    PRIMARY KEY(purchase_number),
    FOREIGN KEY(customer_id) REFERENCES customers(customer_id)
    ON DELETE CASCADE
);



/** DROP A FOREING KEY**/
# a name of the foreing key is created automatically

ALTER TABLE sales
DROP FOREIGN KEY sales_ibfk_1;