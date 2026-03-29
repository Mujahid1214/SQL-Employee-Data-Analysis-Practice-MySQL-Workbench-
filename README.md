# SQL-Employee-Data-Analysis-Practice-MySQL-Workbench-
# SQL Employee Data Analysis & Practice (MySQL Workbench)

## 📌 Overview
This project demonstrates my hands-on practice and learning of SQL using MySQL Workbench over a period of 2 months. It includes structured queries ranging from basic SELECT statements to more advanced data analysis queries using two relational tables:

* `employee_demographics`
* `employee_salary`

The purpose of this project is to showcase my practical SQL skills and understanding of database operations.

---

## 🧠 Skills Demonstrated

* Database creation and table design
* Data insertion and management
* Writing basic to advanced SQL queries
* Filtering data using `WHERE`, `AND`, `OR`
* Sorting results using `ORDER BY`
* Aggregations using `COUNT`, `SUM`, `AVG`, `MIN`, `MAX`
* Grouping data using `GROUP BY`
* Joining multiple tables using:

  * `INNER JOIN`
  * `LEFT JOIN`
  * `RIGHT JOIN`
* Subqueries
* Aliasing columns and tables
* Working with NULL values
* Using conditions with `CASE` statements
* Data analysis using real-world scenarios

---

## 🗂️ Database Structure

### 1️⃣ employee_demographics

This table contains personal information of employees.

| Column Name | Data Type | Description           |
| ----------- | --------- | --------------------- |
| employee_id | INT       | Unique ID of employee |
| first_name  | VARCHAR   | First name            |
| last_name   | VARCHAR   | Last name             |
| age         | INT       | Age of employee       |
| gender      | VARCHAR   | Gender                |
| birth_date  | DATE      | Date of birth         |

---

### 2️⃣ employee_salary

This table contains job and salary details.

| Column Name | Data Type | Description                                |
| ----------- | --------- | ------------------------------------------ |
| employee_id | INT       | Unique ID (linked with demographics table) |
| first_name  | VARCHAR   | First name                                 |
| last_name   | VARCHAR   | Last name                                  |
| occupation  | VARCHAR   | Job title                                  |
| salary      | INT       | Salary amount                              |
| dept_id     | INT       | Department ID                              |

---

## 🔗 Relationships

* Both tables are connected using `employee_id`
* Used JOIN operations to combine and analyze data across both tables

---

## 💻 Sample Queries

### Basic Query

```sql
SELECT * FROM employee_demographics;
```

### Filtering Data

```sql
SELECT * 
FROM employee_demographics
WHERE age > 30;
```

### Joining Tables

```sql
SELECT d.first_name, d.last_name, s.salary
FROM employee_demographics d
INNER JOIN employee_salary s
ON d.employee_id = s.employee_id;
```

### Aggregation Example

```sql
SELECT dept_id, AVG(salary) AS avg_salary
FROM employee_salary
GROUP BY dept_id;
```

---

## 📊 What I Learned

During this practice, I developed a strong understanding of:

* How relational databases work
* Writing optimized and readable SQL queries
* Analyzing structured data efficiently
* Solving real-world data problems using SQL

---

## 🚀 Tools Used

* MySQL Workbench
* SQL (Structured Query Language)

---

## 📷 Screenshots

Screenshots of my work and query results are included in this repository to demonstrate practical execution and outputs.

---

## 🎯 Conclusion

This project reflects my dedication to learning SQL through consistent hands-on practice. I am now confident in writing complex queries and performing data analysis using SQL.

---

## 📬 Contact
Mujahid Hussain Python Developer, Data Analyst, Web Scraping Specialist
Email = mujahid2244@gmail.com
WhatsApp = +923075192466
LinkedIn = https://www.linkedin.com/in/mujahid-hussain-b20518226/

If you have any questions or opportunities, feel free to connect with me.

---

⭐ If you like this project, consider giving it a star!
