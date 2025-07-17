SELECT * FROM employees;

INSERT INTO employees(name, position, department, hire_date, salary)
		VALUES('Arshad', 'Software Engineer', 'CSE','2023-08-08', 65000.00),
		('Shameem Banu', 'Data Analyst', 'Data Science', '2023-05-15', 75000.00),
		('Nishat Anjum', 'DevOps Engineer', 'CSE', '2023-07-10', 85000.00);

SELECT COUNT(*) FROM employees;

DELETE FROM employees
WHERE name IN ('Arshad', 'Shameem Banu', 'Nishat Anjum');

TRUNCATE TABLE employees;

TRUNCATE TABLE employees RESTART IDENTITY;

