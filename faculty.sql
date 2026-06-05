CREATE TABLE Faculty (
    FacultyID INT PRIMARY KEY,
    FacultyName VARCHAR(50),
    DeptID INT,
    Experience INT,
    FOREIGN KEY(DeptID)
    REFERENCES Department(DeptID)
);

INSERT INTO Faculty VALUES
(1,'Dr. Sharma',101,10),
(2,'Dr. Patil',102,12),
(3,'Dr. Singh',103,8),
(4,'Dr. Mehta',104,15),
(5,'Dr. Joshi',105,7);
SELECT * FROM Faculty;

SELECT * FROM Faculty
ORDER BY Experience DESC;

SELECT * FROM Faculty
ORDER BY Experience ASC;

ALTER TABLE Faculty
ADD Email VARCHAR(100);

UPDATE Faculty
SET Email = NULL
WHERE FacultyID = 5;

SELECT * FROM Faculty
WHERE Email IS NULL;

DROP TABLE Salary;

SELECT FacultyName,DeptName
FROM Faculty
LEFT JOIN Department
ON Faculty.DeptID=Department.DeptID;

