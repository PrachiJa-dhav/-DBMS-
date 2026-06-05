
CREATE DATABASE IF NOT EXISTS college;
USE college;

DROP TABLE IF EXISTS student;

CREATE TABLE student (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    marks INT,
    course VARCHAR(50)
);


INSERT INTO student (id, name, age, marks, course) VALUES
(101, 'vaishnavi', 18, 75, 'CS'),
(102, 'Neha', 19, 40, 'CS'),
(103, 'riya', 20, 30, 'CE'),
(104, 'Anjali', 18, 85, 'CE'),
(105, 'laxmi', 21, 55, 'CS'),
(106, 'Sara', 20, 55, 'CS'),
(107, 'Ammara', 20, 90, 'CS'),
(108, 'girija', 22, 65, 'IT');


SELECT * FROM student 
WHERE name LIKE 'A%';

SELECT * FROM student 
WHERE name LIKE '%a';


SELECT * FROM student 
WHERE name LIKE 'A%a';

SELECT * FROM student 
WHERE name LIKE '%ar%';


DELETE FROM student WHERE marks < 50;

SELECT * FROM student;