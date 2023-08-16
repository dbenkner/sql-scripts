CREATE OR ALTER PROCEDURE ListCustomersBySales
    @SalesLow decimal(10,2) = 0,
    @SalesHigh decimal(10,2) = 1000000
AS
BEGIN
    if @Saleslow is null or @SalesHigh is NULL
        return -1
    IF @SalesLow > @SalesHigh
    BEGIN
        DECLARE @sales DECIMAL(10,2) = @SalesLow;
        SET @SalesLow = @SalesHigh
        SET @SalesHigh = @Sales
    END
    SELECT *
        FROM Customers
        WHERE SALES between @Saleslow and @SalesHigh
        ORDER BY Sales DESC;
    return 0;
END
GO
declare @rc int;
exec @rc = ListCustomersBySales @SalesHigh = 70000;
if @rc = 0
    print 'Ok';
if @rc = -1
    print 'Both @SalesLow and @HighSales must be positive numbers'