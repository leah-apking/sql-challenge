-- Employee Salaries
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees e
JOIN salaries AS s
	ON e.emp_no = s.emp_no;

-- Hired in 1986
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date between '1986-01-01' and '1986-12-31';

-- Department Manager Info
SELECT dept_manager.emp_no, dept_manager.dept_no, d.dept_name, e.first_name, e.last_name
FROM dept_manager
JOIN departments d
	ON dept_manager.dept_no = d.dept_no
JOIN employees e
	ON dept_manager.emp_no = e.emp_no;

-- Employee Departments
SELECT dept_emp.emp_no, dept_emp.dept_no, e.first_name, e.last_name, d.dept_name
FROM dept_emp
JOIN employees e
	ON dept_emp.emp_no = e.emp_no
JOIN departments d
	ON dept_emp.dept_no = d.dept_no;

-- Hercules B.
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

-- Sales Department Employees
SELECT dept_emp.emp_no, e.first_name, e.last_name
FROM dept_emp
JOIN employees e
	ON dept_emp.emp_no = e.emp_no
WHERE dept_no IN
(
	SELECT dept_no
	FROM departments
	WHERE dept_name = 'Sales');

-- Sales and Development
SELECT dept_emp.emp_no, e.first_name, e.last_name, d.dept_name
FROM dept_emp
JOIN employees e
	ON dept_emp.emp_no = e.emp_no
JOIN departments d
	ON d.dept_no = dept_emp.dept_no
WHERE dept_emp.dept_no IN
(
	SELECT dept_no
	FROM departments
	WHERE dept_name = 'Sales' OR dept_name = 'Development');

-- Last Name Frequencies
SELECT last_name, COUNT(last_name) as last_name_count
FROM employees
GROUP BY last_name
ORDER BY last_name_count DESC;
