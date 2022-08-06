#### NOT NULL ####
/*
PRIMARY KEYS by default use this constraint 
it is a mandatory value when you insert records 

MySQL will show an error if we try to insert a NULL VALUE 
*/


DROP TABLE IF EXISTS companies;

CREATE TABLE companies(
	company_id INT NOT NULL AUTO_INCREMENT,
    headquarters_phone_number VARCHAR(255) NOT NULL,
    company_name VARCHAR(255),
    PRIMARY KEY(company_id) 
);


#### MODIFY ####

ALTER TABLE companies
MODIFY company_name VARCHAR(255) NULL;

#### CHANGE ####

ALTER TABLE companies
CHANGE company_name company_name VARCHAR(255) NOT NULL;

#### NOTE ####

/**
The main difference between MODIFY and CHANGE is that when using CHANGE you can also rename the column you are referring to. 
Other than that both statements serve the same purpose and can be used interchangeably.

ALTER on the other hand is a keyword used to tell MySQL a change on an object will take effect. It is followed by the above 
mentioned constructions or something else like ADD.
**/

#### EXCERCISE ####

ALTER TABLE companies
CHANGE COLUMN headquarters_phone_number headquarters_phone_number VARCHAR(255) NULL;

ALTER TABLE companies
MODIFY headquarters_phone_number VARCHAR(255) NOT NULL;




#### NULL VALUE VS 0 VS NONE ####
/*
0 and NONE are values
NULL VALUE representes a MISSING VALUE 
*/

