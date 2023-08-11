/*
Write a SELECT statement that returns four columns: VendorName InvoiceNumber InvoiceDate Balance
From the Vendors table From the Invoices table From the Invoices table
InvoiceTotal minus the sum of PaymentTotal and CreditTotal
The result set should have one row for each invoice with a non-zero balance. Sort the result set by VendorName in ascending order.
*/

SELECT v.VendorName, i.InvoiceNumber, i.InvoiceDate, i.InvoiceTotal - i.paymentTotal - i.CreditTotal Balance
from Vendors v 
join invoices I 
on v.vendorID = i.VendorID
where i.InvoiceTotal - i.PaymentTotal - i.CreditTotal > 0
order by v.VendorName;