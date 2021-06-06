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

alter table employee_payroll add
PhoneNo varchar(12),
Address varchar(300),
Department varchar (50);
select *from employee_payroll

update employee_payroll set phoneNo='818188181',Address='Mumbai',Department='CS' where name='Ramesh'
update employee_payroll set phoneNo='877171777',Address='Pune',Department='CS' where name='Tesrisha'
update employee_payroll set phoneNo='992929292',Address='New York',Department='CS' where name='Jack'
update employee_payroll set phoneNo='818188181',Address='Delhi',Department='CS' where name='Rani'

alter table employee_payroll add
Deducation float,
Taxable_Pay real,
Income_Tax real,
Net_pay real;
select *from employee_payroll

update employee_payroll set Basic_pay=50000,Deducation=15500, Taxable_Pay=2000, Income_Tax=30000, Net_pay=200000 where name='Ramesh'
update employee_payroll set Basic_pay=50000,Deducation=1500, Taxable_Pay=2450, Income_Tax=40000, Net_pay=150000 where name='Tesrisha'
update employee_payroll set Basic_pay=20000,Deducation=2000, Taxable_Pay=5000, Income_Tax=3000, Net_pay=50000 where name='Jack'
update employee_payroll set Basic_pay=50000,Deducation=3500, Taxable_Pay=2000, Income_Tax=60000, Net_pay=250000 where name='Rani'

update employee_payroll set Department = 'Sales' where name = 'Tesrisha' 
update employee_payroll set Department = 'Marketing' where name = 'Ramesh' 
update employee_payroll set Department = 'HR' where name = 'Jack' 
update employee_payroll set Department = 'sales' where name = 'Rani' 