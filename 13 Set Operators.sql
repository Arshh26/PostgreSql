/* SET OPERATORS 

Combine the Results of Two or morw SELECT Statements

  Operator					Description			
  
1) UNION				   	Combines results, removes duplicates
2) UNION All    		Combines results, keeps duplicates
3) INTERSECT				Returns common results
4) EXCEPT					  Returns results in first, not second*/

drop table if exists students_2025;

drop table if exists students_2024;

create table students_2024 (
   student_id   int primary key,
   student_name varchar(100),
   course       varchar(50)
);

insert into students_2024 (
   student_id,
   student_name,
   course
) values ( 1,
           'Aarav',
           'Computer science' ),( 2,
                                  'Ishita',
                                  'Mechanical Engineering' ),( 3,
                                                               'Kabir',
                                                               'Electronics' ),( 4,
                                                                                 'Ananya',
                                                                                 'Civil Engineering' ),( 5,
                                                                                                         'Rahul',
                                                                                                         'Computer science' )
                                                                                                         ;

select *
  from students_2024;

create table students_2025 (
   student_id   int primary key,
   student_name varchar(100),
   course       varchar(50)
);

insert into students_2025 (
   student_id,
   student_name,
   course
) values ( 3,
           'Kabir',
           'Electronics' ), -- Same as STUDENTS_2024
           ( 4,
                             'Ananya',
                             'Civil Engineering' ), -- Same as STUDENTS_2024
                             ( 6,
                                                     'Meera',
                                                     'Computer science' ),( 7,
                                                                            'Vikram',
                                                                            'Mathematics' ),( 8,
                                                                                              'Sanya',
                                                                                              'Physics' );

select *
  from students_2025;

-- 1) UNION: Combines results, removes duplicates

select student_name,
       course
  from students_2024
union
select student_name,
       course
  from students_2025;

-- 2)UNION All: Combines results, keeps duplicates

select student_name,
       course
  from students_2024
union all
select student_name,
       course
  from students_2025;

-- 3) INTERSECT: Returns common results

select student_name,
       course
  from students_2024
intersect
select student_name,
       course
  from students_2025;

-- 4) EXCEPT: Returns results in first, not second

select student_name,
       course
  from students_2024
except
select student_name,
       course
  from students_2025;