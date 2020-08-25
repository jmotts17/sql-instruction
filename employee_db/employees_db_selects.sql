SELECT * FROM employees.employees;

-- What is the average employee salary?     
-- ** Average salary doesn't match answer
SELECT AVG(salary) as Average_Salary FROM employees.employees
JOIN salaries
ON salaries.emp_no = employees.emp_no;

-- What is the maximum salary, who?
SELECT employees.first_name, employees.last_name, salaries.salary
	FROM employees.employees
		JOIN salaries
        ON employees.emp_no = salaries.emp_no
        ORDER BY salaries.salary DESC LIMIT 1;
        
-- What is the minimum salary, who?
SELECT employees.first_name, employees.last_name, salaries.salary
	FROM employees.employees
		JOIN salaries
        ON employees.emp_no = salaries.emp_no
        ORDER BY salaries.salary ASC LIMIT 1;
        
-- What is the most common title?
SELECT titles.title, count(title) FROM employees.employees
	JOIN titles
    ON titles.emp_no = employees.emp_no
    GROUP BY titles.title
    ORDER BY count(title) DESC;
    
-- Which dept. has the most employees, how many?     
-- ** Number of developers doesn't match answer, but dept#/title does
SELECT departments.dept_no, departments.dept_name, count(dept_emp.emp_no) FROM dept_emp
JOIN employees
ON employees.emp_no = dept_emp.emp_no
JOIN departments
ON departments.dept_no = dept_emp.dept_no
GROUP BY departments.dept_name;
