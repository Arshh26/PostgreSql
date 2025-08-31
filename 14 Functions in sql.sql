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