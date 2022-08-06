#### DEFAULT #### 
/*
CREATE TABLE table_name(
	column_name data_type DEFAULT 'default_value',
    ...
    ...
);
*/
USE sales_db;
DROP TABLE customers;

CREATE TABLE customers(
	customer_id INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email_address VARCHAR(255),
    number_of_complaints INT, 
    UNIQUE KEY(email_address),
    PRIMARY KEY(customer_id)
);

### ADD ####
ALTER TABLE customers
ADD COLUMN gender ENUM("M","F");

#### CHANGE ####
ALTER TABLE customers
CHANGE COLUMN number_of_complaints number_of_complaints INT DEFAULT 0;

INSERT INTO customers(first_name,last_name,gender,email_address)
VALUES('Jonhy','Mack','M','johny.mack@365careers.com');

SELECT * FROM customers;

#### REMOVE CONSTRAINTS #### 
ALTER TABLE customers
ALTER COLUMN number_of_complaints DROP DEFAULT;



#### EXCERCISE ####
DROP TABLE companies;

CREATE TABLE companies(
	company_id VARCHAR(255),
    company_name VARCHAR(255) DEFAULT 'X',
    headquarters_phone_number VARCHAR(255),
    PRIMARY KEY(company_id),
    UNIQUE KEY(company_name)
);

DROP TABLE companies;