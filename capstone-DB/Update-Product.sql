CREATE OR ALTER PROCEDURE UpdateProduct
    @PartNbr VarChar(30) = null,
    @Name VarChar(30) = null,
    @Price Decimal(11,2) = null,
    @Unit Varchar(30) = null,
    @VendorID int = null,
    @ID int null
AS
BEGIN
    IF @Id is NULL
        return 01;
    
    DECLARE @OrigId int,
            @OrigPartNbr varchar(30),
            @OrigName varchar(30),
            @OrigPrice decimal(11,2),
            @origUnit Varchar(30),
            @OrigVendorId int;
    SELECT @OrigId = Id,
        @OrigPartNbr = PartNbr,
        @OrigName = Name,
        @OrigPrice = Price,
        @origUnit = Unit,
        @OrigVendorId = VendorID
        FROM Products
        where Id = @Id;
    If @PartNbr is NULL
        set @PartNbr = @OrigPartNbr;
    If @Name is NULL
        set @Name = @OrigName;
    IF @Price is NULL
        set @Price = @OrigPrice;
    if @Unit is NULL
        set @Unit = @origUnit;
    if @VendorID is NULL
        set @VendorID = @OrigVendorId
    UPDATE Products SET
        PartNbr = @PartNbr,
        Name = @Name,
        Price = @Price,
        Unit = @Unit,
        VendorID = @VendorId
        Where Id = @Id;
    return 0;
END
Go

Declare @rc int;

EXECUTE @rc = UpdateProduct @id = 1, @Price = 6.99

if @rc != 0
    print 'Error code is ' + @rc;
