CREATE OR ALTER PROCEDURE SwitchProductsToNewVendor
    @PresentVendorID int = null,
    @NewVendorID int null = null
AS 
BEGIN
    if @PresentVendorID is null or @NewVendorID = null
        return -1 -- Error catching
    declare @CheckNewVendorID int = 0;
    Select @CheckNewVendorId = id from vendors where id = @NewVendorID;
    if @CheckNewVendorID = 0
        return -2
    
    Update Products
        set 
            VendorID = @NewVendorID
        where 
            VendorID = @PresentVendorID;
    return -0
END
GO

Declare @RC int;


Exec @RC = SwitchProductsToNewVendor @PresentVendorID = 2, @NewVendorID = 11;

if @RC != 0
    print 'Error code is ' + cast(@RC as varchar);
