CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(50),
    Age INT CHECK(Age>=18),
    DeptID INT,
    CountryID INT,
    CGPA DECIMAL(3,2),
    FOREIGN KEY(DeptID) REFERENCES Department(DeptID),
    FOREIGN KEY(CountryID) REFERENCES Country(CountryID)
);

INSERT INTO Student VALUES
(1,'Amit',20,101,1,8.5),
(2,'Riya',21,102,2,7.9),
(3,'Rahul',22,103,3,8.2),
(4,'Sneha',20,104,4,9.1),
(5,'Karan',23,105,5,8.8);
SELECT * FROM Student;

SELECT StudentName, CGPA
FROM Student
WHERE CGPA > 8;

SELECT COUNT(*) AS TotalStudents
FROM Student;

SELECT AVG(CGPA) AS AverageCGPA
FROM Student;
SELECT COUNT(*) AS TotalStudents
FROM Student;

SELECT AVG(CGPA) AS AverageCGPA
FROM Student;

UPDATE Student
SET CGPA = 9.0
WHERE StudentID = 1;

DELETE FROM Student
WHERE StudentID = 5;

CREATE VIEW StudentDetails AS
SELECT StudentName,
       CGPA,
       DeptID
FROM Student;

SELECT * FROM StudentDetails;

SELECT S.StudentName,
       D.DeptName
FROM Student S
INNER JOIN Department D
ON S.DeptID = D.DeptID;

SELECT DeptID, COUNT(*) AS StudentCount
FROM Student
GROUP BY DeptID;

SELECT FacultyName AS PersonName
FROM Faculty
UNION
SELECT StudentName
FROM Student;

SELECT StudentName AS Name
FROM Student
UNION ALL
SELECT FacultyName
FROM Faculty;

SELECT StudentName
FROM Student
WHERE StudentName NOT IN
(
SELECT FacultyName
FROM Faculty
);

SELECT FacultyName
FROM Faculty
WHERE FacultyName NOT IN
(
SELECT StudentName
FROM Student
);

SELECT StudentName
FROM Student
WHERE StudentName IN
(
SELECT FacultyName
FROM Faculty
);

SELECT S.StudentName
FROM Student S
LEFT JOIN Faculty F
ON S.StudentName = F.FacultyName
WHERE F.FacultyName IS NULL;

SELECT DeptID,
COUNT(*) AS TotalStudents
FROM Student
GROUP BY DeptID
HAVING COUNT(*)>=1;

CREATE VIEW Student_View AS
SELECT StudentID,
       StudentName,
       Age,
       CGPA
FROM Student;

SELECT * FROM Student_View;



