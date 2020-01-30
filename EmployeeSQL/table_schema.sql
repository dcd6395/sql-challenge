DROP TABLE departments;
DROP TABLE employees;
DROP TABLE dept_manager;
DROP TABLE dept_emp;
DROP TABLE salaries;
DROP TABLE titles;

CREATE TABLE departments (
	dept_no VARCHAR(30) PRIMARY KEY, 
	dept_name VARCHAR(30) NOT NULL
);

CREATE TABLE employees (
	emp_no INT PRIMARY KEY,
	birth_date DATE,
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	gender VARCHAR(30),
	hire_date DATE
);

-- use foreign key to refer to primary key in departments and employees
CREATE TABLE dept_emp (
	emp_no INT,
	dept_no VARCHAR(30),
	from_date DATE,
	to_date DATE,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

-- use foreign key to refer to primary key in employees and departments
CREATE TABLE dept_manager (
	dept_no VARCHAR(30),
	emp_no INT,
	from_date DATE,
	to_date DATE,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

-- use foreign key to refer to primary key in employees
CREATE TABLE salaries (
	emp_no INT,
	salary INT,
	from_date DATE,
	to_date DATE,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

-- use foreign key to refer to primary key in employees
CREATE TABLE titles (
	emp_no INT,
	title VARCHAR(30),
	from_date DATE,
	to_date DATE,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT * FROM departments;
SELECT * FROM dept_emp;
SELECT * FROM dept_manager;
SELECT * FROM employees;
SELECT * FROM salaries;
SELECT * FROM titles;
