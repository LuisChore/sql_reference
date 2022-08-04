##### UNIQUE #####

/*
	Use whenever you would like to specify that you don't want to see duplicate data in a given field 
	It ensures that all valus in a column (or a set of columns) are different 
	Unique Keys are implemented in SQL through a constraint (UNIQUE constraint) 
*/

use sales_db;
DROP TABLE sales;
DROP TABLE customers;

CREATE TABLE customers(
	customer_id INT,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email_address VARCHAR(255),
    number_of_complaints INT,
PRIMARY KEY(customer_id),
UNIQUE KEY(email_address)
);


# add it after the table creation with ALTER TABLE 

DROP TABLE customers;
CREATE TABLE IF NOT EXISTS customers(
	customer_id INT,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email_address VARCHAR(255),
    number_of_complaints INT,
PRIMARY KEY(customer_id)
);

ALTER TABLE customers
ADD UNIQUE KEY(email_address);





##### INDEXES ##### 

/*
UNIQUE keys in MySQL have the same role as indexes, BUT NOT THE REVERSE


Index can see a a MySQL tool that can be created in a column which will be
frequently used to retrieve information from a table 

PROS: 
Index of a table is an organizational unit that helps retrieve data more easily 
Using indexes the records from a table can be accessed more quickly 

CONS:
It takes more time to update a table because indexes must be updated too. 
*/


##### REMOVE AN INDEX #####

/*
ALTER TABLE table_name
DROP INDEX unique_key_field 
*/
ALTER TABLE customers
DROP INDEX email_address;





### EXCERSICE ###

DROP TABLE customers;

CREATE TABLE customers(
	customer_id INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email_address VARCHAR(255),
    number_of_complaints INT DEFAULT 0,
    UNIQUE KEY(email_address),
    PRIMARY KEY(customer_id)
);

ALTER TABLE customers
ADD COLUMN gender ENUM('M','F') AFTER last_name;

INSERT INTO customers(first_name,last_name,gender,email_address) 
VALUES('John','Macky','M','john.mckinley@365careers.com');