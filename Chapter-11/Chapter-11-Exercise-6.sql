DROP Table GroupMembership

CREATE TABLE GroupMembership (
    ID INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
    GroupID INT FOREIGN KEY REFERENCES Groups(GroupID) not null,
    IndividualID INT FOREIGN KEY REFERENCES Individuals(IndividualID) UNIQUE 
);