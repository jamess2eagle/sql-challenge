-- 1. List the following details of each employee: employee number, last name, first name, sex, and salary.

SELECT emp.emp_no, emp.last_name, emp.first_name, emp.sex, sal.salary from employees emp
join salaries sal on emp.emp_no = sal.emp_no;


-- 2. List first name, last name, and hire date for employees who were hired in 1986.

SELECT emp.first_name, emp.last_name, emp.hire_date from employees emp
where hire_date LIKE '%1986';

-- 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

select mgr.dept_no, dept.dept_name, mgr.emp_no, emp.last_name, emp.first_name from dept_manager mgr
join departments dept on mgr.dept_no = dept.dept_no
join employees emp on mgr.emp_no = emp.emp_no;


-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.

select emp.emp_no, emp.last_name, emp.first_name, dept.dept_name from employees emp
join dept_emp on emp.emp_no = dept_emp.emp_no
join departments dept on dept_emp.dept_no = dept.dept_no;

-- 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

select first_name, last_name, sex
from employees
where first_name = 'Hercules' and last_name LIKE 'B%';

-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

select emp.emp_no, emp.last_name, emp.first_name, dept.dept_name from employees emp
join dept_emp on emp.emp_no = dept_emp.emp_no
join departments dept on dept_emp.dept_no = dept.dept_no
where dept.dept_name = 'Sales';


-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

select emp.emp_no, emp.last_name, emp.first_name, dept.dept_name from employees emp
join dept_emp on emp.emp_no = dept_emp.emp_no
join departments dept on dept_emp.dept_no = dept.dept_no
where dept.dept_name in ('Sales', 'Development');



-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
select last_name, count(last_name) from employees
group by last_name
order by count desc

