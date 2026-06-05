CREATE DATABASE faculty;
CREATE TABLE faculty (
fal_id INT PRIMARY KEY,
dept_name VARCHAR(50),
fal_name VARCHAR(50),
college_name VARCHAR(50),
subject_name VARCHAR(50)
);
INSERT INTO faculty (fal_id,dept_name,fal_name, college_name,subject_name)
VALUES 
(2901,'Computer Engineering','Harsha Mam','Dbatu','DBMS'),
(2902,'Civil Engineering','Jadhav Sir','Dbatu','Graphics'),
(2903,'Chemical Engineering','Lokhande Sir','Dbatu','Chemistry'),
(2904,'Mechanical Engineering','Kadam Sir','Dbatu','SOM');

SELECT* FROM faculty;