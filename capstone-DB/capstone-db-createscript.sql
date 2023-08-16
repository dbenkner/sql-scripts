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
    IsReviewer bit not null default 0,
    IsAdmin bit not null default 0
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
    DelieveryMode varchar(20) DEFAULT 'Pickup' not null,
    Status varchar(10) DEFAULT 'NEW' not null,
    Total decimal(11,2) DEFAULT 0 not null,
    UserId int FOREIGN KEY REFERENCES Users(ID) not NULL
);

CREATE TABLE RequestLines (
    Id int PRIMARY KEY IDENTITY (1,1) NOT NULL,
    RequestId int FOREIGN KEY REFERENCES Requests(ID) not null,
    ProductId int FOREIGN KEY REFERENCES Products(ID) not null,
    Quantity int DEFAULT 1 not NULL check (Quantity >= 1)
);

-- Adding table values
INSERT USERS (Username, Password, Firstname, LastName, Phone, Email, IsReviewer, IsAdmin)
VALUES
    ('dbenkner', 'Baseball2', 'David', 'Benkner', '5133731765', 'd.benkner@gmail.com', 1, 1),
    ('gdoud', 'Password123', 'Greg', 'Doud', '5133895499', 'gdoud@gmail.com', 1,1),
    ('hhill', 'PropaneMan1', 'Hank', 'Hill', '4894545434', 'propanehill@aol.com', 1, 0),
    ('hsimpson', 'Mmmmmdonuts', 'Homer', 'Simpson', '1235553226', 'donutsandbeer@sprongfieldonline.net', 1, 0),
    ('tphillips', 'DestroyMerryweather', 'Trevor', 'Phillips', '4205551337', 'tphillips42069@yahoo.com', 0, 0),
    ('bhill', 'Fruitpies123', 'Bobby', 'Hill', '5555553421', 'bobhill123@gmail.com', 1, 0),
    ('nflanders', 'Icantitsageo', 'Ned', 'Flanders', '5335553221', 'nedlovesjesus@jesus.com', 0, 0),
    ('dgribble', 'Bugkiling', 'Dale', 'Gribble', '4545553221', 'dalesdeadbug@aol.com', 0, 0)
;

INSERT Vendors (Code, Name, Address, City, State, Zip, Phone, Email)
VALUES
    (4500, 'Asus', '800 Corporate Way', 'Fremont', 'CA', '94539', '18004541234', 'support@asus.com'),
    (1200, 'Apple', '1 Apple Way', 'Cupertino', 'CA', '95321', '18005052779', 'vendors@apple.com'),
    (1233, 'Google', '300 Google Park', 'San Jose', 'CA', '94551', '1800505531', 'support@google.com'),
    (1400, 'Dell', '500 Broad St', 'Austin', 'TX', '64332', '18005453200', 'help@dell.com'),
    (1344, 'Ford', '5 Ford St', 'Detroit', 'Mi', '49000', '18005053873', 'parts@ford.com'),
    (15212, 'Tesla', '420 Tesla St', 'Austin', 'TX', '60999', '18005453221', 'sales@tesla.com'),
    (0002, 'Proctor and Gamble', '500 4th St', 'Cincinnati', 'OH', '45201', '18004045991', 'vendors@pg.com'),
    (0500, 'Microsoft', '1 Microsoft St', 'Seattle', 'CA', '92112', '18005051234', 'service@microsoft.com'),
    (12032, 'Bic', '421 5th Street', 'New York', 'NY', '00021', '18005255400', 'sales@bic.com'),
    (5400, 'DundlerMiffin', '5342 Broadway', 'Scranton', 'CA', '34543', '5345405555', 'mscott@dundermiffin.com'),
    (1542, 'Microcenter', '9500 Mosteller Rd', 'Sharonville', 'CA', '45239', '5135554545', 'cin@microcenter.com')
    ;
select * from vendors

INSERT Products (PartNbr, Name, Price, Unit, PhotoPath, VendorID)
VALUES
    ('D500', 'Paper', 29.99, '1 Rem', null, 10),
    ('B5400', 'Pens', 5.99, '1 box', 'boxpens.jpg', 9),
    ('B12350', 'highlighters', 9.99, '1 box', null, 9),
    ('AS-R-4090', 'Asus Rog Strix RTX 4090', 1449.99, '1 Card', 'Asus4090.jpg', 1),
    ('DLL-3040', 'Dell Optiplex 3070', 599.99, '1 CPU', 'Dell3070.png', 4),
    ('MBP15', 'MacBook Pro 15inch', 2999.99, '1 Laptop', 'MacbookPro.jpg', 2),
    ('D242353233', '24 inch montior', 99.99, '1 Monitor', null, 4),
    ('IntI713700K', 'Intel I7 13700k', 359.95, '1 CPU', 'i7.jpg', 11),
    ('IntI513500k', 'Intel i5 13500k', 249.95, 'CPU',' i5.jpg', 11),
    ('McLTKB1000', 'Logitech Keyboard', 19.99, '1 Keyboard', null, 11),
    ('Tnr1200', 'Toner', 79.95, '1 Box', 'Toner.png', 11),
    ('MBPAir', 'MacBook Air', 1299.99, '1 Laptop', 'MacBookAir.jpg', 2)
    ;

    select * from products;

Select * from users;
select * from Requests;
INSERT Requests ([Description], Justification, RejectionReason, DelieveryMode, [Status], Total, UserId)
VALUES 
    ('PC Parts', 'Repairs', null, default, default, 359.95, 1),
    ('Laptop', 'Upgrade', null, default, default, 1999.99, 3),
    ('Office Supplies', 'Replinish Supples', null, default, default, 24.54, 3),
    ('Montiors', 'Replacement', null, default, DEFAULT, 99.95, 4);
INSERT RequestLines (RequestId, ProductId, Quantity)
VALUES
    (1, 8, 1),
    (4, 7, 1),
    (3, 2, 1),
    (3, 2, 3);
sELECT * FROM Requests;
SELECT * FROM RequestLines;