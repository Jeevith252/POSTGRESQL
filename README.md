
# POSTGRESQL

## Day 1 - 29/06/2026


This repository contains my practice and learning exercises on PostgreSQL fundamentals.

## Topics Covered
- Creating Databases and Tables
- PostgreSQL Data Types
  - INT
  - SMALLINT
  - SERIAL
  - CHAR
  - VARCHAR
  - DECIMAL
  - REAL
- CRUD Operations
  - CREATE
  - READ (SELECT)
  - UPDATE
  - DELETE
- INSERT statements
- SQL Comments
- Basic SQL Syntax and Queries






## Day 2 - 30/06/2026


## Topics Covered
- Constraints In SQL

  - PRIMARY KEY
  - NOT NULL
  - UNIQUE
  - DEFAULT
  - CHECK
  - FORIEGN KEY
    
 
## Day 3 - 5/07/2026


#  Products Table - PostgreSQL

A simple PostgreSQL database project name Flipkart table for storing product inventory information. This project demonstrates the use of SQL constraints, default values, primary keys, and data validation.

---

## 📌 Features

- Auto-incrementing Product ID
- Unique SKU Code for every product
- Price validation using CHECK constraint
- Stock quantity management
- Product availability status
- Product categorization
- Automatic creation date
- Automatic timestamp for record creation

---


## Day 4 - 7/07/2026


## 📚 Topics Covered

### 1. SQL Clauses
- SELECT
- FROM
- WHERE
- ORDER BY
- GROUP BY
- HAVING
- DISTINCT
- LIMIT

---

### 2. SQL Operators
- Arithmetic Operators
- Comparison Operators
- Logical Operators
  - AND
  - OR
  - NOT
- BETWEEN
- IN
- LIKE
- IS NULL
- EXISTS

---

### 3. Aggregate Functions
- COUNT()
- SUM()
- AVG()
- MIN()
- MAX()

Used together with:
- GROUP BY
- HAVING

---

### 4. String Functions
- UPPER()
- LOWER()
- LENGTH()
- CONCAT()
- SUBSTRING()
- TRIM()
- REPLACE()
- LEFT()
- RIGHT()

---


## DAY 5 - 8/07/2026

##  Topics Covered

### 1. ALTER Statement
Learned how to modify the structure of an existing table.

#### Operations Practiced
- Add a new column
- Modify the data type of an existing column
- Rename a column
- Rename a table
- Drop a column
- Set and remove default values
- Add and remove constraints (basic understanding)

**Example**
```sql
ALTER TABLE Employees
ADD Email VARCHAR(100);

ALTER TABLE Employees
DROP COLUMN Email;
```

---

### 2. CASE Statement
Learned how to apply conditional logic within SQL queries.

**Example**
```sql
SELECT
    employee_name,
    salary,
    CASE
        WHEN salary >= 80000 THEN 'High'
        WHEN salary >= 50000 THEN 'Medium'
        ELSE 'Low'
    END AS Salary_Category
FROM Employees;
```





