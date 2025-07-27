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

# Lesson 01: create_employees_table.sql
-> This SQL script creates an employees table with the following columns:
-> employee_id: Auto-incremented ID (Primary Key)
-> name: Employee's full name (required)
-> position: Job title
-> department: Department name
-> hire_date: Date the employee was hired
-> salary: Salary in numeric format (up to 10 digits, 2 decimal places)

# Lesson 02: Inserting data in table.sql
-> employee_id: Auto-incrementing primary key
-> name: Employee's full name (required)
-> position: Job title (optional)
-> department: Department name
-> hire_date: Date the employee was hired (YYYY-MM-DD)
-> salary: Employee’s salary (numeric with 2 decimal places)

# Lesson 03: Deleting rows, and columns from Table.sql

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

# Lesson 04: Data Types and Constraints
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

# Lesson 05: Update Data in SQL.sql
 1. DROP TABLE IF EXISTS User1;
This line deletes the table named User1 if it already exists, to avoid duplication or errors when creating it again.

2. CREATE TABLE IF NOT EXISTS User1 (...)
This creates a new table named User1 with the following columns and constraints:

Column	                              Data Type	                                 Constraints
employee_id	                            INT	                            PRIMARY KEY → Must be unique
Name	                               VARCHAR(100)                      	NOT NULL → Cannot be empty
Age	                                  INTEGER                          	Must be >= 18 (CHECK constraint)
Email	                               VARCHAR(100)                   	    UNIQUE → No duplicate emails
Position	                           VARCHAR(50)	                                 Optional
Department	                         VARCHAR(50)	                                 Optional
Hire_Date	                              DATE                              	 Stores the hire date
Salary	                             NUMERIC(10,2)	                         Allows decimal salary

3. INSERT INTO User1 (...) VALUES (...)
This adds 3 employees into the table with full details:
Arshad, 21, Software Engineer, CSE
Shameem Banu, 24, Data Analyst, Data Science
Nishat Anjum, 28, DevOps Engineer, CSE

4. SELECT * FROM User1;
This shows all records from the User1 table.

5. UPDATE User1 SET age = 21 WHERE Name = 'Shameem Banu';
This changes Shameem Banu's age to 21.

6. SELECT * FROM User1 ORDER BY employee_id ASC;
Displays all users sorted by employee_id in ascending order.

7. UPDATE User1 SET position = 'Software Engineer' WHERE salary = 85000;
This updates the position of any employee whose salary is 85,000 to “Software Engineer”.

8. UPDATE User1 SET age = 22, department = 'Data Analyst' WHERE name = 'Shameem Banu';
Updates Shameem Banu’s:
Age → 22
Department → Data Analyst

9. UPDATE User1 SET salary = salary + 10000 WHERE email LIKE '%@gmail.com';
Increases salary by ₹10,000 for employees who have a Gmail email.

Summary of What I Practiced:
Creating tables with constraints (PRIMARY KEY, CHECK, UNIQUE)
Inserting multiple records
Updating records conditionally
Using LIKE for pattern matching
Sorting with ORDER BY

# Lesson 08: Alter Column and Datatype in SQL   
 SQL:   ALTER TABLE User3
        ALTER COLUMN age TYPE smallint;

What it does:
Changes the data type of the age column in the User3 table.
From its current type (probably integer) to smallint.

Why?
smallint takes less storage (2 bytes) than integer (4 bytes).
Use smallint when you know values will be small (e.g., age between 18–120).

 SQL:    ALTER TABLE User3
         ALTER COLUMN department SET NOT NULL;

What it does:
Modifies the department column to not allow NULL values anymore.

Why?
This ensures every row has a value for department, improving data completeness.

SQL:    ALTER TABLE User3
        ADD CONSTRAINT age CHECK (age >= 18);

What it does:
Adds a constraint named age that ensures all age values are 18 or older.

Why?
Useful for enforcing business rules, like allowing only adult users.
Note: The constraint name age is allowed, but it’s better to give a descriptive name like check_age_min_18 to avoid confusion with the column name.

SQL:    ALTER TABLE User2
        RENAME TO Customer1;

What it does:
Renames the entire table User2 to Customer1.

Why?
Often done to better reflect the data meaning or for standardization.

Summary:
How to change column types
How to enforce data integrity with constraints
How to make schema changes like renaming tables













