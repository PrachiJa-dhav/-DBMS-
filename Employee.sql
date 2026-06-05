CREATE TABLE Employee (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(50),
    DeptID INT,
    CountryID INT,
    FOREIGN KEY(DeptID) REFERENCES Department(DeptID),
    FOREIGN KEY(CountryID) REFERENCES Country(CountryID)
);

INSERT INTO Employee VALUES
(1,'Raj',101,1),
(2,'Pooja',102,2),
(3,'Ajay',103,3),
(4,'Neha',104,4),
(5,'Vijay',105,5);
SELECT * FROM Employee;

SELECT * FROM Employee
WHERE DeptID = 101;

SELECT EmpName
FROM Employee
WHERE EmpID IN
(
   SELECT EmpID
   FROM Salary
   WHERE SalaryAmount >
   (
      SELECT AVG(SalaryAmount)
      FROM Salary
   )
);

START TRANSACTION;

UPDATE Salary
SET SalaryAmount = SalaryAmount + 2000
WHERE EmpID = 1;

COMMIT;

START TRANSACTION;

UPDATE Salary
SET SalaryAmount = SalaryAmount + 5000
WHERE EmpID = 2;

ROLLBACK;
SELECT * FROM Employee;

SELECT E.EmpName,
       D.DeptName,
       S.SalaryAmount
FROM Employee E
INNER JOIN Department D
ON E.DeptID = D.DeptID
INNER JOIN Salary S
ON E.EmpID = S.EmpID;

SELECT EmpName,DeptName
FROM Employee
RIGHT JOIN Department
ON Employee.DeptID=Department.DeptID;


