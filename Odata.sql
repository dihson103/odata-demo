CREATE DATABASE Odata;

USE Odata;

CREATE TABLE Class (
    Id          INT PRIMARY KEY IDENTITY (1, 1),
    ClassName   VARCHAR(100)
);

CREATE TABLE Student (
    Id          INT PRIMARY KEY IDENTITY (1, 1),
    ClassId     INT FOREIGN KEY REFERENCES Class(Id),
    [Name]      VARCHAR(100),
    Age         INT
);

-- Insert 5 classes
INSERT INTO Class (ClassName) VALUES 
('Class 1'),
('Class 2'),
('Class 3'),
('Class 4'),
('Class 5');

-- Insert 10 students for each class
INSERT INTO Student (ClassId, [Name], Age) VALUES
-- Class 1
(1, 'Emma Johnson', 20),
(1, 'Noah Smith', 21),
(1, 'Olivia Williams', 22),
(1, 'Liam Brown', 23),
(1, 'Ava Jones', 24),
(1, 'William Davis', 25),
(1, 'Sophia Miller', 26),
(1, 'Elijah Wilson', 27),
(1, 'Isabella Moore', 28),
(1, 'James Taylor', 29),

-- Class 2
(2, 'Mia Anderson', 20),
(2, 'Ethan Martinez', 21),
(2, 'Charlotte Jackson', 22),
(2, 'Alexander White', 23),
(2, 'Amelia Harris', 24),
(2, 'Michael Nelson', 25),
(2, 'Harper King', 26),
(2, 'Benjamin Lee', 27),
(2, 'Evelyn Allen', 28),
(2, 'Daniel Scott', 29),

-- Class 3
(3, 'Abigail Hall', 20),
(3, 'Jacob Baker', 21),
(3, 'Emily Griffin', 22),
(3, 'Daniel Walker', 23),
(3, 'Elizabeth Green', 24),
(3, 'Matthew Carter', 25),
(3, 'Sofia Hill', 26),
(3, 'Henry Adams', 27),
(3, 'Chloe Campbell', 28),
(3, 'Andrew Evans', 29),

-- Class 4
(4, 'Madison Clark', 20),
(4, 'Logan Wright', 21),
(4, 'Ella Mitchell', 22),
(4, 'Sebastian Parker', 23),
(4, 'Avery Hall', 24),
(4, 'Joshua Phillips', 25),
(4, 'Scarlett Coleman', 26),
(4, 'Gabriel Stewart', 27),
(4, 'Lily Torres', 28),
(4, 'Christopher Morris', 29),

-- Class 5
(5, 'Addison Rivera', 20),
(5, 'Ryan Rogers', 21),
(5, 'Natalie Murphy', 22),
(5, 'Caleb Peterson', 23),
(5, 'Hannah Cooper', 24),
(5, 'Owen Reed', 25),
(5, 'Brooklyn Bailey', 26),
(5, 'Jackson Ward', 27),
(5, 'Zoe Bell', 28),
(5, 'David Richardson', 29);
