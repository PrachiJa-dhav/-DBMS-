CREATE TABLE Salary (
    SalaryID INT PRIMARY KEY,
    EmpID INT,
    SalaryAmount DECIMAL(10,2),
    Bonus DECIMAL(10,2),
    FOREIGN KEY(EmpID) REFERENCES Employee(EmpID)
);

INSERT INTO Salary VALUES
(1,1,50000,5000),
(2,2,60000,6000),
(3,3,55000,4500),
(4,4,70000,7000),
(5,5,80000,8000);
SELECT *FROM Salary;

SELECT MAX(SalaryAmount) AS HighestSalary
FROM Salary;

SELECT MIN(SalaryAmount) AS LowestSalary
FROM Salary;

SELECT SUM(SalaryAmount) AS TotalSalary
FROM Salary;

DELIMITER //

CREATE FUNCTION AnnualSalary(MonthlySalary DECIMAL(10,2))
RETURNS DECIMAL(12,2)

DETERMINISTIC
BEGIN
   RETURN MonthlySalary * 12;
END//

DELIMITER ;

SELECT AnnualSalary(50000);



