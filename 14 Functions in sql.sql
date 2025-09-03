/* Functions in PSQL 

Aggregate functions perform calculations on a set of values and return a single value. They are very useful for data analysis and summarization.

 COUNT() → Returns the number of rows.
 SUM() → Calculates the total sum of values.
 AVG() → Finds the average value.
 MIN() → Returns the smallest value.
 MAX() → Returns the largest value.

These functions help in generating insights from large datasets and are widely used in reporting and analytics.
*/

drop table if exists product;

create table product (
   product_id    serial primary key,
   product_name  varchar(50),
   category      varchar(50),
   price         numeric(10,2),
   quantity      int,
   added_date    date,
   discount_rate numeric(2,2)
);

insert into product (
   product_name,
   category,
   price,
   quantity,
   added_date,
   discount_rate
) values ( 'LAPTOP',
           'ELECTRONICS',
           75000.50,
           10,
           '2024-01-15',
           10.00 ),( 'SMARTPHONE',
                     'ELECTRONICS',
                     45000.99,
                     25,
                     '2024-02-20',
                     5.00 ),( 'HEADPHONE',
                              'ACCESSORIES',
                              1500.75,
                              50,
                              '2024-03-05',
                              15.00 ),( 'OFFICE_CHAIR',
                                        'FURNITURE',
                                        8000.00,
                                        15,
                                        '2023-12-01',
                                        20.00 ),( 'DESK',
                                                  'FURNITURE',
                                                  75000.50,
                                                  10,
                                                  '2024-02-20',
                                                  5.00 ),( 'MONITOR',
                                                           'ELECTRONICS',
                                                           1500.75,
                                                           50,
                                                           '2024-03-05',
                                                           15.00 ),( 'PRINTER',
                                                                     'ELECTRONICS',
                                                                     17500.75,
                                                                     50,
                                                                     '2024-03-05',
                                                                     15.00 ),( 'MOUSE',
                                                                               'ELECTRONICS',
                                                                               500.23,
                                                                               50,
                                                                               '2024-03-05',
                                                                               15.00 ),( 'KEYBOARDE',
                                                                                         'ELECTRONICS',
                                                                                         150.55,
                                                                                         50,
                                                                                         '2024-03-05',
                                                                                         15.00 ),( 'TABLET',
                                                                                                   'ELECTRONICS',
                                                                                                   30200.75,
                                                                                                   50,
                                                                                                   '2024-03-05',
                                                                                                   15.00 );

select *
  from product;

-- TOTAL QUANTITY AVAILABLE OF ALL PRODUCTS

select sum(quantity) as total_quantity
  from product;

select sum(quantity) as quantity_electronis
  from product
 where category = 'ELECTRONICS'
   and price > 20000;

-- TOTAL NUMBER OF PRODUCTS

select count(*) as total_products
  from product;

-- COUNT WITH CONDITION 

select count(*) as total_products
  from product
 where product_name like '%PHONE';

-- AVERAGE PRICE OF THE PRODUCT

select avg(price) as average_price
  from product;

-- AVERAGE PRICE OF THE PRODUCT WITH CONDITION

select avg(price) as average_price
  from product
 where category = 'ACCESSORIES'
    or added_date > '2024-01-15';

-- MAXIMUM AND MINIMUM PRICE 

select max(price) as max_price,
       min(price) as min_price
  from product;

/*String Function in SQL

-- 1) LENGTH(string) / CHAR_LENGTH(string) → Returns the length of the string
-- 2) UPPER(string) / UCASE(string) → Converts text to uppercase.
-- 3) LOWER(string) / LCASE(string) → Converts text to lowercase.
-- 4) SUBSTRING(string FROM start FOR length) → Extract part of string.
-- 5) CONCAT(string1, string2, ...) → Concatenates strings.
-- 6) REPLACE(string, from, to) → Replace substring.
-- 7) The TRIM() function is used to remove unwanted characters (by default spaces) from a string.*/

select *
  from product;

-- GET ALL THE CATEGORIES IN UPPERCASE

select upper(category) as category_capital
  from product;

-- GET ALL THE CATEGORIES IN LOWERCASE

select lower(category) as category_capital
  from product;

--JOIN PRODUCT AND CATEGORY TEXT WITH HYPHEN

select concat(
   product_name,
   '-',
   category
) as product_details
  from product;

-- EXTRACT THE FIRST 5 CHARECTORS FROM PRODUCT_NAME

select substring(
   product_name,
   1,
   5
) as short_name
  from product;

-- COUNT LENGTH 

select product_name,
       length(product_name) as count_of_char
  from product;

-- REMOVE LEADING AND TRAILING SPACES FROM STRING

select length(trim('  MONITOR    ')) as trimmed_text;
select length('  MONITOR    ') as trimmed_text;

-- REPLACE WORD "PHONE" WITH "DEVICE" IN PRODUCT NAMES

select replace(
   product_name,
   'phone',
   'device'
) as updated
  from product;

select *
  from product;

-- GET THE FIRST 3 CHARECTERS FROM CATEGORY 

select left(
   category,
   3
) as category_captital
  from product;

select right(
   category,
   3
) as category_captital
  from product;

select *
  from product;

  /*Date And Time Functions in Psql

-- 1) NOW () -> Returns Current Date and Time
-- 2) CURRENT_DATE() → Returns today’s date (no time).
-- 3) CURRENT_TIME → Returns current time.
-- 4) DATE_PART() -> Extracts a part of the date
-- 5) AGE() -> Returns the age between two dates
-- 6) EXTRACT -> Extracts a Specific part of the date. */

-- 1) NOW () -> Returns Current Date and Time

SELECT NOW() AS CURRENT_DATETIME;

-- 2) CURRENT_DATE() → Returns today’s date (no time).

SELECT CURRENT_DATE AS TODAYS_DATE;

SELECT ADDED_DATE, CURRENT_DATE, (CURRENT_DATE - ADDED_DATE) AS DAYS_DIFFERENCE
FROM PRODUCT;

-- 3) CURRENT_TIME → Returns current time.

SELECT CURRENT_TIME AS current_time;

-- 4) DATE_PART() -> Extracts a part of the date

SELECT PRODUCT_NAME, ADDED_DATE, DATE_PART('DOW', ADDED_DATE) AS DAY_OF_WEEK
FROM PRODUCT;
--DOW: DAY OF WEEK.

-- 5) AGE() -> Returns the age between two dates

SELECT PRODUCT_NAME,
AGE(CURRENT_DATE, ADDED_DATE) AS AGE_SINCE_ADDED
FROM PRODUCT;

SELECT * FROM PRODUCT;


-- 6) EXTRACT -> Extracts a Specific part of the date. */

SELECT product_name, 
		EXTRACT(YEAR FROM ADDED_DATE) AS YEAR_ADDED,
		EXTRACT(MONTH FROM ADDED_DATE) AS MONTH_ADDED,
		EXTRACT(DAY FROM ADDED_DATE) AS DAY_ADDED
FROM PRODUCT; 

-- 7)TO_CHAR() - FORMAT DATES AS STRINGS
-- FROMAT ADDED_DATE IN A CUSTOM FORMAT (DD-MON-YYYY).

SELECT PRODUCT_NAME,
TO_CHAR(ADDED_DATE, 'DD-MON-YYYY') AS FORMATED_DATE
FROM PRODUCT;

-- 8. DATE_TRUNC() – Truncate Date to Precision
-- Truncate added_date to the start of the month.

SELECT product_name, added_date,
		DATE_TRUNC('week', added_date) AS week_start,
		DATE_PART('isodow', added_date) AS day_of_week
FROM product;

-- 9. INTERVAL – Add or Subtract Time Intervals
-- Add 6 months to the added_date.

SELECT product_name, added_date,
		added_date + INTERVAL '6 months' AS new_date
FROM product;

-- 10. TO_DATE() – Convert String to Date
-- Convert a string to a date format.

SELECT TO_DATE('28-11-2024', 'DD-MM-YYYY') AS converted_date;

/* Conditional Function in Psql*/

-- Case Satement.

SELECT
	PRODUCT_NAME,
	PRICE,
	CASE
		WHEN PRICE >= 50000 THEN 'EXPENSIVE'
		WHEN PRICE >= 10000
		AND PRICE <= 49999 THEN 'MODERATE'
		ELSE 'AFFORDABLE'
	END AS PRICE_CATEGORY
FROM
	PRODUCT;

/* Conditional Function in Psql*/

-- Case Satement.

SELECT
	PRODUCT_NAME,
	PRICE,
	CASE
		WHEN PRICE >= 50000 THEN 'EXPENSIVE'
		WHEN PRICE >= 10000
		AND PRICE <= 49999 THEN 'MODERATE'
		ELSE 'AFFORDABLE'
	END AS PRICE_CATEGORY
FROM
	PRODUCT;

--FOR PRACTICE 
/*CASE WITH AND & OR OPERATORS - STOCK STATUS 
WE WILL CLASSIFY PRODUCTS BASED ON QUANTITY AVAILABLE:

IN STOCK IF QUANTITY IS 10 OR MORE. LINITED STOCH IS QUANTITIY IS BETWEEN 5 AND 9.
OUT OF STOCK SOON IF QUANTITY IS LESS THAN 5.*/

SELECT PRODUCT_NAME, QUANTITY, 
CASE 
WHEN QUANTITY >=25 THEN 'INSTOCK'
WHEN QUANTITY BETWEEN 10 AND 15 THEN 'LIMITED STOCK'
ELSE 'OUT OF STOCK' END AS STOCK_STATUS 
FROM PRODUCT;

SELECT * FROM PRODUCT;

/* CASE WITH LIKE OPERATOR - CATEGORY CLASSIFICATION CHECK IF THE CATEGORY NAME CONTAINS "ELECTRONICS" OR "FUNRNITURE" USING LIKE.*/

SELECT
	PRODUCT_NAME,
	QUANTITY,
	CASE
		WHEN CATEGORY LIKE 'ELECTRONICS%' THEN 'ELECTRONIC ITEM'
		WHEN CATEGORY LIKE 'FURNITURE%' THEN 'FURNITURE ITEM'
		WHEN CATEGORY LIKE 'FURNITURE%' THEN 'FURNITURE ITEM'
		ELSE 'ACCESSORY ITEM'
	END AS CATEGORY_STATUS
FROM
	PRODUCT;








