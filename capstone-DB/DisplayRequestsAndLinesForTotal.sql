SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE OR ALTER PROCEDURE DisplayRequestAndLinesForTotal
    @RequestID int = NULL
AS 
BEGIN

    IF @RequestID is null OR @RequestID <= 0
    BEGIN
        PRINT '@RequestID must be an integer greater than 0!'
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
exec DisplayRequestAndLinesForTotal;
GO
