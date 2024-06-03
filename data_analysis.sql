-- List the employee number, last name, first name, sex, and salary of each employee.
select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from employees e
inner join salaries s
on e.emp_no = s.emp_no;

-- List the first name, last name, and hire date for the employees who were hired in 1986.
select first_name, last_name, hire_date
from employees 
where hire_date like '%1986';

-- List the manager of each department along with their department number, department name, employee number, last name, and first name


-- List the department number for each employee along with that employee’s employee number, last name, first name, and department name.


-- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.


-- List each employee in the Sales department, including their employee number, last name, and first name


-- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name


-- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name)


