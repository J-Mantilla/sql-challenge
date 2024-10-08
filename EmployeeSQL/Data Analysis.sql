--List the employee number, last name, first name, sex, and salary of each employee.
SELECT "Employees".emp_no, "Employees".last_name, "Employees".first_name,"Employees".sex, "Salaries".salary
FROM "Employees" JOIN "Salaries" ON "Employees".emp_no = "Salaries".emp_no;

--List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT first_name, last_name, hire_date 
FROM "Employees"
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31'
ORDER BY hire_date;

--List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT "Departments".dept_no, "Departments".dept_name, "Dept_manager".emp_no, "Employees".last_name, "Employees".first_name
FROM "Departments"
JOIN "Dept_manager"
ON "Departments".dept_no = "Dept_manager".dept_no
JOIN "Employees" ON "Dept_manager".emp_no = "Employees".emp_no;

--List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
SELECT "Dept_Emp".emp_no, "Employees".last_name, "Employees".first_name, "Departments".dept_name, "Departments".dept_no
FROM "Dept_Emp"
JOIN "Employees"
ON "Dept_Emp".emp_no = "Employees".emp_no
JOIN "Departments"
ON "Dept_Emp".dept_no = "Departments".dept_no;

--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
SELECT "Employees".first_name, "Employees".last_name, "Employees".sex
FROM "Employees"
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

--List each employee in the Sales department, including their employee number, last name, and first name.
SELECT "Departments".dept_name, "Employees".first_name, "Employees".last_name, "Employees".emp_no
FROM "Dept_Emp"
JOIN "Employees"
ON "Dept_Emp".emp_no = "Employees".emp_no
JOIN "Departments"
ON "Dept_Emp".dept_no = "Departments".dept_no
WHERE "Departments".dept_name = 'Sales';

--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT "Departments".dept_name, "Employees".first_name, "Employees".last_name, "Employees".emp_no
FROM "Dept_Emp"
JOIN "Employees"
ON "Dept_Emp".emp_no = "Employees".emp_no
JOIN "Departments"
ON "Dept_Emp".dept_no = "Departments".dept_no
WHERE "Departments".dept_name = 'Sales'
OR "Departments".dept_name = 'Development';

--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
SELECT last_name, COUNT(last_name) AS last_name_count
FROM "Employees"
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;