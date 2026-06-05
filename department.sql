CREATE DATABASE department;
CREATE TABLE department (
dept_id INT PRIMARY KEY,
dept_name VARCHAR(50),
city VARCHAR(50),
college_name VARCHAR(50)
);
INSERT INTO department (dept_id,dept_name,city,college_name)
VALUES 
(2905,'Computer Engineering','Lonere','Dbatu'),
(2906,'Civil Engineering','Lonere','Dbatu'),
(2907,'Chemical Engineering','Lonere','Dbatu'),
(2908,'Mechanical Engineering','Lonere','Dbatu'),
(2909,'Electrical Engineering','Lonere','Dbatu');
SELECT* FROM department;
