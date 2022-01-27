CREATE DATABASE School_Database
GO
USE School_Database
GO
CREATE TABLE Students(
	Student_IDs INT PRIMARY KEY NOT NULL IDENTITY(2000,100),
	Student_Names VARCHAR(50) NOT NULL
	);
INSERT INTO Students
	(Student_Names)
	VALUES
	('Trishana Aran');
;
CREATE TABLE Instructors(
	Instructor_IDs INT PRIMARY KEY NOT NULL IDENTITY(50000,1000),
	Instructor_Names VARCHAR(50) NOT NULL,
	);
INSERT INTO Instructors
	(Instructor_Names)
	VALUES
	('Kalaipriya Kanagaratnam'),
	('Abishan Aran')
;
CREATE TABLE Classes(
	Class_IDs INT PRIMARY KEY NOT NULL IDENTITY(1,1),
	Class_Names VARCHAR(50) NOT NULL,
	);
INSERT INTO Classes
	(Class_Names)
	VALUES
	('Software and Web Development'),
	('Computer and Programming')
;
UPDATE Students
SET Instructor_ID_s = 58694
WHERE Student_IDs = 784964
;
ALTER TABLE Students
ADD Instructor_IDs INT CONSTRAINT fk_InstructorS_IDs FOREIGN KEY REFERENCES Instructors(Instructor_IDs);
ALTER TABLE Classes
ADD Instructor_IDs INT CONSTRAINT fk_Instructor_IDs FOREIGN KEY REFERENCES Instructors(Instructor_IDs);
SELECT Instructor_Names FROM Instructors;
SELECT Student_Names FROM Students ORDER BY Student_Names ASC;
SELECT 
	s1.Student_Names, i1.Instructor_Names, c1.Class_IDs
	FROM Students s1, Instructors i1
	INNER JOIN Classes c1 ON c1.Instructor_ID_s = i1.Instructor_IDs;
SELECT * FROM Students;
SELECT * FROM Instructors;
SELECT * FROM Classes;