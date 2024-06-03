drop table if exists departments, dept_emp, dept_manager, employees, salaries, titles cascade;

create table departments (
	dept_no varchar(5) not null primary key,
	dept_name varchar(50),
	primary key (dept_no)
);

create table dept_emp (
	emp_no int not null,
	dept_no varchar(5) not null,
	foreign key (emp_no) references employees(emp_no),
	foreign key (dept_no) references departments(dept_no)
);

create table dept_manager (
	dept_no varchar(5) not null,
	emp_no int not null
);

create table employees (
	emp_no int not null,
	emp_title_id varchar(5) not null,
	birth_date varchar(20),
	first_name varchar(20),
	last_name varchar(20),
	sex varchar(1),
	hire_date varchar(20)
);

create table salaries (
	emp_no int not null,
	salary int
);

create table titles (
	title_id varchar(5) not null,
	title varchar(50)
);