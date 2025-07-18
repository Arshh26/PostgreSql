CREATE TABLE employee4(
		employee_id INT PRIMARY KEY,
		Name VARCHAR(100) NOT NULL,
		Age INTEGER CHECK (age>=18),
		Email VARCHAR(100) UNIQUE,
		Position VARCHAR(50),
		Department VARCHAR(50),
		Hire_Date DATE,
		Salary NUMERIC(10,2),
		reg_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO employee4(employee_id, Name, Age, Email, Position, Department, Hire_Date, Salary)
		VALUES(101, 'Arshad',21,'arshadali99936@gmail.com', 'Software Engineer', 'CSE','2023-08-08', 65000.00),
		(102, 'Shameem Banu', 24,'nishatanjum@gmail.com', 'Data Analyst', 'Data Science', '2023-05-15', 75000.00),
		(104, 'Nishat Anjum',28,'shameembanu@gmsil.com', 'DevOps Engineer', 'CSE', '2023-07-10', 85000.00);

SELECT * FROM employee4
		

