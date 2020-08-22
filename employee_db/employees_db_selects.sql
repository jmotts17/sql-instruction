SELECT * FROM employees.employees;

-- What is the average employee salary?
SELECT AVG(salary) Average_Salary FROM employees.employees
JOIN salaries
ON employees.emp_no = salaries.emp_no;

-- What is the maximum salary, who?
SELECT employees.first_name, employees.last_name, salaries.salary
	FROM employees.employees
		JOIN salaries
        ON employees.emp_no = salaries.emp_no
        ORDER BY salaries.salary DESC;