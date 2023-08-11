/*
2. Write a SELECT statement that returns two columns: VendorName and PaymentSum, where PaymentSum is the sum of the PaymentTotal column. 
Group the result set by VendorName. Return only 10 rows, corresponding to the 10 vendors who’ve been paid the most. Hint: Use the TOP clause and join the Vendors table to the Invoices table.
*/

select top 10 v.VendorName, Sum(i.paymenttotal) PaymentSum
from vendors v
JOIN
    Invoices I
    on i.vendorID = v.vendorID
Group by v.VendorName
Order By PaymentSum DESC
