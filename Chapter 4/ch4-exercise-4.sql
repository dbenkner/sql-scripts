/*
Write a SELECT statement that returns four columns: VendorName InvoiceNumber InvoiceDate Balance
From the Vendors table From the Invoices table From the Invoices table
InvoiceTotal minus the sum of PaymentTotal and CreditTotal
The result set should have one row for each invoice with a non-zero balance. Sort the result set by VendorName in ascending order.
But use the implicit Join
*/

select v.VendorName, i.InvoiceNumber, i.InvoiceDate, i.InvoiceTotal - (i.paymentTotal -i.CreditTotal) as balance
from Vendors as V, Invoices as I
where InvoiceTotal - (paymentTotal - CreditTotal) > 0
    and v.vendorId = i.VendorID
order by v.VendorName asc;