-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/vtdYW3
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "departments" (
    "dept_no" VARCHAR  	 PRIMARY KEY,
    "dept_name" VARCHAR   NOT NULL
   
);

CREATE TABLE "dept_emp" (
    "emp_no" INT  ,
    "dept_no" VARCHAR   NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);

CREATE TABLE "dept_manager" (
    "dept_no" VARCHAR   NOT NULL,
    "emp_no" INT   PRIMARY KEY,
    FOREIGN KEY	(emp_no) REFERENCES	employees (emp_no)
);

CREATE TABLE "employees" (
    "emp_no" INT  PRIMARY KEY,
    "birth_date" DATE   NOT NULL,
    "first_name" VARCHAR   NOT NULL,
    "last_name" VARCHAR   NOT NULL,
    "sex" VARCHAR   NOT NULL,
    "hire_date" VARCHAR   NOT NULL,
    "emp_title_id" VARCHAR   NOT NULL,
    FOREIGN KEY (emp_title_id) REFERENCES titles (title_id)
  
);

CREATE TABLE "salaries" (
    "emp_no" INT  PRIMARY KEY,
    "salary" INT   NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);

CREATE TABLE titles(
	title_id VARCHAR  PRIMARY KEY,
	title VARCHAR  NOT NULL
);
