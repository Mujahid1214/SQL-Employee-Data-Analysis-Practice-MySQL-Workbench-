-- Select Statement ,, How we can select everything from table
SELECT 
    *
FROM
    parks_and_recreation.employee_salary;

-- how to select 3 columns from table where salary is greater than 55k?
SELECT 
    first_name, last_name, salary
FROM
    employee_salary
WHERE
    salary >= 55000;

-- how to use like in sql with % and _ sign?
SELECT 
    *
FROM
    employee_salary
WHERE
    first_name LIKE 'l%';

SELECT 
    *
FROM
    employee_salary
WHERE
    first_name LIKE '%is';

SELECT 
    first_name, last_name, salary
FROM
    employee_salary
WHERE
    first_name LIKE 'a__%';

-- how to use having in sql?
SELECT 
    *
FROM
    employee_salary
HAVING occupation = 'Nurse';

-- how to use group by?
SELECT 
    gender
FROM
    employee_demographics
GROUP BY gender;

-- how to Select first 5 employee by using limit?
SELECT 
    employee_id, first_name, last_name
FROM
    employee_demographics
LIMIT 5;

-- how to use Min and Max in sql?
SELECT 
    MIN(age), MAX(age)
FROM
    employee_demographics;

-- how to use sum, avg, and count functions?
SELECT 
    COUNT(employee_id), SUM(age), AVG(age)
FROM
    employee_demographics;

-- how to use Aliases
select employee_id as ID, age as Employee_age, gender as emp_Gender from employee_demographics;

-- how to use and , or and not operation in sql?
select * from employee_demographics
where gender = 'Female' and age >= 40;

select * from employee_demographics
where gender = 'Male' or age >= 50;

select * from employee_demographics
where not gender='Male';

-- how to insert value into a table
insert into employee_demographics
values('15','Mujahid','Hussain','25','Male','2000-02-12');

-- how to remove duplicates from first_name in sql?
select distinct(first_name) from employee_demographics;

-- How to use "order by" in sql ( ascending or descending)?
select * from employee_demographics
order by age asc;
select * from employee_demographics
order by birth_date desc;

-- Filter by gender = Male.
select first_name, last_name,gender, birth_date from employee_demographics
where gender = 'Male';

-- The Distinct statement in sql -> to select unique values from column
select distinct first_name, last_name from employee_demographics;

-- By using the COUNT() function with the DISTINCT keyword, we can count the number of unique first_name, last_name.
select COUNT(distinct first_name, last_name) from employee_demographics;

-- Here we celect all employee from employee_demographics that have gender = female using WHERE Clause
SELECT * FROM employee_demographics
WHERE gender = 'Female';

select * from employee_demographics where last_name = 'hussain';

-- The ORDER BY keyword is used to sort the result-set in ascending or descending order.
-- The ORDER BY keyword sorts the result-set in ascending order (ASC) by default.
select * from employee_demographics order by age;

select * from employee_demographics order by employee_id ASC, age DESC;

-- The AND operator is used to filter records based on more than one condition.
-- Note: The AND operator displays a record if all the conditions are TRUE.
select * from employee_demographics where gender = 'Male' AND first_name like 'M%';

-- The OR operator displays a record if any of the conditions are TRUE.
-- You can also combine AND and OR operators.
select * from employee_demographics;
select * from employee_demographics where gender = 'Male' AND (first_name like 'M%' OR first_name like 'A%');

-- The OR operator is used to filter records based on more than one condition.
-- Note: The OR operator displays a record if any of the conditions are TRUE.
SELECT 
    *
FROM
    employee_demographics
WHERE
    gender = 'Male' OR gender = 'Female';

SELECT 
    *
FROM
    employee_demographics
WHERE
    gender = 'Male'
        OR (first_name LIKE 'M%'
        OR first_name LIKE 'G%');

-- NOT Operator reverses the result of a condition from true to false and vice-versa.
SELECT 
    *
FROM
    employee_salary
WHERE
    NOT salary > 50000;

SELECT 
    *
FROM
    employee_salary
WHERE
    NOT first_name LIKE 'A%';
SELECT 
    *
FROM
    employee_salary
WHERE
    employee_id NOT BETWEEN 1 AND 10;
SELECT 
    *
FROM
    employee_salary
WHERE
    NOT employee_id > 8;
SELECT 
    *
FROM
    employee_salary;
-- The INSERT INTO statement is used to insert new records in a table.
insert into employee_salary values('Mujahid', 'Ali', 'Freelancer', '9000000000', '12');
select * from employee_salary;

-- Here we insert values only in some specific columns of the table.
insert into employee_salary (first_name, last_name)
values('Mujahid', 'Hussain');

-- You can insert multiple rows like this 
insert into employee_salary (first_name, last_name)
values
('Mujahid', 'Hussain'),
('kashif', 'Hussain'),
('zawar', 'Hussain');


-- A NULL value represents an unknown, missing, or inapplicable data in a database field. It is not a value itself, but a placeholder to indicate the absence of data
SELECT 
    *
FROM
    employee_demographics
WHERE
    occupation IS NULL;
SELECT 
    *
FROM
    employee_demographics
WHERE
    occupation IS NOT NULL;

select * from employee_salary;

-- The UPDATE statement is used to update or modify one or more records in a table.
UPDATE employee_salary 
SET 
    first_name = 'Mujahid',
    last_name = 'Hussain'
WHERE
    employee_id = 1;

-- The DELETE statement is used to delete existing records in a table.
DELETE FROM employee_demographics 
WHERE
    first_name = 'Mujahid';
-- To delete the table completely, use the DROP TABLE statement:
-- DROP TABLE employee_demographics;

-- SQL Aggregate Functions  .... An aggregate function is a function that performs a calculation on a set of values, and returns a single value.
-- limit in sql
SELECT 
    *
FROM
    employee_demographics
ORDER BY employee_id
LIMIT 3;

-- MIN() - returns the smallest value of a column
SELECT 
    MIN(birth_date) AS Earlier_Birth
FROM
    employee_demographics;
-- MAX() - returns the largest value of a column
SELECT 
    MAX(birth_date) AS Earlier_Birth
FROM
    employee_demographics;
-- COUNT() - returns the number of rows in a set
SELECT 
    COUNT(*)
FROM
    employee_demographics;
SELECT 
    *
FROM
    employee_salary;
SELECT 
    COUNT(occupation)
FROM
    employee_salary
WHERE
    salary > 50000;
-- SUM() - returns the sum of a numerical column
SELECT 
    SUM(salary)
FROM
    employee_salary
WHERE
    employee_id = 8;
-- AVG() - returns the average value of a numerical column
SELECT 
    AVG(salary)
FROM
    employee_salary;

-- The LIKE operator is used in a WHERE clause to search for a specified pattern within a column's text data.
SELECT 
    *
FROM
    employee_demographics
WHERE
    first_name LIKE 'M%';
SELECT 
    *
FROM
    employee_salary
WHERE
    first_name LIKE 'A_%';

SELECT 
    *
FROM
    employee_salary
WHERE
    first_name LIKE 'A%'
        OR first_name LIKE 'B%';
SELECT 
    *
FROM
    employee_salary
WHERE
    first_name LIKE '%l'
        OR first_name LIKE '%y';
-- The [] wildcard returns a result if any of the characters inside gets a match.
-- Return all employees starting with either "a", "s", or "m":
SELECT 
    *
FROM
    employee_demographics
WHERE
    first_name LIKE 'a-s%';


-- The IN operator is used in the WHERE clause to check if a specified column's value matches any value within a provided list.
SELECT 
    *
FROM
    employee_salary
WHERE
    occupation IN ('office manager' , 'Nurse', 'city planner');
SELECT 
    *
FROM
    employee_salary
WHERE
    occupation NOT IN ('office manager' , 'Nurse', 'city planner');
    
  --  The SQL BETWEEN Operator
-- The BETWEEN operator is used in the WHERE clause to select values within a specified range.
SELECT 
    *
FROM
    employee_salary
WHERE
    salary BETWEEN 45000 AND 60000;
    
    -- The NOT BETWEEN operator is used in the WHERE clause to select values outside a specified range.
    SELECT 
    *
FROM
    employee_salary
WHERE
    salary not BETWEEN 45000 AND 60000;

SELECT 
    *
FROM
    employee_salary
WHERE
    first_name BETWEEN 'Tom' AND 'Chris'; 

-- SQL aliases are used to give a column or a table a temporary name.
-- Aliases are used to make column names more readable.
-- An alias only exists for the duration of that query.
-- An alias is created with the AS keyword.

SELECT 
    employee_id AS ID,
    first_name AS NAME,
    occupation AS OCCUPATION
FROM
    employee_salary;

-- Concatenate Columns
SELECT 
    first_name,
    last_name + ', ' + occupation + ' ' + salary + ', ' + dept_id AS address
FROM
    employee_salary;

-- The same rules applies when you want to use an alias for a table.
SELECT 
    *
FROM
    employee_salary AS salary_table;
 -- The SQL JOIN Clause
-- The JOIN clause is used to combine rows from two or more tables, based on a related column between them.
-- The INNER JOIN returns only rows that have matching values in both tables.
SELECT 
    *
FROM
    employee_demographics
        INNER JOIN
    employee_salary ON employee_demographics.first_name = employee_salary.first_name;
-- or you can join on employee_id
SELECT 
    *
FROM
    employee_demographics
        INNER JOIN
    employee_salary ON employee_demographics.employee_id = employee_salary.employee_id;


-- JOIN or INNER JOIN
-- JOIN and INNER JOIN will return the same result.
-- INNER is the default join type for JOIN, so when you write JOIN the parser actually writes INNER JOIN
SELECT 
    *
FROM
    employee_demographics
         JOIN
    employee_salary ON employee_demographics.employee_id = employee_salary.employee_id;


-- SQL LEFT JOIN
-- The LEFT JOIN returns all rows from the left table (table1), and only the matched rows from the right table (table2).
-- If there is no match in the right table, the result for the columns from the right table will be NULL.
-- The LEFT JOIN and LEFT OUTER JOIN keywords are equal - the OUTER keyword is optional.

SELECT 
    *
FROM
    employee_demographics
        LEFT JOIN
    employee_salary ON employee_demographics.employee_id = employee_salary.employee_id;
    
    -- SQL RIGHT JOIN
-- The RIGHT JOIN returns all rows from the right table (table2), and only the matched rows from the left table (table1).
-- If there is no match in the left table, the result for the columns from the left table will be NULL.
-- The RIGHT JOIN and RIGHT OUTER JOIN keywords are equal - the OUTER keyword is optional.

SELECT 
    *
FROM
    employee_demographics
        RIGHT JOIN
    employee_salary ON employee_demographics.employee_id = employee_salary.employee_id;
    
-- The FULL JOIN returns all rows when there is a match in either the left or right table.
-- If a row in the left table has no match in the right table, the result set includes the left row's data and NULL values for all columns of the right table.
-- If a row in the right table has no match in the left table, the result set includes the right row's data and NULL values for all columns of the left table.
-- The FULL JOIN and FULL OUTER JOIN keywords are equal - the OUTER keyword is optional.

SELECT 
    *
FROM
    employee_demographics full
        JOIN
    employee_salary ON employee_salary.employee_id = employee_salary.employee_id;


-- The SQL UNION Operator
-- The UNION operator is used to combine the result-set of two or more SELECT statements.
-- The UNION operator automatically removes duplicate rows from the result set.
-- Requirements for UNION:
-- Every SELECT statement within UNION must have the same number of columns
-- The columns must also have similar data types
-- The columns in every SELECT statement must also be in the same order

SELECT 
    *
FROM
    employee_demographics 
UNION SELECT 
    *
FROM
    employee_salary;
SELECT 
    employee_id AS ID, first_name, last_name
FROM
    employee_demographics 
UNION SELECT 
    employee_id, first_name, last_name
FROM
    employee_salary
ORDER BY employee_id;

-- The UNION ALL operator is used to combine the result-set of two or more SELECT statements.
-- The UNION ALL operator includes all rows from each statement, including any duplicates.

SELECT 
    *
FROM
    employee_demographics 
UNION ALL SELECT 
    *
FROM
    employee_salary;
    
-- The SQL GROUP BY Statement
-- The GROUP BY statement is used to group rows that have the same values into summary rows, like "Find the number of customers in each country".
-- The GROUP BY statement is almost always used in conjunction with aggregate functions, like COUNT(), MAX(), MIN(), SUM(), AVG(), to perform calculations on each group.

SELECT 
    *
FROM
    employee_demographics
GROUP BY employee_id;

-- The SQL HAVING Clause
-- The HAVING clause is used to filter the results of a GROUP BY query based on aggregate functions. Unlike the WHERE clause, which filters individual rows before grouping, HAVING filters groups after the aggregation has been performed.

SELECT 
    first_name, last_name, gender, COUNT(age) AS max_age
FROM
    employee_demographics
GROUP BY age
HAVING max_age > 35;

-- The EXISTS operator is used in a WHERE clause to check whether a subquery returns any rows.
-- The EXISTS operator evaluates to TRUE if the subquery returns at least one row, and FALSE otherwise.

SELECT 
    first_name, last_name
FROM
    employee_demographics
WHERE
    EXISTS( SELECT 
            occupation, first_name
        FROM
            employee_salary);
            
-- The SQL ANY Operator
-- The ANY operator is used to compare a value to every value returned by a subquery.
-- The ANY operator evaluates to TRUE if at least one value in the subquery result-set meet the condition.

SELECT 
    *
FROM
    employee_demographics
WHERE
    employee_id = ANY (SELECT 
            first_name, last_name
        FROM
            employee_salary
        WHERE
            salary > 50000);
            
-- The ALL operator is used to compare a value to every value returned by a subquery.
-- The ALL operator evaluates to TRUE if every value in the subquery result-set meet the condition.
-- The ALL operator is typically used with WHERE and HAVING statements.
SELECT 
    *
FROM
    employee_demographics
WHERE
    employee_id = All (SELECT 
            first_name, last_name
        FROM
            employee_salary
        WHERE
            salary <= 50000);

-- The SQL SELECT INTO Statement
-- The SELECT INTO statement is used to create a new table and fill it with data from an existing table.
-- The SELECT INTO statement is useful for creating backups or for creating a temporary table for analysis.

SELECT 
    *
INTO employee_salary FROM
    employee_demographics;

-- The SQL INSERT INTO SELECT Statement
-- The INSERT INTO SELECT statement is used to copy data from an existing table and insert it into another existing table.
-- The INSERT INTO SELECT statement requires that the data types in source and target tables match.

insert into employee_demographics (employee_id, first_name, last_name)
select employee_id, first_name, last_name from employee_salary;

-- The CASE expression is used to define different results based on specified conditions in an SQL statement.

select * from employee_salary;

SELECT 
    first_name,
    salary,
    CASE
        WHEN salary < 25000 THEN 'Low salary'
        WHEN salary <= 40000 THEN 'medium salary'
        WHEN salary > 50000 THEN 'high salary'
        ELSE 'very high salary'
    END AS salary_predict
FROM
    employee_salary;

-- What is a Stored Procedure?
-- A stored procedure is a precompiled SQL code that can be saved and reused.
-- If you have an SQL query that you write over and over again, save it as a stored procedure, and then just call it to execute it.
-- A stored procedure can also have parameters, so it can act based on the parameter value(s) that is passed.
DELIMITER $$
create procedure large_salaries2()
BEGIN
	select * from employee_salary
	where salary > 50000;
SELECT 
    *
FROM
    employee_salary
WHERE
    salary > 10000;
END $$
DELIMITER ;

call large_salaries2();

-- How to use parameter in store procedure
DELIMITER $$
create procedure large_salaries4(p_employee_id int)
begin
	select salary from employee_salary
    where employee_id = p_employee_id;
end $$
DELIMITER ;

call large_salaries4(1);

-- SQL Comments
-- Comments are used to explain SQL code, or to temporarily prevent execution of SQL code (for debugging).
-- Comments are ignored by the database engine.
-- SQL supports single-line comments --, and multi-line comments /* */.
/* hi
this 
is 
mujahis toorie */


DELIMITER $$
create procedure biggest_salaries()
begin
	select * from employee_salary where salary >= 60000;
end $$
DELIMITER :

call biggest_salaries();

-- The SQL CREATE DATABASE Statement
-- The CREATE DATABASE statement is used to create a new SQL database.
-- Tip: You need administrative privileges to create a new database.
-- syntax
CREATE DATABASE database_name;
-- Syntax for MySQL
SHOW DATABASES;


-- The DROP DATABASE statement is used to permanently delete an existing SQL database.

-- syntax
DROP DATABASE databasename;


-- The BACKUP DATABASE Statement
-- The BACKUP DATABASE statement is used in SQL Server to create a full backup of an existing SQL database.

BACKUP DATABASE testDB
TO DISK = 'D:\backups\testDB.bak';

-- A differential backup only captures the data that has changed since the last full backup.
BACKUP DATABASE databasename
TO DISK = 'filepath'
WITH DIFFERENTIAL;

-- The SQL CREATE TABLE Statement
-- The CREATE TABLE statement is used to create a new table in a database.

-- syntax
CREATE TABLE table_name (
  column1 datatype constraint,
  column2 datatype constraint,
  column3 datatype constraint,
  ....
);

CREATE TABLE Persons (
    PersonID INT PRIMARY KEY,
    LastName VARCHAR(255) NOT NULL,
    FirstName VARCHAR(255),
    Address VARCHAR(255),
    City VARCHAR(255)
);

SELECT 
    *
FROM
    Person;

-- The CREATE TABLE statement can also be used to create a new table that copies some/all data from an existing table.
-- If you create a new table from an existing table, the new table will be filled with the values from the existing table.

CREATE TABLE female_employee AS SELECT first_name, last_name, age, gender, birth_date FROM
    employee_demographics
WHERE
    gender = 'Female';
    
SELECT 
    *
FROM
    female_employee;

-- The SQL DROP TABLE Statement
-- The DROP TABLE statement is used to permanently delete an existing table in a database.
-- To prevent an error from occur (if the table does not exists), it is a good practice to add the IF EXISTS clause:
drop table if exists female_employee;

-- SQL TRUNCATE TABLE
-- The TRUNCATE TABLE statement is used to delete all the records in a table, but it keeps the table structure, columns and constraints.

truncate table female_employee;

-- SQL ALTER TABLE Statement
-- The ALTER TABLE statement is used to add, delete, or modify columns in an existing table.

alter table employee_salary add Email varchar(255);


-- ALTER TABLE - DROP COLUMN
alter table employee_salary drop column Email; 

-- ALTER TABLE - RENAME COLUMN

alter table employee_salary rename column employee_salary to salary;




create table MujahidToorie (
Id int primary key,
First_Name varchar(255) not null,
Last_Name varchar(255),
Gender varchar(255),
Monthly_Income int,
city varchar(255)
);

select * from mujahidtoorie;

insert into mujahidtoorie (Id, First_Name, Last_Name, Gender, Monthly_Income, city)
values
(10, 'Mujahid', 'Hussain', 'Male', 10000, 'pcr' ),
(1, 'Ali', 'Khan', 'Male', 12000, 'pcr');

select * from mujahidtoorie;

drop table mujahidtoorie;

-- SQL Constraints
-- SQL constraints are rules for data in a table.
-- Constraints are used to prevent insertion of invalid data in a table, and ensures the accuracy and reliability of the data in the table. If there is any violation between the constraint and the data action, the action is aborted.

-- SQL Constraint Types
/*The following constraints are commonly used in SQL:

NOT NULL - Ensures that a column cannot have a NULL value
UNIQUE - Ensures that all values in a column are unique
PRIMARY KEY - Uniquely identifies each row in a table (a combination of a NOT NULL and UNIQUE)
FOREIGN KEY - Establishes a link between data in two tables, and prevents action that will destroy the link between them
CHECK - Ensures that the values in a column satisfies a specific condition
DEFAULT - Sets a default value for a column if no value is specified
CREATE INDEX - Creates indexes on columns to retrieve data from the database faster */
 
-- SQL NOT NULL Constraint
-- The NOT NULL constraint enforces a column to NOT accept NULL values

-- NOT NULL on CREATE TABLE
-- To define a NOT NULL constraint when creating a table, add NOT NULL after the data type of the column name.

CREATE TABLE People (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255) NOT NULL,
    Age int
);


-- SQL UNIQUE Constraint
-- The UNIQUE constraint ensures that all values in a column are unique.

CREATE TABLE People (
    ID int UNIQUE,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255) NOT NULL,
    Age int
);


-- SQL PRIMARY KEY Constraint
-- The PRIMARY KEY constraint uniquely identifies each record in a database table.

CREATE TABLE People (
    ID int primary key,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255) NOT NULL,
    Age int
);

-- To define a named PRIMARY KEY constraint on multiple columns, use the following SQL syntax:

CREATE TABLE Persons (
    ID int,
    LastName varchar(255),
    FirstName varchar(255),
    Age int,
    CONSTRAINT PK_Person PRIMARY KEY (ID, LastName)
);

-- To create a PRIMARY KEY constraint on the "ID" column when the table already has been created, use the following SQL:
alter table persons
add primary key (ID);


-- PRIMARY KEY on Multiple Columns
alter table persons
add constraint PK_Person primary key (ID, Last_Name);


-- SQL FOREIGN KEY Constraint
-- The FOREIGN KEY constraint establishes a link between two tables, and prevents action that will destroy the link between them.
-- A FOREIGN KEY is a column in a table that refers to the PRIMARY KEY in another table.

CREATE TABLE Orders (
    OrderID int PRIMARY KEY,
    OrderNumber int NOT NULL,
    PersonID int,
    CONSTRAINT fk_Person
    FOREIGN KEY (PersonID)
    REFERENCES Persons(PersonID)
);

-- SQL CHECK Constraint
-- The CHECK constraint is used to ensure that the values in a column satisfies a specific condition.

CREATE TABLE Persons (
    ID int PRIMARY KEY,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int CHECK (Age >= 18)
);

-- SQL DEFAULT Constraint
-- The DEFAULT constraint is used to automatically insert a default value for a column, if no value is specified.
CREATE TABLE Persons (
    ID int PRIMARY KEY,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    City varchar(255) DEFAULT 'Sandnes'
);

--SQL CREATE INDEX Statement
-- The CREATE INDEX statement is used to create indexes on tables in databases, to speed up data retrieval.

CREATE INDEX idx_lastname
ON Persons (LastName);

-- If you want to create an index on a combination of columns, you can list the column names within the parentheses, separated by commas:
CREATE INDEX idx_lname_fname
ON Persons (LastName, FirstName);

--SQL AUTO INCREMENT Field
-- An auto-increment field is a numeric column that automatically generates a unique number, when a new record is inserted into a table.

CREATE TABLE Persons (
    Personid int AUTO_INCREMENT PRIMARY KEY,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int
);






