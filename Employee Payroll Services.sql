create database payroll_service;  
show databases;           
use payroll_service;              
 create table employee_payroll (id INT unsigned NOT NULL AUTO_INCREMENT, name VARCHAR(30) NOT NULL,
 salary Double NOT NULL, start DATE NOT NULL, PRIMARY KEY (id));
select * from employee_payroll where start between CAST('2018-01-01' AS DATE)AND DATE(NOW());
alter table employee_payroll add gender char(1) after name; 
alter table payroll_service.employee_payroll add phone_number varchar(25) after name;
alter table payroll_service.employee_payroll add address varchar(100) DEFAULT 'TBD' after phone_number;
alter table payroll_service.employee_payroll add department varchar(150) not null after address;
select * from payroll_service.employee_payroll;
Delete from  payroll_service.employee_payroll where department;
ALTER table payroll_service.employee_payroll rename column salary to basic_pay;
ALTER table payroll_service.employee_payroll add deductions int not null after basic_pay; 
ALTER table payroll_service.employee_payroll add taxablePay int not null after deductions;
ALTER table payroll_service.employee_payroll add netPay int not null after taxablePay;
insert into employee_payroll(id, name, phone_number, address, department, gender, basic_pay, deductions, taxablePay, netPay, incomeTax, start) values
     (121,'terisa','4512474562','TBD','Marketing','F',3000000.00,1000000.00,3000000.00,500000.00,50000.00,'2019-11-13');
insert into employee_payroll(id, name, phone_number, address, department, gender, basic_pay, deductions, taxablePay, netPay, incomeTax, start) values
     (122,'terisa','4512474562','TBD','Sales','F',2000000.00,5000000.00,300000.00,400000.00,50000.00,'2019-11-13');
SELECT * FROM payroll_service.employee_payroll;