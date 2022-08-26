--UC1 creating payroll_services databse--
create database Payrolls_Services

--UC2 creating EmployeePayroll Table--
use Payrolls_Services
create table EmployeePayroll
(
id int identity(1,1) primary key,
name varchar(25) not null,
salary money not null,
start_date date not null,
)

--UC3 Inserting new contacts in employeepayroll Table--
insert into EmployeePayroll(name,salary,start_date)
values
('bill',25000,'2017-12-23'),
('terisa',12000,'2018-5-21'),
('charlie',20000,'2020-11-21')

--UC4 retrieve all employee data--
select*from EmployeePayroll
