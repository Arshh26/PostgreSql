DROP TABLE IF EXISTS employee2;

CREATE TABLE employee2(
	employee_id	INT	PRIMARY KEY,
	first_name VARCHAR(20) NOT NULL,
	last_name VARCHAR(20) NOT NULL,
	email VARCHAR(50),	
	department VARCHAR(20),	
	salary NUMERIC(10,2),	
	joining_date DATE,	
	age INT	
);

SELECT * FROM employee2;


COPY -- Command to import data from a CSV file into the employee2 table.
employee2(employee_id, first_name, last_name, email, department, salary, joining_date, age)
FROM 'D:\Course Updates\30 Day Series\SQL\CSV\employee_data.csv' -- Path to the CSV file.
DELIMITER',' -- The character that separates values in the CSV file.
CSV HEADER; -- Indicates that the first row in the CSV file contains column headers.

