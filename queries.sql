----Details of each employee: employee number, last name, first name, gender, and salary
SELECT e.emp_no, e.last_name, e.first_name, e.gender, s.salaries
from employees as e 
inner join salaries as s
on e.emp_no = s.emp_no;

----employees who were hired in 1986
SELECT * from employees
where hire_date like '1986%';

----manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates
SELECT d.dept_no, d.dept_name, dm.emp_no,e.last_name, e.first_name, dm.from_date, dm.to_date
from departments as d
join dept_manager as dm
on d.dept_no = dm.dept_no
join employees as e
on e.emp_no = dm.emp_no;

----department of each employee with the following information: employee number, last name, first name, and department name
SELECT e.emp_no, e.last_name, e.first_name, dm.dept_name
from employees as e
join dept_emp as d
on e.emp_no = d.emp_no
join departments as dm
on dm.dept_no = d.dept_no;

---- employees whose first name is "Hercules" and last names begin with "B.
SELECT * from employees
WHERE first_name = 'Hercules' and last_name like 'B%';


----employees in the Sales department, including their employee number, last name, first name, and department name
SELECT e.emp_no, e.last_name, e.first_name, dm.dept_name
from employees as e
join dept_emp as d 
on e.emp_no = d.emp_no
join departments as dm 
on d.dept_no = dm.dept_no
WHERE dm.dept_name = 'Sales';

---- employees in the Sales and Development departments, including their employee number, last name, first name, and department name
SELECT e.emp_no, e.last_name, e.first_name, dm.dept_name
from employees as e
join dept_emp as d 
on e.emp_no = d.emp_no
join departments as dm 
on d.dept_no = dm.dept_no
WHERE dm.dept_name = 'Sales' or dm.dept_name = 'Development';


----In descending order, list the frequency count of employee last names, i.e., how many employees share each last name
select last_name, count(last_name)
from employees 
group by last_name
order by count desc;


