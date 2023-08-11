/*
Write a SELECT statement that returns five columns from three tables, all using the following column aliases: Vendor
Date
Number #
VendorName column InvoiceDate column InvoiceNumber column
InvoiceSequence column LineItem InvoiceLineItemAmount column
Assign the following aliases to the tables: v i
Vendors table Invoices table
li InvoiceLineItems table Sort the final result set by Vendor, Date, Number, and #.
*/

SELECT v.VendorID Vendor, i.InvoiceDate [Date], i.InvoiceNUmber Number, li.InvoiceSequence '#', li.InvoiceLineItemAmount InvoiceLineItems
from Vendors v
join invoices i 
    on i.vendorID = v.VendorID
join InvoiceLineItems li
    on li.InvoiceID = i.InvoiceID
Order by vendor, [date], number, #;