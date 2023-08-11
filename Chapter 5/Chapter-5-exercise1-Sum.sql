/*
Write a SELECT statement that returns two columns from the Invoices table: VendorID and PaymentSum, where PaymentSum is the sum of the PaymentTotal column. Group the result set by VendorID.
*/

select VendorID, sum(PaymentTotal) PaymentTotal
from Invoices
group by vendorID