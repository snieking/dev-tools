CREATE DATABASE TestDb;
GO
USE TestDb;
GO
CREATE TABLE Person (
    PersonId INT PRIMARY KEY IDENTITY (1, 1),
    FirstName VARCHAR (50) NOT NULL,
    LastName VARCHAR (50) NOT NULL
);
GO