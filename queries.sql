--1List the employee number, last name, first name, sex, and salary of each employee.
select employees.last_name, employees.first_name, employees.sex, salaries.salary, salaries.emp_no  
from employees 
inner join salaries 
on salaries.emp_no = employees.emp_no

--2 List the first name, last name, and hire date for the employees who were hired in 1986.
select first_name, last_name, hire_date 
from employees 
where extract(year from hire_date) = 1986;

--3List the manager of each department along with their 
--department number, department name, employee number, last name, and first name.

select departments.dept_no, departments.dept_name,employees.emp_no, employees.last_name, employees.first_name
from employees 
join dept_manager
on employees.emp_no = dept_manager.emp_no
join departments
on departments.dept_no=dept_manager.dept_no

--4List the department number for each employee along with that 
--employee’s employee number, last name, first name, and department name.
select employees.last_name, employees.first_name, employees.emp_no, departments.dept_no, dept_emp.emp_no, departments.dept_name
from employees 
join dept_emp
on employees.emp_no = dept_emp.emp_no
join departments
on departments.dept_no=dept_emp.dept_no

--5List first name, last name, and sex of each employee 
--whose first name is Hercules and whose last name begins with the letter B.
SELECT first_name, last_name, sex
FROM employees 
WHERE (first_name = 'Hercules') and (last_name LIKE 'B%') 


--6List each employee in the Sales department, 
--including their employee number, last name, and first name.
select employees.emp_no, employees.last_name, employees.first_name
from employees 
join dept_emp
on employees.emp_no = dept_emp.emp_no
join departments
on departments.dept_no=dept_emp.dept_no
where departments.dept_name = 'Sales';

--7List each employee in the Sales and Development departments, 
--including their employee number, last name, first name, and department name.

select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from employees 
join dept_emp
on employees.emp_no = dept_emp.emp_no
join departments
on departments.dept_no=dept_emp.dept_no
where departments.dept_name = 'Sales' or departments.dept_name = 'Development';

--8List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
select last_name, count(last_name) as Frequency 
from employees 
group by last_name
order by frequency desc;