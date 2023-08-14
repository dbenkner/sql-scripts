/*
Write a SELECT statement that returns three columns: VendorName, InvoiceCount, and InvoiceSum. 
InvoiceCount is the count of the number of invoices, and InvoiceSum is the sum of the InvoiceTotal column. Group the result set by vendor. 
Sort the result set so the vendor with the highest number of invoices appears first.
*/

select v.VendorName, count(*) InvoiceCount, sum(i.InvoiceTotal) InvoiceSum
from vendors v
join Invoices I
    on v.vendorID = i.VendorID
Group By v.VendorName
Order By InvoiceCount DESC