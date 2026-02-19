<p align="center">
  <img src="https://www.especial.gr/wp-content/uploads/2019/03/panepisthmio-dut-attikhs.png" alt="UNIWA" width="150"/>
</p>

<p align="center">
  <strong>UNIVERSITY OF WEST ATTICA</strong><br>
  SCHOOL OF ENGINEERING<br>
  DEPARTMENT OF COMPUTER ENGINEERING AND INFORMATICS
</p>

<p align="center">
  <a href="https://www.uniwa.gr" target="_blank">University of West Attica</a> ·
  <a href="https://ice.uniwa.gr" target="_blank">Department of Computer Engineering and Informatics</a>
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

<hr>

<p align="center">
  <strong>Supervision</strong>
</p>

<p align="center">
  Supervisor: Periklis Andritsos, Associate Professor
</p>
<p align="center">
  <a href="https://ice.uniwa.gr/en/emd_person/periklis-andritsos/" target="_blank">UNIWA Profile</a> ·
  <a href="https://www.linkedin.com/in/periklisandritsos/" target="_blank">LinkedIn</a>
</p>

<p align="center">
  Co-supervisor: Rania Garofalaki, Laboratory Teaching Staff<br>
</p>

<p align="center">
  <a href="https://ice.uniwa.gr/en/emd_person/zacharenia-garofalaki/" target="_blank">UNIWA Profile</a> ·
  <a href="https://www.linkedin.com/in/rania-garofalaki-4761b071/" target="_blank">LinkedIn</a>
</p>

</hr>

<p align="center">
  Athens, December 2023
</p>

---

<p align="center">
  <img src="https://dev.mysql.com/doc/employee/en/images/employees-schema.png" width="250"/>
</p>

---

# README

## Creation of Database personnel

The laboratory exercise involves the creation of three primary tables and performing SQL operations to manage and analyze employee data.

---

## Table of Contents

| Section | Folder / File              | Description                        |
| ------: | -------------------------- | ---------------------------------- |
|       1 | `assign/`                  | Laboratory / Assignment material   |
|     1.1 | `assign/laboratory_1.pdf`  | Laboratory instructions (English)  |
|     1.2 | `assign/εργαστήριο_1.pdf`  | Laboratory instructions (Greek)    |
|       2 | `docs/`                    | Theoretical documentation          |
|     2.1 | `docs/Create-Database.pdf` | Database creation theory (English) |
|     2.2 | `docs/Δημιουργία-ΒΔ.pdf`   | Database creation theory (Greek)   |
|       3 | `queries/`                 | Visual query examples              |
|     3.1 | `queries/insertDept*.png`  | Insert Department queries          |
|     3.2 | `queries/insertEmp*.png`   | Insert Employee queries            |
|     3.3 | `queries/insertJob*.png`   | Insert Job queries                 |
|     3.4 | `queries/query*.png`       | Select / complex queries           |
|     3.5 | `queries/select*.png`      | Select specific tables             |
|     3.6 | `queries/Step1.png`        | Step-by-step illustration          |
|       4 | `src/`                     | SQL scripts and related images     |
|     4.1 | `src/personnel.sql`        | SQL script for personnel database  |
|     4.2 | `src/personnel.png`        | ER diagram / model image           |
|       5 | `README.md`                | Project documentation              |
|       6 | `INSTALL.md`               | Usage instructions                 |

---

## 1. DEPT (Departments)

Stores information about the organization's departments.

- **Primary Key:** `DEPTNO`
- **Fields:**
  - `DEPTNO` (int)
  - `DNAME` (varchar)
  - `LOC` (varchar)

---

## 2. JOB (Job Roles)

Defines job descriptions and associated base salaries.

- **Primary Key:** `JOBCODE`
- **Fields:**
  - `JOBCODE` (int)
  - `JOB_DESCR` (varchar)
  - `SAL` (int)

---

## 3. EMP (Employees)

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

## 4. Laboratory Activities

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
