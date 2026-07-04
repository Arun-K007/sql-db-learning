-- Create Database
CREATE DATABASE CollegeDB;

-- Use Database
USE CollegeDB;

-- Create Student Table
CREATE TABLE Students (
    StudentID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(50),
    Age INT,
    Gender VARCHAR(10),
    Department VARCHAR(50),
    Marks INT
);

-- Insert Records
INSERT INTO Students (Name, Age, Gender, Department, Marks)
VALUES
('Arun', 21, 'Male', 'CSE', 88),
('Priya', 20, 'Female', 'ECE', 91),
('Rahul', 22, 'Male', 'CSE', 75),
('Sneha', 21, 'Female', 'IT', 84),
('Karthik', 20, 'Male', 'EEE', 69);

-- Display All Records
SELECT * FROM Students;

-- Display Specific Columns
SELECT Name, Marks FROM Students;

-- WHERE Clause
SELECT * FROM Students
WHERE Department = 'CSE';

-- AND Operator
SELECT * FROM Students
WHERE Department = 'CSE' AND Marks > 80;

-- OR Operator
SELECT * FROM Students
WHERE Department = 'ECE' OR Department = 'IT';

-- NOT Operator
SELECT * FROM Students
WHERE NOT Department = 'EEE';

-- ORDER BY ASC
SELECT * FROM Students
ORDER BY Marks ASC;

-- ORDER BY DESC
SELECT * FROM Students
ORDER BY Marks DESC;

-- DISTINCT
SELECT DISTINCT Department
FROM Students;

-- UPDATE
UPDATE Students
SET Marks = 95
WHERE StudentID = 1;

-- DELETE
DELETE FROM Students
WHERE StudentID = 5;

-- Aggregate Functions
SELECT COUNT(*) AS TotalStudents FROM Students;

SELECT MAX(Marks) AS HighestMarks FROM Students;

SELECT MIN(Marks) AS LowestMarks FROM Students;

SELECT AVG(Marks) AS AverageMarks FROM Students;

SELECT SUM(Marks) AS TotalMarks FROM Students;

-- GROUP BY
SELECT Department, COUNT(*) AS StudentCount
FROM Students
GROUP BY Department;

-- HAVING
SELECT Department, AVG(Marks) AS AvgMarks
FROM Students
GROUP BY Department
HAVING AVG(Marks) > 80;

-- LIKE
SELECT * FROM Students
WHERE Name LIKE 'A%';

-- BETWEEN
SELECT * FROM Students
WHERE Marks BETWEEN 80 AND 95;

-- IN
SELECT * FROM Students
WHERE Department IN ('CSE', 'IT');

-- LIMIT
SELECT * FROM Students
LIMIT 3;

-- Add Column
ALTER TABLE Students
ADD Email VARCHAR(100);

-- Modify Column
ALTER TABLE Students
MODIFY Email VARCHAR(150);

-- Rename Column
ALTER TABLE Students
RENAME COLUMN Email TO StudentEmail;

-- Drop Column
ALTER TABLE Students
DROP COLUMN StudentEmail;

-- Truncate Table
TRUNCATE TABLE Students;

-- Drop Table
DROP TABLE Students;

-- Drop Database
DROP DATABASE CollegeDB;