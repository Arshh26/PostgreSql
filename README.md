# Introdution to PostgreSQL
Introduction to PostgreSQL
PostgreSQL (often called Postgres) is a powerful, open-source, object-relational database system. It’s known for its reliability, flexibility, and standards compliance — and is widely used in web, mobile, and enterprise applications.
I learned to create a Database and Table in PostgreSQL 

Key Features:
-> Open-source and free to use
-> Supports SQL (Structured Query Language) and ACID compliance
-> Strong support for complex queries, joins, and transactions
-> Allows creation of custom functions, data types, and stored procedures
-> Handles large volumes of data efficiently
-> Actively maintained with frequent updates

PostgreSQL is used for:
-> Web & mobile applications
-> Data warehousing and analytics
-> Geospatial databases (with PostGIS extension)
-> Banking and finance apps
-> Government and research systems

What You Can Do with PostgreSQL:
-> Create and manage databases and tables
-> Insert, update, and delete data
-> Perform queries to retrieve specific data
-> Use constraints for data integrity
-> Write joins, views, functions, and indexes

Why Learn PostgreSQL?
-> It’s used by top companies like Apple, Instagram, Reddit, and Spotify.
-> It’s a great choice for both beginners and professionals.
-> It helps you build scalable and secure applications.

1.create_employees_table.sql
-> This SQL script creates an employees table with the following columns:
-> employee_id: Auto-incremented ID (Primary Key)
-> name: Employee's full name (required)
-> position: Job title
-> department: Department name
-> hire_date: Date the employee was hired
-> salary: Salary in numeric format (up to 10 digits, 2 decimal places)

2.Inserting data in table.sql
-> employee_id: Auto-incrementing primary key
-> name: Employee's full name (required)
-> position: Job title (optional)
-> department: Department name
-> hire_date: Date the employee was hired (YYYY-MM-DD)
-> salary: Employee’s salary (numeric with 2 decimal places)

3.Deleting rows, and columns from Table.sql

-> CREATE TABLE USERS

This command creates a table called Users with the following columns:
Column Name	Data Type	Description
Users_id	INT PRIMARY KEY:	A unique number for each user (cannot repeat).
Name	Varchar(100):	The user’s name (cannot be NULL).
Qualification	Varchar(100):	Their qualification (can be empty).
Age	INT:	Age in number.
Income	NUMERIC(10, 2):	Numeric value with 2 decimal points.

-> SELECT * FROM Users;
This command retrieves all rows and all columns from the Users table.

-> INSERT INTO Users ... VALUES (...), (...), ...
This adds 4 new records (rows) to the table with values like ID, name, qualification, age, and income.

-> DELETE FROM Users WHERE Users_id = 5664;
This deletes the row from the Users table where Users_id is 5664.
That would remove Gupta’s record from the table.

 ->ALTER TABLE Users DROP COLUMN Age; 🚨
This command removes the Age column entirely from the Users table.

What It Does:
Deletes the entire column and all the data stored in that column.
The table will no longer have Age at all.
All rows will lose the Age info permanently.

Important Notes:
You cannot undo this unless you have a backup.
After this, trying SELECT * FROM Users; will show only:
Users_id | Name | Qualification | Income

4. Data Types and Constraints
-> CREATE TABLE employee4(...)
This command creates a new table called employee4 with the following structure:

->employee_id	INT PRIMARY KEY: Unique ID for each employee. Cannot be null or duplicated.
->Name	VARCHAR(100) NOT NULL:	Employee's name. Must be filled in (not empty).
->Age	INTEGER CHECK (age>=18): Must be 18 or older (adds a constraint for validation).
->Email	VARCHAR(100) UNIQUE:	Each email must be unique (no duplicates allowed).
->Position	VARCHAR(50):	Employee’s job title.
->Department	VARCHAR(50):	Department where they work.
->Hire_Date	DATE:	Date when the employee was hired.
->Salary	NUMERIC(10,2):	Salary with up to 10 digits total and 2 decimal places.
->reg_date	TIMESTAMP DEFAULT CURRENT_TIMESTAMP:	Automatically stores the current date and time when a new row is inserted.

-> INSERT INTO employee4(...) VALUES (...), (...), (...)
This statement adds 3 employees into the employee4 table
 Note: reg_date is not provided, so it automatically fills in the current system date and time at insertion.

 -> SELECT * FROM employee4;
This fetches and displays all columns and all rows in the employee4 table — including the reg_date timestamp.




