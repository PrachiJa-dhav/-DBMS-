*DDL Commands*

ALTER TABLE student
ADD Mobile_No VARCHAR(15);

ALTER TABLE student
MODIFY NAME VARCHAR(100);

ALTER TABLE Faculty
RENAME TO Faculty_Details;

ALTER TABLE student
DROP COLUMN Mobile_No;

DROP TABLE instructor;

*DML Commands*
INSERT INTO student
VALUES (1007, 'Ramesh Patil', 'Satara', 101);

UPDATE student
SET Address='Ratnagiri'
WHERE PRN=1001;

DELETE FROM student
WHERE PRN=1007;

*select queries*

SELECT * FROM student;

SELECT NAME FROM student;

SELECT University_Name FROM university;

 *where clause*

 SELECT * FROM student
WHERE Address='Mumbai';

SELECT * FROM Faculty
WHERE Subject='Operating Systems';

*AND  operator* 
 SELECT * FROM student
WHERE Address='Pune' AND UID=102;

SELECT * FROM Faculty
WHERE Address='Pune'
AND Subject='Operating Systems';


*OR operator* 
SELECT * FROM student
WHERE Address='Mumbai'
OR Address='Pune';

SELECT * FROM Faculty
WHERE Subject='Database Management'
OR Subject='Operating Systems';

*BETWEEN opertaor*

SELECT * FROM instructor
WHERE salary BETWEEN 70000 AND 75000;

SELECT * FROM student
WHERE PRN BETWEEN 1002 AND 1005;

*distinct*

SELECT DISTINCT University_Name
FROM university;

SELECT DISTINCT Address
FROM student;


SELECT * FROM instructor
WHERE salary > 72000;

SELECT * FROM Courses
WHERE credits < 4;

SELECT * FROM instructor
WHERE salary <> 70000;

SELECT * FROM student
WHERE UID = 101;

*AGGREGATE FUNCTIONS*

SELECT COUNT(*) AS Total_Students
FROM student;

SELECT MAX(salary) AS Highest_Salary
FROM instructor;

SELECT MIN(salary) AS Lowest_Salary
FROM instructor;

SELECT AVG(salary) AS Average_Salary
FROM instructor;

SELECT SUM(salary) AS Total_Salary
FROM instructor;

*GROUP BY*

SELECT Subject, COUNT(*) AS Total
FROM Faculty
GROUP BY Subject;

SELECT dept_name, COUNT(*)
FROM instructor
GROUP BY dept_name;

SELECT Subject, COUNT(*)
FROM Faculty
GROUP BY Subject
HAVING COUNT(*) > 1;

SELECT dept_name, COUNT(*)
FROM instructor
GROUP BY dept_name
HAVING COUNT(*) >= 2;

*SUB QUERIES* 

SELECT *
FROM instructor
WHERE salary =
(
    SELECT MAX(salary)
    FROM instructor
);

SELECT *
FROM instructor
WHERE salary =
(
    SELECT MIN(salary)
    FROM instructor
);

SELECT *
FROM instructor
WHERE salary >
(
    SELECT AVG(salary)
    FROM instructor
);

*JOINTS*
SELECT s.PRN,
       s.NAME,
       u.University_Name
FROM student s
INNER JOIN university u
ON s.UID = u.UID;

SELECT s.NAME,
       s.Address,
       u.University_Name
FROM student s
JOIN university u
ON s.UID = u.UID;

SELECT c.course_name,
       d.department_name
FROM Courses c
JOIN Departments d
ON c.department_id = d.department_id;

SELECT s.NAME,
       u.University_Name
FROM student s
LEFT JOIN university u
ON s.UID = u.UID;

SELECT s.NAME,
       u.University_Name
FROM student s
RIGHT JOIN university u
ON s.UID = u.UID;

*VIEWS* 
CREATE VIEW Student_Details AS
SELECT s.PRN,
       s.NAME,
       u.University_Name
FROM student s
JOIN university u
ON s.UID = u.UID;

SELECT * FROM Student_Details;

DROP VIEW Student_Details;

CREATE TABLE Student_Log(
    Log_ID INT AUTO_INCREMENT PRIMARY KEY,
    Student_Name VARCHAR(50),
    Action_Date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


*TRIGGERS*


CREATE TRIGGER student_insert_trigger
AFTER INSERT ON student
FOR EACH ROW
INSERT INTO Student_Log(Student_Name)
VALUES (NEW.NAME);

INSERT INTO student
VALUES (1007,'Ramesh Patil','Satara',101);

SELECT * FROM Student_Log;



SELECT * FROM university;
SELECT * FROM student;
SELECT * FROM faculty;
SELECT * FROM course;
SELECT * FROM instructor;