
CREATE TABLE titles (
	title_id varchar(10) PRIMARY KEY,
	title varchar(30)
);

CREATE TABLE employees (
	emp_no varchar(10) PRIMARY KEY,
	emp_title_id varchar(10) references titles(title_id),
	birth_date date NOT NULL,
	first_name varchar(35) NOT NULL,
	last_name varchar(35) NOT NULL,
	sex varchar(1) NOT NULL,
	hire_date date NOT NULL
);

CREATE TABLE departments (
	dept_no varchar(10) PRIMARY KEY,
	dept_name varchar(35) NOT NULL
);

CREATE TABLE dept_manager (
	dept_no varchar(10) references departments(dept_no),
	emp_no varchar(10) NOT NULL
);

CREATE TABLE dept_emp (
	emp_no varchar(10) references employees(emp_no),
	dept_no varchar(10) references departments(dept_no)
);

CREATE TABLE salaries (
	emp_no varchar(10) references employees(emp_no),
	salary int NOT NULL
);