drop table if exists departments, dept_emp, dept_manager, employees, salaries, titles cascade;

create table titles (
	title_id varchar(5) not null,
	title varchar(50),
	primary key (title_id)
);

create table departments (
	dept_no varchar(5) not null,
	dept_name varchar(50),
	primary key (dept_no)
);

create table employees (
	emp_no int not null,
	emp_title_id varchar(5) not null,
	birth_date varchar(20),
	first_name varchar(20),
	last_name varchar(20),
	sex varchar(1),
	hire_date varchar(20),
	primary key (emp_no),
	foreign key (emp_title_id) references titles(title_id)
);

create table dept_emp (
	emp_no int not null,
	dept_no varchar(5) not null,
	foreign key (emp_no) references employees(emp_no),
	foreign key (dept_no) references departments(dept_no)
);

create table dept_manager (
	dept_no varchar(5) not null,
	emp_no int not null,
	foreign key (dept_no) references departments(dept_no),
	foreign key (emp_no) references employees(emp_no)
);

create table salaries (
	emp_no int not null,
	salary int,
	foreign key (emp_no) references employees(emp_no)
);
