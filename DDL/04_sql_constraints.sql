/**SQL Constraints **/
/*Specific rules or limits that we define in our tables.*/


##### PRIMARY KEY #####
/*
Use of AUTO_INCREMENT is only used for
-PRIMARY KEY
-UNIQUE KEY
-INDEX

To include one or more columns in the primary key
	PRIMARY KEY(column1,column2,...) 
*/

USE sales_db;

CREATE TABLE IF NOT EXISTS sales(
	purchase_number INT NOT NULL AUTO_INCREMENT,
    date_of_purchase DATE NOT NULL,
    customer_id INT,
    item_code VARCHAR(10),
    PRIMARY KEY(purchase_number)
);

CREATE TABLE IF NOT EXISTS customers(
	customer_id INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email_address VARCHAR(255),
    number_of_complaints INT DEFAULT 0,
    PRIMARY KEY(customer_id) 
);

CREATE TABLE IF NOT EXISTS items(
	item_code VARCHAR(255) NOT NULL PRIMARY KEY,
    item VARCHAR(255) NOT NULL,
    unit_price NUMERIC(10,2) NOT NULL,
    company_id VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS companies(
	company_id VARCHAR(255) NOT NULL,
    company_name VARCHAR(255) NOT NULL,
    headquarters_phone_number INT(12),
    PRIMARY KEY(company_id)
);


##### FOREIGN KEY #####
/*
It points to a column for another table and, thus, links the two tables
The  foreing key constraint mantains the referential integrity within the database

PARENT TABLE - REFERENCED TABLE
	A set of columns that represent its PRIMARY KEY

CHILD TABLE - REFERENCING TABLE
	A set of columns representing a FOREING KEY (a relation with the PARENT TABLE,
    this set of columns refers to the columns in the PARENT TABLE) 

SINTAX IN CHILD TABLE
	FOREIGN KEY(column_name,...) REFERENCES parent_table(column_name,...) 

OPTIONS:
	ON DELETE CASCADE:
		if a specific value from the parent table's primary key has been deleted
        all the records from the child table referring to this  values  will  be
        removed as well
*/

/*FIRST OPTION (don't delete the table)*/

ALTER TABLE sales
ADD FOREIGN KEY(customer_id) REFERENCES customers(customer_id)
ON DELETE CASCADE;


/*SECOND OPTION (Delete the table)*/
DROP TABLE sales;

CREATE TABLE IF NOT EXISTS sales(
	purchase_number INT AUTO_INCREMENT,
    date_of_purchase DATE,
    customer_id INT,
    item_code VARCHAR(10),
    PRIMARY KEY(purchase_number),
    FOREIGN KEY(customer_id) REFERENCES customers(customer_id)
    ON DELETE CASCADE
);



##### DROP A FOREING KEY ##### 
# a name of the foreing key is created automatically

ALTER TABLE sales
DROP FOREIGN KEY sales_ibfk_1;
