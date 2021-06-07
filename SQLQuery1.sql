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
Address varchar(50)

Update employee_payroll set Address='India'
Update employee_payroll set Address='India'
Update employee_payroll set Address='India'
Update employee_payroll set Address='India'

select *from employee_payroll

create table Department
(
Dept_Id int,
Dept_Name varchar(10) default 'CS'
);
Alter table Department add
foreign key(Dept_Id) References employee_payroll(Id);
select *from Department
Insert into Department(Dept_Name) values
('Sales'),
('Sales'),
('HR'),
('Marketing');

create table Dept_Emp
(
Dept_Id int,
EMP_Id int
);
Alter table Dept_Emp add
foreign key(EMP_Id) References employee_payroll(Id);
select *from Dept_Emp
Insert into Dept_Emp(Dept_Id) values
(101),
(102),
(103),
(104);

alter table employee_payroll add
Deducation int,
Taxable_Pay int,
Income_Tax int,
Net_pay int;

Select *from employee_payroll

Update employee_payroll set Deducation=10000,Taxable_Pay=5000,Income_Tax=10000,Net_Pay=100000 where name='Ramesh';
Update employee_payroll set Deducation=20000,Taxable_Pay=4000,Income_Tax=20000,Net_Pay=100000 where name='Tesrisha';
Update employee_payroll set Deducation=3000,Taxable_Pay=7000,Income_Tax=15000,Net_Pay=200000 where name='Jack';
Update employee_payroll set Deducation=15000,Taxable_Pay=8000,Income_Tax=10000,Net_Pay=250000 where name='Rani';

create table phoneNo
(
Emp_Id int,
Emp_PhoneNo int
);
Alter table PhoneNo add
foreign key(EMP_Id) References employee_payroll(Id);