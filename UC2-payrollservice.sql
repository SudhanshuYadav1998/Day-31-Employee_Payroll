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