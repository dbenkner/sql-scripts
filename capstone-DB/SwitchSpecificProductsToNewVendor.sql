CREATE OR ALTER PROCEDURE SwitchSpecificProdcutsToNewVendor
    @PartNbr as Varchar(30) = null,
    @NewVendorID as int = null
AS
BEGIN
    IF @PartNbr is null or @NewVendorID is NULL
        return -1
    UPDATE Products
        SET VendorId = @NewVendorID
        Where PartNbr = @PartNbr;
    Return 0
END
GO

declare @Rc int;

select * from products;

EXECUTE @RC = SwitchSpecificProdcutsToNewVendor @PartNbr = 'MBP15', @NewVendorId = 2;


select * from products;
select * from vendors;
if @RC != 0
    print 'The error code is ' + cast(@RC as varchar)