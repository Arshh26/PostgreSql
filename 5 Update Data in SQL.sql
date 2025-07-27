CREATE TABLE IF NOT EXISTS User2 (
		employee_id INT PRIMARY KEY,
		Name VARCHAR(100) NOT NULL,
		Age INTEGER CHECK (age>=18),
		Email VARCHAR(100) UNIQUE,
		Position VARCHAR(50),
		Department VARCHAR(50),
		Hire_Date DATE,
		Salary NUMERIC(10,2)
);

INSERT INTO User2(employee_id, Name, Age, Email, Position, Department, Hire_Date, Salary)
		VALUES('1005', 'Arshad','21','arshadali1@gmail.com', 'Software Engineer', 'CSE','2023-08-08', 65000.00),
		('1006', 'Shameem Banu', '24','nishatanjum2@Yahoo.com', 'Data Analyst', 'Data Science', '2023-05-15', 75000.00),
		('1007', 'Nishat Anjum','28','shameembanu3@gmsil.com', 'DevOps Engineer', 'CSE', '2023-07-10', 85000.00);

SELECT * FROM User2;

Update User2
SET age = 21
WHERE Name = 'Shameem Banu';

SELECT * FROM User2 order by employee_id ASC;

UPDATE User2
SET position='Software Engineer'
WHERE salary=85000;

UPDATE User2
SET age = 22, department = 'Data Analyst'
WHERE name = 'Shameem Banu';

UPDATE User2
SET salary=salary+10000
WHERE email LIKE '%@gmail.com';