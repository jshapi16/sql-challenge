SELECT
	e.emp_no
	,e.last_name
	,e.first_name
	,e.sex
	,s.salary
FROM 
	employees e
JOIN salaries s ON e.emp_no = s.emp_no;



SELECT
	first_name
	,last_name
	,hire_date
FROM 
	employees
WHERE 1=1
	and hire_date between '1986-01-01' AND '1986-12-31';



SELECT
	d.dept_no
	,d.dept_name
	,e.first_name
	,e.last_name
	,e.emp_no
	,dm.dept_no
FROM 
	departments d
JOIN dept_manager dm ON d.dept_no = dm.dept_no
JOIN employees e ON dm.emp_no = e.emp_no;



SELECT
	d.dept_name
	,e.first_name
	,e.last_name
	,e.emp_no
FROM 
	departments d
JOIN dept_emp de ON de.dept_no = d.dept_no
JOIN employees e ON e.emp_no = de.emp_no;

SELECT
	first_name
	,last_name
	,sex
FROM 
	employees
WHERE 1=1
	and first_name = 'Hercules'
	and last_name ilike 'B%'


SELECT
	d.dept_name
	,e.first_name
	,e.last_name
	,e.emp_no
FROM 
	departments d
JOIN dept_emp de ON de.dept_no = d.dept_no
JOIN employees e ON e.emp_no = de.emp_no
WHERE 1=1
	and d.dept_name = 'Sales';


SELECT
	d.dept_name
	,e.first_name
	,e.last_name
	,e.emp_no
FROM 
	departments d
JOIN dept_emp de ON de.dept_no = d.dept_no
JOIN employees e ON e.emp_no = de.emp_no
WHERE 1=1
	and d.dept_name = 'Sales' OR d.dept_name = 'Development';



SELECT
	last_name
	,count(last_name) as cnt_name
FROM 
	employees
GROUP BY last_name
ORDER BY cnt_name DESC;