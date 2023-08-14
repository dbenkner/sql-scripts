/*Chapter 7 notes
Writing New Data
Insert TableName (Coulmn Names)
Values 
(Data you want to insert)


Int = whole numbers
NVACHAR = 2 byte Charhacters
nchar = 1 byte Charachters
decimal = decimal numbers
bit = 1 or 0 true or false

INSERT Customers (Name, City, State, Sales, Active)
    VALUES 
    ('ACME MFG1', 'Mason', 'OH', 1999.99, Default),
    ('ACME MFG2', 'Mason', 'OH', 2999.99, Default);

select *
from customers order by id desc;

Updating Data
ALWAYS USE A WHERE CLAUSE!


UPDATE Customers Set 
    Sales = Sales + 100,
    Active = 0
WHERE name like 'Acme MFG%';


Deletes

Delete Customers
Where ID in (39, 38, 36)


begin TRANSACTION;

delete Customers 
where ID = 37;

ROLLBACK TRANSACTION;

select top 3 *
from customers 
order by ID DESC;

*/