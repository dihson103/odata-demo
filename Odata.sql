CREATE DATABASE Odata;

USE Odata;

-- Create Class table
CREATE TABLE Class (
    Id          INT PRIMARY KEY IDENTITY (1, 1),
    ClassName   VARCHAR(100)
);

-- Create Student table
CREATE TABLE Student (
    Id          INT PRIMARY KEY IDENTITY (1, 1),
    ClassId     INT FOREIGN KEY REFERENCES Class(Id),
    [Name]      VARCHAR(100),
    Mark        INT,
	Dob			Date
);

-- Insert data into Class table
INSERT INTO Class (ClassName) VALUES ('Math');
INSERT INTO Class (ClassName) VALUES ('Science');
INSERT INTO Class (ClassName) VALUES ('History');
INSERT INTO Class (ClassName) VALUES ('English');
INSERT INTO Class (ClassName) VALUES ('Physics');

-- Insert data into Student table for each class
-- Class 1: Math
INSERT INTO Student (ClassId, [Name], Mark, Dob) VALUES (1, 'John Doe', 85, '2003-05-15');
INSERT INTO Student (ClassId, [Name], Mark, Dob) VALUES (1, 'Jane Smith', 92, '2002-09-20');
INSERT INTO Student (ClassId, [Name], Mark, Dob) VALUES (1, 'Michael Johnson', 78, '2003-01-10');
INSERT INTO Student (ClassId, [Name], Mark, Dob) VALUES (1, 'Emily Brown', 88, '2002-11-30');
INSERT INTO Student (ClassId, [Name], Mark, Dob) VALUES (1, 'William Davis', 95, '2002-07-25');
INSERT INTO Student (ClassId, [Name], Mark, Dob) VALUES (1, 'Sophia Wilson', 90, '2003-03-05');
INSERT INTO Student (ClassId, [Name], Mark, Dob) VALUES (1, 'Alexander Miller', 87, '2002-10-18');
INSERT INTO Student (ClassId, [Name], Mark, Dob) VALUES (1, 'Olivia Martinez', 82, '2003-02-28');
INSERT INTO Student (ClassId, [Name], Mark, Dob) VALUES (1, 'Daniel Taylor', 91, '2002-04-12');
INSERT INTO Student (ClassId, [Name], Mark, Dob) VALUES (1, 'Chloe Anderson', 89, '2002-08-08');

-- Class 2: Science
INSERT INTO Student (ClassId, [Name], Mark, Dob) VALUES (2, 'John Smith', 75, '2003-06-14');
INSERT INTO Student (ClassId, [Name], Mark, Dob) VALUES (2, 'Emma Johnson', 82, '2002-12-25');
INSERT INTO Student (ClassId, [Name], Mark, Dob) VALUES (2, 'Matthew Brown', 79, '2003-02-10');
INSERT INTO Student (ClassId, [Name], Mark, Dob) VALUES (2, 'Ava Wilson', 90, '2002-08-15');
INSERT INTO Student (ClassId, [Name], Mark, Dob) VALUES (2, 'Ethan Davis', 88, '2002-10-05');
INSERT INTO Student (ClassId, [Name], Mark, Dob) VALUES (2, 'Mia Taylor', 94, '2003-01-20');
INSERT INTO Student (ClassId, [Name], Mark, Dob) VALUES (2, 'James Anderson', 85, '2002-05-28');
INSERT INTO Student (ClassId, [Name], Mark, Dob) VALUES (2, 'Sophia Martinez', 91, '2002-09-08');
INSERT INTO Student (ClassId, [Name], Mark, Dob) VALUES (2, 'Logan Miller', 86, '2002-11-15');
INSERT INTO Student (ClassId, [Name], Mark, Dob) VALUES (2, 'Amelia Wilson', 93, '2003-03-25');

-- Class 3: History
INSERT INTO Student (ClassId, [Name], Mark, Dob) VALUES (3, 'Noah Brown', 88, '2003-07-20');
INSERT INTO Student (ClassId, [Name], Mark, Dob) VALUES (3, 'Isabella Wilson', 95, '2002-12-05');
INSERT INTO Student (ClassId, [Name], Mark, Dob) VALUES (3, 'William Taylor', 82, '2003-04-10');
INSERT INTO Student (ClassId, [Name], Mark, Dob) VALUES (3, 'Sophia Martinez', 90, '2002-08-15');
INSERT INTO Student (ClassId, [Name], Mark, Dob) VALUES (3, 'Mason Johnson', 79, '2002-10-25');
INSERT INTO Student (ClassId, [Name], Mark, Dob) VALUES (3, 'Emma Davis', 92, '2003-02-02');
INSERT INTO Student (ClassId, [Name], Mark, Dob) VALUES (3, 'Lucas Anderson', 84, '2002-06-30');
INSERT INTO Student (ClassId, [Name], Mark, Dob) VALUES (3, 'Olivia Smith', 87, '2002-09-18');
INSERT INTO Student (ClassId, [Name], Mark, Dob) VALUES (3, 'Ethan Martinez', 93, '2003-01-08');
INSERT INTO Student (ClassId, [Name], Mark, Dob) VALUES (3, 'Ava Jones', 96, '2002-05-12');

-- Class 4: English
INSERT INTO Student (ClassId, [Name], Mark, Dob) VALUES (4, 'Liam Johnson', 83, '2003-08-15');
INSERT INTO Student (ClassId, [Name], Mark, Dob) VALUES (4, 'Olivia Smith', 90, '2002-12-25');
INSERT INTO Student (ClassId, [Name], Mark, Dob) VALUES (4, 'Noah Brown', 76, '2003-01-10');
INSERT INTO Student (ClassId, [Name], Mark, Dob) VALUES (4, 'Emma Wilson', 88, '2002-08-05');
INSERT INTO Student (ClassId, [Name], Mark, Dob) VALUES (4, 'William Davis', 92, '2002-10-20');
INSERT INTO Student (ClassId, [Name], Mark, Dob) VALUES (4, 'Sophia Taylor', 85, '2003-03-15');
INSERT INTO Student (ClassId, [Name], Mark, Dob) VALUES (4, 'Mason Anderson', 91, '2002-07-02');
INSERT INTO Student (ClassId, [Name], Mark, Dob) VALUES (4, 'Isabella Martinez', 89, '2002-09-28');
INSERT INTO Student (ClassId, [Name], Mark, Dob) VALUES (4, 'Ethan Miller', 84, '2003-02-08');
INSERT INTO Student (ClassId, [Name], Mark, Dob) VALUES (4, 'Ava Jones', 94, '2002-06-12');

-- Class 5: Physics
INSERT INTO Student (ClassId, [Name], Mark, Dob) VALUES (5, 'Logan Wilson', 91, '2003-09-20');
INSERT INTO Student (ClassId, [Name], Mark, Dob) VALUES (5, 'Amelia Davis', 88, '2002-11-25');
INSERT INTO Student (ClassId, [Name], Mark, Dob) VALUES (5, 'Lucas Brown', 79, '2003-01-10');
INSERT INTO Student (ClassId, [Name], Mark, Dob) VALUES (5, 'Sophia Martinez', 93, '2002-08-05');
INSERT INTO Student (ClassId, [Name], Mark, Dob) VALUES (5, 'William Johnson', 86, '2002-10-20');
INSERT INTO Student (ClassId, [Name], Mark, Dob) VALUES (5, 'Emma Taylor', 94, '2003-03-15');
INSERT INTO Student (ClassId, [Name], Mark, Dob) VALUES (5, 'Liam Anderson', 83, '2002-07-02');
INSERT INTO Student (ClassId, [Name], Mark, Dob) VALUES (5, 'Olivia Smith', 90, '2002-09-28');
INSERT INTO Student (ClassId, [Name], Mark, Dob) VALUES (5, 'Noah Miller', 85, '2003-02-08');
INSERT INTO Student (ClassId, [Name], Mark, Dob) VALUES (5, 'Ava Jones', 92, '2002-06-12');
