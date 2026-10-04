-- Lab Program 11
-- Create the StudentDetails view.
--
-- The view must display:
-- StudentName
-- CourseName
-- DepartmentName
--
-- Required view name:
-- StudentDetails

USE CollegeDB;
CREATE TABLE Student(
    StudentID INT,
    StudentName VARCHAR(20),
    DepartmentID INT
);

CREATE TABLE Course(
    CourseID INT,
    CourseName VARCHAR(30)
);

CREATE TABLE Enrollment(
    EnrollmentID INT,
    StudentID INT,
    CourseID INT
);

CREATE VIEW StudentDetails AS
SELECT S.StudentName,
       C.CourseName,
       S.DepartmentID
FROM Student S
JOIN Enrollment E
ON S.StudentID = E.StudentID
JOIN Course C
ON E.CourseID = C.CourseID;

SELECT * FROM StudentDetails;

