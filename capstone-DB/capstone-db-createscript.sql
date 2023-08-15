USE master;
GO
drop database if exists CapstoneDB; -- Checks to see if db already exists
GO
CREATE DATABASE CapstoneDB; -- Creates the DB
GO
USE CapstoneDB;
GO


-- Creates the Tables for the PRS 
CREATE TABLE Users (
    Id int PRIMARY KEY IDENTITY (1,1) NOT NULL,
    Username varchar(30) UNIQUE not NULL,
    Password VARCHAR(30) NOT NULL,
    Firstname Varchar(30) not null,
    LastName varchar(30) not null,
    Phone varchar(12) null,
    Email varchar(255) NULL,
    IsReviewer bit not null,
    IsAdmin bit not null
);

CREATE TABLE Vendors (
    Id int PRIMARY KEY IDENTITY (1,1) not null,
    Code varchar(30) UNIQUE NOT NULL,
    Name varchar(30) not null,
    Address varchar(30) not null,
    City varchar(30) not null,
    State varchar(2) not NULL,
    Zip VARCHAR(5) not NULL,
    Phone varchar(12) null,
    Email varchar(255) null
);

CREATE TABLE Products (
    Id int PRIMARY KEY IDENTITY (1,1) not null,
    PartNbr varchar(30) UNIQUE not null,
    Name varchar(30) not null,
    Price decimal(11,2) not null,
    Unit varchar(30) not null,
    PhotoPath varchar(255) null,
    VendorId int FOREIGN KEY REFERENCES Vendors(ID) not null
);

CREATE TABLE Requests (
    Id int PRIMARY KEY IDENTITY (1,1) NOT NULL,
    Description varchar(80) not null,
    Justification varchar(80) not null,
    RejectionReason varchar(80) null,
    DelieveryMode varchar(20) not null,
    Status varchar(10) not null,
    Total decimal(11,2) not null,
    UserId int FOREIGN KEY REFERENCES Users(ID) not NULL
);

CREATE TABLE RequestLines (
    Id int PRIMARY KEY IDENTITY (1,1) NOT NULL,
    RequestId int FOREIGN KEY REFERENCES Requests(ID) not null,
    ProductId int FOREIGN KEY REFERENCES Products(ID) not null,
    Quantity int not NULL
);