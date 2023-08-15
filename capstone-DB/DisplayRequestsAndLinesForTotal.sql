CREATE OR ALTER PROCEDURE DisplayRequestAndLinesForTotal
    @RequestID int = NULL
AS 
BEGIN

    IF @RequestID is null
    BEGIN
        PRINT '@RequestID must be an integer!'
        RETURN
    END

    SELECT r.id, r.[Description], r.total, rl.Quantity, p.price, 
        (RL.Quantity * p.price) LineTotal
    FROM Requests R
    JOIN RequestLines RL on r.id = rl.RequestId
    Join products p on p.id = rl.ProductId
    Where r.id = @RequestID;

END
GO
exec DisplayRequestAndLinesForTotal @RequestID = 1
GO