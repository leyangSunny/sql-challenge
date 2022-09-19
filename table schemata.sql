CREATE TABLE employees (
    emp_No int  NOT NULL ,
    emp_title_id varchar(30)  NOT NULL ,
    birth_date Date  NOT NULL ,
    first_name varchar(30)  NOT NULL ,
    last_name varchar(30)  NULL ,
    sex varchar(1)  NOT NULL ,
    hire_date DATE NOT NULL ,
    PRIMARY KEY (emp_No)
);

create table departments (
	dept_no VARCHAR(10) primary key NOT NULL,
	dept_name VARCHAR(50) NOT NULL
);

create table dept_manager (
	dept_no VARCHAR(10) NOT NULL,
	emp_no INT NOT NULL,
    foreign key (emp_no) references employees (emp_no),
    foreign key (dept_no) references departments (dept_no)
);

create table dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR(30) NOT NULL,
    foreign key (emp_no) references employees (emp_no),
    foreign key (dept_no) references departments (dept_no)
);

create table titles (
	title_id VARCHAR(10) NOT NULL,
	title VARCHAR(30) NOT NULL,
	CONSTRAINT "pk_titles" PRIMARY KEY (
        "title_id")
);


create table salaries (
	emp_no INT NOT NULL,
	salary INT NOT NULL,
    foreign key (emp_no) references employees (emp_no)
);
