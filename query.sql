CREATE TABLE university (
    UID INT PRIMARY KEY,
    University_Name VARCHAR(100)
);

CREATE TABLE Faculty(
    Faculty_id INT PRIMARY KEY,
    Faculty_Name VARCHAR,
    Address VARCHAR(100),
    Subject VARCHAR(50)
);

CREATE TABLE student (
    PRN INT PRIMARY KEY,
    NAME VARCHAR(50),
    Address VARCHAR(100),
    UID INT,
    FOREIGN KEY (UID) REFERENCES university(UID)
);

CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100)
);

CREATE TABLE Courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100),
    credits INT,
    department_id INT,
    FOREIGN KEY (department_id)
        REFERENCES Departments(department_id)
);

CREATE TABLE instructor (
    ID INT PRIMARY KEY,
    NAME VARCHAR(50),
    dept_name VARCHAR(50),
    salary INT
);