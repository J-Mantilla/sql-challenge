# Data Engineering Project - README

## Project Overview

This Data Engineering project involves creating table schemas for six CSV files, specifying data types, primary keys, foreign keys, and other constraints. The task also includes importing data into SQL tables and performing various data analysis queries. The goal is to design a well-structured database and extract meaningful insights from the data.

## Requirements

### 1. Database Schema Design

- **Create Table Schemas:**
  - Define schemas for each of the six CSV files.
  - Specify data types for each column.
  - Identify and set primary keys; if a column is not unique, create a composite key using two columns.
  - Define foreign keys to establish relationships between tables.
  - Apply any additional constraints as needed (e.g., `NOT NULL`, `UNIQUE`).

- **Create Tables:**
  - Ensure that tables are created in the correct order to manage foreign key dependencies.

### 2. Data Import

- **Import CSV Files:**
  - Import data from each CSV file into its corresponding SQL table.
  - Verify that data is correctly loaded and that constraints are enforced.

### 3. Data Analysis Queries

Perform the following SQL queries to analyze the data:

- **Employee Information:**
  - List the employee number, last name, first name, sex, and salary of each employee.

- **Employees Hired in 1986:**
  - List the first name, last name, and hire date of employees hired in 1986.

- **Department Managers:**
  - List the manager of each department, including department number, department name, employee number, last name, and first name.

- **Employee Departments:**
  - List the department number for each employee along with their employee number, last name, first name, and department name.

- **Specific Employees:**
  - List the first name, last name, and sex of employees whose first name is "Hercules" and whose last name starts with the letter "B."

- **Sales Department Employees:**
  - List each employee in the Sales department, including their employee number, last name, and first name.

- **Sales and Development Departments:**
  - List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

- **Employee Last Name Frequency:**
  - List the frequency counts, in descending order, of all employee last names.
