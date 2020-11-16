
-- list details on employees- employee number, last name, first name, sex, and salary

select employees.emp_no, last_name, first_name, sex, salaries.salary 
from employees
left join salaries 
on employees.emp_no=salaries.emp_no;

--List first name, last name, and hire date for employees who were hired in 1986

select first_name, last_name, hire_date
from employees
where hire_date >= '1/1/1986'
and hire_date < '1/1/1987';

--List the manager of each department w/-departmentNumber, departmentName, managerEmployee #, last name, first name.

select dept_manager.dept_no, departments.dept_name, employees.emp_no, last_name, first_name
from dept_manager  
join departments 
on dept_manager.dept_no=departments.dept_no
left join employees 
on dept_manager.emp_no=employees.emp_no;

--List the department ofemployee w/: employee number, last name, first name, and department name.

select employees.emp_no, last_name, first_name, departments.dept_name
from employees
join dept_emp
on employees.emp_no=dept_emp.emp_no
join departments
on dept_emp.dept_no=departments.dept_no;

--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

select first_name, last_name, sex
from employees
where first_name='Hercules'
and last_name like 'B%'

--List all in Sales and Development departments give employee number, last name, first name, and department name.

select employees.emp_no, last_name, first_name, departments.dept_name
from employees
join dept_emp
on employees.emp_no=dept_emp.emp_no
join departments
on dept_emp.dept_no=departments.dept_no
where dept_name='Sales'
or dept_name='Development';

--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

select last_name, count(last_name) as Name_Count
from employees
group by last_name
order by 2 desc;

--It is November not April...

select first_name, last_name, sex, hire_date, bith_date
from employees
where emp_no='499942';
