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