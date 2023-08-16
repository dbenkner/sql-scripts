CREATE or ALTER PROCEDURE ListAllProducts
AS
BEGIN
    SELECT *
    FROM Products;
END
GO
EXEC ListAllProducts
