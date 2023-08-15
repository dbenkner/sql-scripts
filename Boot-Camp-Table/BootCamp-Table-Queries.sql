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

CREATE TABLE ASSESMENTS (
    ID int Primary KEY Identity(1,1),
    AssesmentName varchar(50) not null,
    AssesmentGrade int null,
    CurriculumID int not null FOREIGN KEY REFERENCES Curriculum(ID),
    StudentID int not null FOREIGN KEY REFERENCES Students(ID)
);

insert Technologies (Name, InstructionDays)
VALUES  
    ('Git/Github', 2),
    ('SQL', 6),
    ('C#', 20),
    ('Java', 6),
    ('Hosting', 3),
    ('HTML/CSS', 2),
    ('JavaScript', 3),
    ('Angular/TS', 5),
    ('Interview Prep', 4),
    ('Scrum', 2)

Insert Curriculum (Day, Topic, TechnologiesID)
VALUES 
    (1, 'GitHub', 1),
    (1, 'GIT', 1),
    (3, 'SQL Searching DB', 2),
    (3, 'SQL Creating and Editing Tables', 2),
    (2, 'C# Basics', 3),
    (1, 'Gallup Strengths', 9);
select * from Curriculum

ALTER TABLE ASSESMENTS
    DROP Column CurriculumID;

ALTER TABLE ASSESMENTS
    ADD TechnologiesID int not NULL FOREIGN KEY REFERENCES Technologies(ID);

Insert ASSESMENTS (AssesmentName, AssesmentGrade, StudentID, TechnologiesID)
VALUES
    ('Github Assessment', 110, 1, 1),
    ('Github Assesment', 100, 2, 1),
    ('Github Assesment', 50, 4, 1),
    ('Github Assesment', 110, 5, 1)

select s.Firstname + ' ' + s.lastname as StudentName, a.assesmentname, a. assesmentgrade, t.Name TechnologyName
from students s
join ASSESMENTS a
    on s.id = a.StudentID 
join technologies t
    on a.technologiesID = t.id

Indexes
CREATE INDEX IDX_Lastname on Students (Lastname asc);


drop index IDX_LastName on students;

*/

