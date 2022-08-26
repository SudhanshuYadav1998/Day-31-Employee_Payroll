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

--UC5 Salary data for particular employee and date in particular range--
select salary from EmployeePayroll where name='bill'
select name from EmployeePayroll where start_date between '2019-01-01' and GETDATE()

--UC6 add gender column--
alter table employeepayroll add gender char
update EmployeePayroll set gender='m' where name='bill' or name='charlie'
update EmployeePayroll set gender='f' where name ='terisa'

--UC7 sum/avg/min/max/count--
select gender,sum(salary) from employeepayroll group by gender
select gender,avg(salary) from employeepayroll group by gender
select gender,min(salary) from employeepayroll group by gender
select gender,max(salary) from employeepayroll group by gender
select gender,count(salary) from employeepayroll group by gender

--UC8 alter new collumns--
alter table employeepayroll add phone int,
address varchar(100) default 'US',
department varchar(20) default 'cs' not null
update EmployeePayroll set address='us' 

insert into EmployeePayroll(name,salary,start_date,phone,address,department)
values
('terisa',25000,'2017-12-23',null,'us','sales')
update EmployeePayroll set department='marketing' where id=2
