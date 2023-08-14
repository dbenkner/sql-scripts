/* Subqueries
Chapter 6 SQL

SALESDB
select *
from customers
where sales > (
    select avg(sales)
    from Customers
);


In Cluse
USE AP 
select *
from vendors    
where vendorID in (
    select distinct VendorID
    from invoices
    where invoiceTotal >= 100
    )

SELECT InvoiceNumber, InvoiceDate, InvoiceTotal, InvoiceTotal - PaymentTotal - CreditTotal AS BalanceDue
FROM Invoices
WHERE InvoiceTotal - PaymentTotal - CreditTotal > 0 AND InvoiceTotal - PaymentTotal - CreditTotal < (SELECT AVG(InvoiceTotal - PaymentTotal - CreditTotal) FROM Invoices
WHERE InvoiceTotal - PaymentTotal - CreditTotal > 0) ORDER BY InvoiceTotal DESC;
*/

