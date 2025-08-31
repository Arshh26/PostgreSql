--Types of Operators--


-- Arithmetic Operators
-- Comparison Operators
-- Set Operators
-- Logical Operators
-- String Operators
-- Bitwise Operators
-- Other Operators

select *
  from employee;
-- 1) Retrieve the first_name, salary, and calculate a 10% bonus on the salary.
select first_name,
       salary,
       ( salary * 0.10 ) as bonus
  from employee;

--2) Calculate the Annual Salary and Salary Increment by 5% - show the monthly new salary as well
select first_name,
       salary,
       ( salary * 12 ) as annual_salary,
       ( salary * 0.05 ) as increment_salary,
       ( salary + salary * 0.05 ) as new_salary
  from employee;

-- Comparison Operator
-- = 					Equal to
-- != or <>				Not Equal to 
-- >					Greater than
-- <					Less than
-- >=					Greater than or equal
-- <=					Less than or equal

select *
  from employee;

select *
  from employee
 where age = 30;

-- Mathches All except 30

select first_name,
       age
  from employee
 where age <> 30;

-- Salary Greater than 50000

select first_name,
       salary
  from employee
 where salary >= 50000;


select *
  from employee;

-- Logical Operator

-- AND					All Conditions must be True
-- OR					At least one Condition Must be True
-- NOT					Negates the Condition

select *
  from employee;

--USING AND OPERATOR

select *
  from employee
 where age >= 40
   and salary >= 50000;

-- USING OR OPERATOR

select *
  from employee
 where age >= 40
    or salary >= 50000;

-- USING NOT OPERATOR 

select *
  from employee
 where not ( department = 'IT' );

 -- Between Like and in Opertors in SQL

-- 1) Retrive employee whose salary is between 40000 and 60000, - Use LIKE Operator 

select first_name,
       last_name,
       salary
  from employee
 where salary between 40000 and 60000;

select *
  from employee;

-- 2) Find employees whose email addresses are ends with gmail.com -Use the LIKE Operator 
select *
  from employee;

select first_name,
       last_name,
       email
  from employee
 where email like '%@gmail.com';

-- 3) Retrieve employee who belong to either the a'Finance' or 'Marketing' department- use IN Operator  
select *
  from employee;

select first_name,
       last_name,
       department
  from employee
 where department in ( 'Finance',
                       'Marketing' );
                       

-- Others Operators in sql

-- 1) IS NULL Operator
-- 2) ORDER BY Operator
-- 3) LIMIT Operator
-- 4) DISTINCT Operator

-- Find employees where the email column is NULL ( if Applicable).

SELECT
	FIRST_NAME,
	LAST_NAME,
	EMAIL
FROM
	EMPLOYEE
WHERE
	EMAIL IS NULL;

SELECT * FROM EMPLOYEE;

-- List employess sorted by salry in DESCENDING order. 
SELECT
	FIRST_NAME,
	LAST_NAME,
	SALARY
FROM
	EMPLOYEE
ORDER BY
	SALARY ASC;

SELECT * FROM EMPLOYEE;

-- Retrieve the top 5 highest-paid employees.
SELECT
	FIRST_NAME,
	LAST_NAME,
	SALARY
FROM
	EMPLOYEE
ORDER BY
	SALARY DESC
LIMIT 5;

SELECT * FROM EMPLOYEE;

-- Retrieve a list of unique departments

SELECT COUNT (DISTINCT DEPARTMENT)
FROM EMPLOYEE;

SELECT * FROM EMPLOYEE;