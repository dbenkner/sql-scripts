CREATE TABLE Individuals (
    IndividualID INT PRIMARY KEY IDENTITY(1,1) not null,
    FirstName varchar(50) not null,
    LastName varchar(50) not null,
    Address varchar(255) null,
    Phone varchar(12) null
);
CREATE TABLE Groups (
    GroupID int PRIMARY KEY IDENTITY(1,1) NOT NULL, 
    GroupName varchar(100) not null,
    Dues money check (Dues > 0)
);

CREATE TABLE GroupMembership (
    Id int PRIMARY KEY IDENTITY(1,1) NOT NULL,
    GroupID int FOREIGN KEY REFERENCES Groups(GroupID) NOT NULL,
    IndividualID int FOREIGN KEY REFERENCES Individuals(IndividualID) NOT NULL
);

