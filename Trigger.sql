
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(50),
    Marks INT,
    Result VARCHAR(10)
);


DELIMITER //

CREATE TRIGGER students_result_trigger
BEFORE INSERT ON Students
FOR EACH ROW
BEGIN
    IF NEW.Marks > 40 THEN
        SET NEW.Result = 'Pass';
    ELSE
        SET NEW.Result = 'Fail';
    END IF;
END //

DELIMITER ;

INSERT INTO Students VALUES
(1, 'Amit', 75, NULL),
(2, 'Priya', 35, NULL),
(3, 'Rohan', 40, NULL),
(4, 'Sneha', 90, NULL);


SELECT * FROM Students;