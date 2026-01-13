<p align="center">
  <img src="https://www.especial.gr/wp-content/uploads/2019/03/panepisthmio-dut-attikhs.png" alt="UNIWA" width="150"/>
</p>

<p align="center">
  <strong>UNIVERSITY OF WEST ATTICA</strong><br>
  SCHOOL OF ENGINEERING<br>
  DEPARTMENT OF COMPUTER ENGINEERING AND INFORMATICS
</p>

---

<p align="center">
  <strong>Databases II</strong>
</p>

<h1 align="center">
  Creation of Database personnel
</h1>

<p align="center">
  <strong>Vasileios Evangelos Athanasiou</strong><br>
  Student ID: 19390005
</p>

<p align="center">
  <a href="https://github.com/Ath21" target="_blank">GitHub</a> ·
  <a href="https://www.linkedin.com/in/vasilis-athanasiou-7036b53a4/" target="_blank">LinkedIn</a>
</p>

<p align="center">
  Supervisor: Rania Garofalaki, Laboratory Teaching Staff<br>
</p>

<p align="center">
  <a href="https://ice.uniwa.gr/en/emd_person/zacharenia-garofalaki/" target="_blank">UNIWA Profile</a> ·
  <a href="https://www.linkedin.com/in/rania-garofalaki-4761b071/" target="_blank">LinkedIn</a>
</p>

<p align="center">
  Athens, December 2023
</p>

---

# Project Overview

The laboratory exercise involves the creation of three primary tables and performing SQL operations to manage and analyze employee data.

---

## Table of Contents


| Section | Folder / File | Description |
|------:|---------------|-------------|
| 1 | `assign/` | Laboratory / Assignment material |
| 1.1 | `assign/laboratory_1.pdf` | Laboratory instructions (English) |
| 1.2 | `assign/εργαστήριο_1.pdf` | Laboratory instructions (Greek) |
| 2 | `docs/` | Theoretical documentation |
| 2.1 | `docs/Create-Database.pdf` | Database creation theory (English) |
| 2.2 | `docs/Δημιουργία-ΒΔ.pdf` | Database creation theory (Greek) |
| 3 | `queries/` | Visual query examples |
| 3.1 | `queries/insertDept*.png` | Insert Department queries |
| 3.2 | `queries/insertEmp*.png` | Insert Employee queries |
| 3.3 | `queries/insertJob*.png` | Insert Job queries |
| 3.4 | `queries/query*.png` | Select / complex queries |
| 3.5 | `queries/select*.png` | Select specific tables |
| 3.6 | `queries/Step1.png` | Step-by-step illustration |
| 4 | `src/` | SQL scripts and related images |
| 4.1 | `src/personnel.sql` | SQL script for personnel database |
| 4.2 | `src/personnel.png` | ER diagram / model image |
| 5 | `README.md` | Repository overview and instructions |

---


## Database Structure

### 1. DEPT (Departments)
Stores information about the organization's departments.

- **Primary Key:** `DEPTNO`  
- **Fields:**  
  - `DEPTNO` (int)  
  - `DNAME` (varchar)  
  - `LOC` (varchar)  

---

### 2. JOB (Job Roles)
Defines job descriptions and associated base salaries.

- **Primary Key:** `JOBCODE`  
- **Fields:**  
  - `JOBCODE` (int)  
  - `JOB_DESCR` (varchar)  
  - `SAL` (int)  

---

### 3. EMP (Employees)
Stores detailed employee records and links employees to departments and job roles.

- **Primary Key:** `EMPNO`  
- **Foreign Keys:**  
  - `DEPTNO` references `DEPT`  
  - `JOBNO` references `JOB`  
- **Fields:**  
  - `EMPNO` (int)  
  - `NAME` (varchar)  
  - `JOBNO` (int)  
  - `DEPTNO` (int)  
  - `COMM` (int)  

---

## Laboratory Activities

The lab guides students through the following operations:

1. **System Connection**  
   Connecting to the MySQL monitor via the command prompt.

2. **Database Creation**  
   Checking for and creating the personnel database if it does not exist.

3. **Table Initialization**  
   Using `CREATE TABLE` statements with proper primary key, foreign key, and other constraints.

4. **Data Entry**  
   Populating tables using `INSERT INTO` with sample data for departments such as Sales, Account, and Payroll.

5. **Data Analysis (Queries)**  
   - Filtering employees by **job title** (e.g., Salesmen or Analysts).  
   - Using **aggregate functions**: total employees, minimum/average salaries, and commission counts.  
   - Sorting data by **department** and **salary levels**.  
   - Calculating departmental statistics, such as **average salary per department**.

---

# Installation & Setup Guide

This repository contains a **personnel database creation project** developed for the **Databases II** course at the **University of West Attica (UNIWA)**.  
The focus is on creating a relational database with `DEPT`, `JOB`, and `EMP` tables, inserting sample data, and performing queries for analysis.

---

## Prerequisites

Before starting, ensure the following software is installed:

### 1. Database Management System (DBMS)
- **MySQL** (recommended)
- Alternative options:
  - MariaDB
  - PostgreSQL *(minor syntax adjustments may be required)*

### 2. SQL Client / Interface
A tool to execute SQL commands:
- **MySQL Workbench** (recommended)
- phpMyAdmin
- DBeaver
- Command-line MySQL client

### 3. Basic Knowledge
- SQL commands: `CREATE DATABASE`, `CREATE TABLE`, `INSERT`, `SELECT`
- Foreign key relationships
- Aggregate functions: `SUM()`, `AVG()`, `COUNT()`, etc.

---

## Installation

### 1. Clone the Repository

Open a terminal/command prompt and run:

```bash
git clone https://github.com/Data-Bases-2/Create-Database.git
```

#### Alternative (Without Git)

- Open the repository URL in your browser
- Click Code → Download ZIP
- Extract the ZIP file to a local directory

### 2. Open SQL Client
- Launch your preferred SQL client (e.g., MySQL Workbench)
- Connect to your local or remote MySQL server

### 3. Create the Database
- Execute the following SQL command if the database does not exist:
```sql
CREATE DATABASE IF NOT EXISTS personnel;
USE personnel;
```

### 4. Create Tables
Run the provided SQL script src/personnel.sql:
```sql
-- Example for DEPT table
CREATE TABLE DEPT (
    DEPTNO INT PRIMARY KEY,
    DNAME VARCHAR(50),
    LOC VARCHAR(50)
);

-- Example for JOB table
CREATE TABLE JOB (
    JOBCODE INT PRIMARY KEY,
    JOB_DESCR VARCHAR(50),
    SAL INT
);

-- Example for EMP table
CREATE TABLE EMP (
    EMPNO INT PRIMARY KEY,
    NAME VARCHAR(50),
    JOBNO INT,
    DEPTNO INT,
    COMM INT,
    FOREIGN KEY (DEPTNO) REFERENCES DEPT(DEPTNO),
    FOREIGN KEY (JOBNO) REFERENCES JOB(JOBCODE)
);
```
Tip: You can execute the full `personnel.sql` file in one step using your SQL client.

### 5. Insert Sample Data
Populate tables with example records using the `INSERT INTO` statements in personnel.sql or refer to images in queries/ for visual guidance.

### 6. Verify Tables
Check that the tables and sample data exist:
```sql
USE personnel;
SHOW TABLES;

SELECT * FROM DEPT;
SELECT * FROM JOB;
SELECT * FROM EMP;
```

---

## Open the Documentation
1. Navigate to the `docs/` directory
2. Open the report corresponding to your preferred language:
    - English: `Create-Database.pdf`
    - Greek: `Δημιουργία-ΒΔ.pdf`