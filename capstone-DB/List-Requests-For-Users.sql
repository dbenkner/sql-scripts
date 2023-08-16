/*
Simple script for checking requests under a specific username.
*/
CREATE or ALTER PROCEDURE ListRequestsForUser
    @Username varchar(30) = NULL
AS
BEGIN
    IF @Username IS NULL
    BEGIN
        -- PRINT '@Username must be a string!';
        RETURN -1
    END

    SELECT r.*
        FROM Users U
        JOIN Requests R 
            on u.id = r.UserId
        WHERE u.Username = @Username;
    RETURN 0;
END
GO
DECLARE @rc INT;
exec @rc = ListRequestsForUser;
if @rc = 0
    print 'Everything is good!';
if @rc = -1
    print '@Username must be a string!';