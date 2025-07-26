DROP TABLE IF EXISTS User1;

CREATE TABLE IF NOT EXISTS User1 (
		employee_id INT PRIMARY KEY,
		Name VARCHAR(100) NOT NULL,
		Age INTEGER CHECK (age>=18),
		Email VARCHAR(100) UNIQUE,
		Position VARCHAR(50),
		Department VARCHAR(50),
		Hire_Date DATE,
		Salary NUMERIC(10,2)
);

INSERT INTO User1(employee_id, Name, Age, Email, Position, Department, Hire_Date, Salary)
		VALUES('1001', 'Arshad','21','arshadali@gmail.com', 'Software Engineer', 'CSE','2023-08-08', 65000.00),
		('1002', 'Shameem Banu', '24','nishatanjum1@Yahoo.com', 'Data Analyst', 'Data Science', '2023-05-15', 75000.00),
		('1004', 'Nishat Anjum','28','shameembanu2@gmsil.com', 'DevOps Engineer', 'CSE', '2023-07-10', 85000.00);

SELECT * FROM User1;

Update User1
SET age = 21
WHERE Name = 'Shameem Banu';

SELECT * FROM User1 order by employee_id ASC;

UPDATE User1
SET position='Software Engineer'
WHERE salary=85000;

UPDATE User1
SET age = 22, department = 'Data Analyst'
WHERE name = 'Shameem Banu'

UPDATE User1
SET salary=salary+10000
WHERE email LIKE '%@gmail.com';