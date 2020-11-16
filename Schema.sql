drop table if exists departments;
drop table if exists dept_emp;
drop table if exists dept_manager;
drop table if exists employees;
drop table if exists salaries;
drop table if exists titles;

-- create and import csv to tables
create table departments (
	dept_no varchar primary key,
	dept_name varchar
);
select * from departments;

create table dept_emp (
	emp_no varchar,
	dept_no varchar,
	primary key (emp_no, dept_no)
);
select * from dept_emp;

create table dept_manager(
	dept_no varchar,
	emp_no varchar,
	primary key (dept_no, emp_no)
);
select * from dept_manager;

create table employees(
	emp_no varchar primary key,
	emp_title_id varchar,
	bith_date date,
	first_name varchar,
	last_name varchar,
	sex char(1),
	hire_date date
);
select * from employees;

create table salaries(
	emp_no varchar primary key,
	salary int
);
select * from salaries;

create table titles(
	title_id varchar primary key not null,
	title varchar
);
select * from titles;