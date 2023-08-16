CREATE or ALTER PROCEDURE ListAllUsers
AS
BEGIN
    SELECT Id, concat(FirstName, ' ', Lastname) name, Phone, Email
    FROM Users
    WHERE IsAdmin = 0;
END
GO
EXEC ListAllUsers