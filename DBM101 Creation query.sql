-- Create database called DBM101
CREATE DATABASE DBM101;

-- Select database DBM 101 for operations to be performed on it 
USE DBM101;

-- Create a table in DBM101 database called Staff with columns staffID last name, first name, age, Department name, Department ID 
CREATE TABLE Staff (
	StaffID CHAR(10) PRIMARY KEY,
	FirstName VARCHAR (100),
	LastName VARCHAR (100),
	Age TINYINT,
	DepartmentID CHAR(10)  FOREIGN KEY REFERENCES Departments,
	FacultyID CHAR(10) );

-- Create table named departments
CREATE TABLE Departments(
	DepartmentName VARCHAR (100) ,
	DepartmentID CHAR (10) PRIMARY KEY,
	FacultyID CHAR(10) FOREIGN KEY REFERENCES Faculties);

-- Create table named faculties
CREATE TABLE Faculties (
	FacultyID CHAR (10) PRIMARY KEY,
	FacultyName VARCHAR (100));

-- insert values into faculties
INSERT INTO Faculties VALUES 
	('UNILAG0001', 'Arts'),
	('UNILAG0002', 'Medicine'),
	('UNILAG0003', 'Engineering'),
	('UNILAG0004', 'Social Science'),
	('UNILAG0005', 'Physical Science'),	
	('UNILAG0006', 'Architecture'),
	('UNILAG0007', 'Education'),
	('UNILAG0008', 'Life Science'),
	('UNILAG0009', 'Law'),
	('UNILAG0010', 'Pharmacy');

-- Insert values into table departments
INSERT INTO Departments VALUES 
	('Fine Arts','UNILAG0011', 'UNILAG0001'),
	('Pottery', 'UNILAG0012', 'UNILAG0001'),
	('Painting','UNILAG0013', 'UNILAG0001'),
	('Sculpture', 'UNILAG0014', 'UNILAG0001'),
	('Drawing','UNILAG0015', 'UNILAG0001'),
	('Collage','UNILAG0016', 'UNILAG0001'),
	('Mosaic','UNILAG0017', 'UNILAG0001'),
	('Mache','UNILAG0018', 'UNILAG0001'),
	('Artists','UNILAG0019', 'UNILAG0001'),
	('Music','UNILAG0020', 'UNILAG0001');

-- Insert values into table Staff
INSERT INTO Staff VALUES 
	('UNILAGA001','Moses','Obaro',25,'UNILAG0011', 'UNILAG0001'),
	('UNILAGA002','Moses','Obaro',25,'UNILAG0011', 'UNILAG0001'),
	('UNILAGA003','Moses','Obaro',25,'UNILAG0011', 'UNILAG0001'),
	('UNILAGA004','Moses','Obaro',25,'UNILAG0011', 'UNILAG0001'),
	('UNILAGA005','Moses','Obaro',25,'UNILAG0011', 'UNILAG0001'),
	('UNILAGA006','Moses','Obaro',25,'UNILAG0011', 'UNILAG0001'),
	('UNILAGA007','Moses','Obaro',25,'UNILAG0011', 'UNILAG0001'),
	('UNILAGA008','Moses','Obaro',25,'UNILAG0011', 'UNILAG0001'),
	('UNILAGA009','Moses','Obaro',25,'UNILAG0011', 'UNILAG0001'),
	('UNILAGA010','Moses','Obaro',25,'UNILAG0011', 'UNILAG0001');
