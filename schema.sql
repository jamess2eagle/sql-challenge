create table departments(
	dept_no varchar primary key,
	dept_name varchar
);


select * from departments


create table titles (
	title_id varchar primary key,
	title varchar
);

select * from titles


create table salaries (
	emp_no varchar primary key,
	salary int
);

select * from salaries

create table employees (
	emp_no varchar primary key,
	title_id varchar,
	foreign key (title_id) references titles(title_id),
	birth_date varchar,
	first_name varchar,
	last_name varchar,
	sex varchar,
	hire_date varchar
)

select * from employees

create table dept_emp (
	emp_no varchar NOT NULL,
	foreign key (emp_no) references employees(emp_no),
	dept_no varchar NOT NULL,
	foreign key (dept_no) references departments(dept_no),
	primary key (emp_no, dept_no)
)

select * from dept_emp

create table dept_manager (
	dept_no varchar NOT NULL,
	foreign key (dept_no) references departments(dept_no),
	emp_no varchar not null,
	foreign key (emp_no) references employees(emp_no),
	primary key(dept_no, emp_no)
)

select * from dept_manager
