CREATE TABLE Department (
    DeptID INT PRIMARY KEY,
    DeptName VARCHAR(50) UNIQUE,
    Budget DECIMAL(10,2)
);

INSERT INTO Department VALUES
(101,'Computer',500000),
(102,'Mechanical',400000),
(103,'Civil',350000),
(104,'Electrical',450000),
(105,'AI & DS',600000);
SELECT * FROM Department;