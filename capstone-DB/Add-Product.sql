CREATE OR ALTER PROCEDURE AddProduct
    @PartNbr varchar(30) =null,
    @Name VARCHAR(30) = null,
    @Price decimal(9,2) = null,
    @Unit VARCHAR(30) = null,
    @VendorName VarChar(50) = NULL
AS
    IF @PartNbr is NULL
        or @name is NULL
        or @Unit is NULL
        OR @VendorName is NULL
        or @price is null
        return -1;
    -- check if new Partsnbr already exists
    IF exists (
        SELECT 1
            FROM Products
            where Partnbr = @PartNbr
        return - 3
    )     
    declare @vendorId int, @count int;
    select @count = count(*)
        from Vendors
        where Name like @Vendorname + '%'
    if @count != 1
        return -2 -- zero or multiple vendors found
    select @vendorID = id 
        from vendors 
        where name like @VendorName + '%'
BEGIN
    INSERT Products (PartNbr, name, price, unit, VendorId) VALUES
        (@PartNbr, @Name, @Price, @Unit, @vendorId);
    return 0;
END
go
declare @rc int;
EXEC @rc = AddProduct 'Wtch', 'Apple Watch', 349.99, 'Each', 'Appl'

select * from Products;

if @rc != 0
    print 'Error rc = ' + str(@rc);
