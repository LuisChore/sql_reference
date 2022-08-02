#### String Data Type #### 
 /**
 An alphanumeric data type. No mathematical operation can be executed with strings,
 there are different string data types, what changes is the storage required to store 
 the string 
	 length: number of symbols
	 size: indicates the memory used by a data type (bytes)
     storage: physical space in the computer drive's memory where the data is being saved or stored (bytes)
     
 CHAR (character)
	storage:  fixed
    maximum size (bytes) : 255
    Example:
		CHAR(5): 5 represent the maximum number of symbols you are allowed to use in writing a value in this format
				 'James': length = 5, size = 5
                 'Bob':   length = 3, size = 5
	 50% faster than VARCHAR
                 
                 
 VARCHAR (variable character)
	storage: variable 
    maximum size (bytes) : 65,535
	Example:
		VARCHAR(5): 5 represent the maximum number of symbols you are allowed to use in writing a value in this format
					 'James': length = 5, size = 5
					 'Bob':   length = 3, size = 3   
                     
  ENUM (enumarate) 
	Used if you know in advance what kind of columns you will be working with. 
    Example:
		ENUM('M','F') : MySQL will show an error if you attempt to insert any value different from "M" or "F" 
 */
 
 
 
 #### Integers #### 
 /**
 A numeric data type, Whole numbers with no decimal point.
 
 Integer data types are 'signed' by default, if you want to use range containing only positive
 (unsigned) values you would have to specify this in your query
     
 TINYINT
	size (bytes): 1
	minimum value signed: -128
    minimum value unsigned: 0
    maximum value signed: 127
    maximum value unsigned: 255
                 
 SMALLINT
	size (bytes): 2
	minimum value signed: -32,768
    minimum value unsigned: 0
    maximum value signed: 32,767
    maximum value unsigned: 65,535   
                     
 MEDIUMINT
	size (bytes): 3
	minimum value signed: -2^23
    minimum value unsigned: 0
    maximum value signed: 2^23 - 1
    maximum value unsigned: 2^24 -1
        
 INT
	size (bytes): 4
	minimum value signed: 2^31
    minimum value unsigned: 0
    maximum value signed: 2^31 - 1
    maximum value unsigned: 2^32 - 1
    
    
 BIGINT
	size (bytes): 8
	minimum value signed: -2^63
    minimum value unsigned: 0
    maximum value signed: 2^63 - 1
    maximum value unsigned: 2^64 - 1
        
        
 */
 
#### FIXED- AND FLOATING-POINT DATA TYPES #### 
 /**
 A numeric data type.
	Precision: Number of digits in a number
            e.g. 10.523 -> precision = 5
    Scale: Number of digits to the right of the decimal point in a number
	        e.g. 10.523 -> scale = 3
            
> Fixed-point data:
	Exact values (it rounds numbers with more digits in the input)
	It shows a warning when the input does not meet the according digits
	DECIMAL is an example to this type
        
	The different between both is the way the value is represented in the memory of the computer.
		 
	 DECIMAIL(precision,scale = 0)
		Fixed-point data
					
	 NUMERIC(precision,scale = 0)
		Fixed-point data
	

> Floating-point data type: 
	Used for approximate values only, it rounds if we assign more decimals
	Aims to balance between range and precision ( => floating)
	It does not show warning
    
	  FLOAT(precision,scale = 0)
		Floating-point data type   
		size (bytes) : 4
		precision: single
		maximum number of digits: 23
		
	  DOUBLE(precision,scale = 0)
		Floating-point data type    
		size (bytes) : 8
		precision: double
		maximum number of digits: 53
    
 */
 
 
#### TIME #### 
 /*
DATE
	format 'YYYY-MM-DD'
		range 1000-01-01    ... 	9999-12-31
    
DATETIME
	format 'YYYY-MM-DD HH:MM:SS[.fraction]'
		microseconds - with six digit precision
        range 1000-01-01    ... 	9999-12-31
		range for time [0  ... 23.59.59.999999]

        
The two above represent the time precisely: (date shown on the calendar and the time in the clock)
    Advantages
		Useful for saving birthdays

TIMESTAMP
	used for a well-defined exact point in time
    range [1970-01-01 ... 2038-01-19 03:14:07 (utc)]
    ADVANTAGES: 
		It saves the moment in time as the number of seconds passed after the 1st of January 1970 00:00:00 UTC
		Storage space and processing speed advantages 
        Math opreations between values 
		It is appropiated if you need to handle time zones 

 */
 
 
#### BLOB (Binary Large OBject) #### 
 /*
 It refers to a file of binary data (0,1)
 Saving Files
 - .doc / .xlsx / .xml / .jpg / .wav 
 */