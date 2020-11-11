CREATE TABLE titles (
    title_id VARCHAR NOT NULL,
    title VARCHAR NOT NULL,
    PRIMARY KEY (title_id)
);

SELECT * FROM titles


CREATE TABLE employees (
    emp_no INTEGER NOT NULL,
    emp_title_id VARCHAR NOT NULL,
    birth_date date NOT NULL,
    first_name VARCHAR NOT NULL,
    last_name VARCHAR NOT NULL,
    sex VARCHAR NOT NULL,
    hire_date date NOT NULL,
    FOREIGN KEY (emp_title_id) REFERENCES titles (title_id),
    PRIMARY KEY (emp_no)
);

SELECT * FROM employees


CREATE TABLE departments (
    dept_no VARCHAR NOT NULL,
    dept_name VARCHAR NOT NULL,
  PRIMARY KEY (dept_no)
);

SELECT * FROM departments 


CREATE TABLE dept_emp (
    emp_no INTEGER NOT NULL,
    dept_no VARCHAR NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
    PRIMARY KEY (emp_no, dept_no)
);

SELECT * FROM dept_emp


CREATE TABLE dept_manager (
    dept_no VARCHAR NOT NULL,
    emp_no INTEGER NOT NULL,
    FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
    PRIMARY KEY (dept_no, emp_no)
);

SELECT * FROM dept_manager


CREATE TABLE salaries (
    emp_no INTEGER NOT NULL,
    salary INTEGER NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
    PRIMARY KEY (emp_no)
);

SELECT * FROM salaries