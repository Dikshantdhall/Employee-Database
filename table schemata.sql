--- Table schema fro csv files
Create table departments(
dept_no varchar Primary key,
dept_name varchar);


create table employees(
emp_no int primary key,
birth_date varchar,
first_name varchar,
last_name varchar,
gender varchar,
hire_date varchar);


Create table dept_emp(
emp_no int,
dept_no varchar,
from_date varchar,
to_date varchar,
Foreign key(emp_no) References employees(emp_no),
Foreign key(dept_no) References departments(dept_no));


create table dept_manager(
dept_no varchar,
emp_no int,
from_date varchar,
to_date varchar,
Foreign key(dept_no) References departments(dept_no),
Foreign key(emp_no) References employees(emp_no));

create table salaries(
emp_no int,
salaries int,
from_date varchar,
to_date varchar,
Foreign key(emp_no) References employees(emp_no)
);

create table titles(
emp_no int,
title varchar,
from_date varchar,
to_date varchar,
Foreign key(emp_no) References employees(emp_no));



