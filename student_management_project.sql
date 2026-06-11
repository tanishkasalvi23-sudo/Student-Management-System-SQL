CREATE DATABASE StudentManagement;
USE StudentManagement;
CREATE TABLE Students (
    StudentID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(50),
    Gender VARCHAR(1),
    Age INT,
    Grade VARCHAR(10),
    MathScore INT,
    ScienceScore INT,
    EnglishScore INT
);

INSERT INTO Students
(Name, Gender, Age, Grade, MathScore, ScienceScore, EnglishScore)
VALUES
('Tanishka', 'F', 18, 'A', 85, 90, 88),
('Manjiri', 'F', 17, 'B', 78, 82, 80),
('Rohit', 'M', 18, 'A', 92, 89, 95),
('Snehal', 'F', 17, 'A', 88, 91, 84),
('Kartik', 'M', 19, 'C', 65, 70, 72),
('Priya', 'F', 18, 'B', 81, 79, 85),
('Vedant', 'M', 17, 'B', 75, 68, 74),
('Ishan', 'M', 18, 'A', 95, 94, 96),
('Ankita', 'F', 19, 'C', 60, 62, 58),
('Ishita', 'F', 17, 'B', 83, 87, 89);
SELECT * FROM Students;

SELECT 
AVG(MathScore) AS Avg_Math,
AVG(ScienceScore) AS Avg_Science,
AVG(EnglishScore) AS Avg_English
FROM Students;

SELECT 
Name,
(MathScore + ScienceScore + EnglishScore) AS TotalScore
FROM Students
ORDER BY TotalScore DESC
LIMIT 1;

SELECT 
Grade,
COUNT(*) AS StudentCount
FROM Students
GROUP BY Grade;

SELECT 
Gender,
AVG((MathScore + ScienceScore + EnglishScore)/3) AS AverageScore
FROM Students
GROUP BY Gender;

SELECT 
Name,
MathScore
FROM Students
WHERE MathScore > 80;

UPDATE Students
SET Grade = 'A'
WHERE StudentID = 5;
SELECT * FROM Students
WHERE StudentID = 5;
