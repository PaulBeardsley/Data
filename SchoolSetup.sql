CREATE DATABASE LanguageSchool
GO

USE LanguageSchool
GO

CREATE TABLE Staff(
	StaffID INT IDENTITY(10001,1) NOT NULL PRIMARY KEY,
	Firstname NVARCHAR(30) NOT NULL,
	Surname NVARCHAR(30) NOT NULL,
	[Role] NVARCHAR(30) NOT NULL,
	Salary DECIMAL(8)
)
GO

CREATE TABLE Cars(
	RegNo NVARCHAR(10) NOT NULL PRIMARY KEY,
	Colour NVARCHAR(10),
	Make NVARCHAR(20),
	[Owner] INT FOREIGN KEY REFERENCES Staff(StaffID)
)
GO

INSERT INTO Staff(Firstname, Surname, [Role], Salary)
VALUES
	('Martina', 'Jenkins', 'DoS', 23000),
	('Simon', 'Jenkins', 'Teacher', 21000),
	('Lorraine', 'Jenkins', 'Teacher', 18000),
	('Lucy', 'Young', 'Receptionist', 16000),
	('James', 'Sunderland', 'Teacher', 20000),
	('Angela', 'Orosco', 'Teacher', 19000),
	('Eddie', 'Dumbrowski', 'Teacher', 18000),
	('Walter', 'Sullivan', 'Warden', 15000),
	('Simon', 'Jenkins', 'Accommodation Officer', 17000)
GO

INSERT INTO Cars(RegNo, Colour, Make, [Owner])
VALUES
	('AA11777', 'Blue', 'Audi', 10005),
	('JJ66CUP', 'Silver', 'Citroen', 10007),
	('PK44TUL', 'Red', 'Mercedes', 10001),
	('QQ34BBB', 'Blue', 'Ford', 10006),
	('SA33USB', 'White', 'Seat', 10008),
	('XY21ONO', 'Blue', 'Ford', 10005),
	('ZZ9PZA', 'Red', 'Audi', 10003)
GO
