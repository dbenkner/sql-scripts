/*
Chapter 11 creating Databases
CREATE Database C41BootCamp;

CREATE TABLE Students (
    ID int PRIMARY KEY IDENTITY(1, 1),
    Firstname VARCHAR(30) not null,
    LastName varchar(30) not null,
    Phone varchar(12) null,
    Address varchar(75) null,
    City Varchar(30) null,
    State VarChar(2) not null DEFAULT 'OH',
    ZipCode varchar(5) null
);
Insert Students (FirstName, LastName, Phone, Address, City, State, ZipCode)
    values (
        'David', 'Benkner', '513-373-1765', '2 View Dr Apt 101', 'Fairfield', 'OH', '45014'
    );

alter table students 
    add Active bit not null default 1;


select * from students;

CREATE TABLE Technologies (
    Id int PRIMARY key IDENTITY(1,1),
    Name varchar(30) not null,
    InstructionDays int not null default 5    
)

select * from Technologies

CREATE TABLE Curriculum (
    Id int PRIMARY KEY IDENTITY(1,1),
    Day int not null,
    Topic varchar(50) not null,
    TechnologiesID int not NULL FOREIGN KEY REFERENCES Technologies(ID)

);
*/
