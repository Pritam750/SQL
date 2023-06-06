create database PRITAM;
use database PRITAM;
 CREATE TABLE Employee (employee_id INT PRIMARY KEY,
        first_name VARCHAR(50),
        last_name VARCHAR(50),
        email VARCHAR(100),
        phone_number VARCHAR(20),
        hire_date DATE,
        salary DECIMAL(10,2),
        department_id INT );
