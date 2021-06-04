create database payroll_service16

select * from sys.databases

use payroll_service16

create table employee_payroll
(
id int identity (1,1) primary key,
name varchar(50) not null,
salary money not null,
start date not null
);
select * from employee_payroll

insert into employee_payroll values
('Ramesh',200000.0,'2019-8-14'),
('Tesrisha',150000.0,'2018-01-03'),
('Jack',50000.0,'2020-05-21');

insert into employee_payroll(salary,name,start)values
(250000.0,'Rani','2017-8-14');

select * from employee_payroll

select Salary from employee_payroll where name='raMesh'

select getdate() 'Today Date';

select * from employee_payroll where start between '2018-01-01' and GETDATE();

alter table employee_payroll add
gender char(1);

update employee_payroll set gender='F' where name= 'Tesrisha' or name= 'Rani'
update employee_payroll set gender='M' where name in ('Ramesh','Jack')

select * from employee_payroll

select sum(salary) from employee_payroll where gender='M' group by gender;

select sum(salary) from employee_payroll where gender='F' group by gender;

select avg(salary) from employee_payroll where gender = 'M' group by gender;

select min(salary) from employee_payroll where gender = 'M' group by gender;

select max(salary) from employee_payroll where gender = 'M' group by gender;

select count(salary) from employee_payroll where gender = 'M' group by gender;

select count(salary) from employee_payroll where gender = 'F' group by gender;




