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

-- Who is the most tenured employee?
-- ** Multiple hire dates at 1985-01-01. Answer didn't match.
SELECT employees.first_name, employees.last_name, employees.hire_date
FROM employees
ORDER BY hire_date, first_name;

-- What's the highest averaged salaried department?
-- ** Result sales with $80667.
SELECT departments.dept_name, AVG(salaries.salary) FROM employees
	JOIN salaries
    ON salaries.emp_no = employees.emp_no 
    JOIN dept_emp
    on dept_emp.emp_no = employees.emp_no
    JOIN departments
    on departments.dept_no = dept_emp.dept_no
    GROUP BY departments.dept_no
    ORDER BY AVG(salaries.salary) DESC;
    
-- Who is the oldest employee?
-- ** Multiple employees with the birth date of 1952-02-01.
SELECT employees.birth_date, employees.first_name, employees.last_name, employees.gender FROM employees
ORDER BY employees.birth_date;