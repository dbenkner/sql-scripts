/*
 Write a SELECT statement that answers this question: Which invoices have a PaymentTotal that’s greater than the average PaymentTotal for all paid invoices? Return the InvoiceNumber and InvoiceTotal for each invoice.
 1566
*/

select InvoiceNumber, InvoiceTotal
from Invoices
where PaymentTotal > (
    select avg(PaymentTotal)
    from Invoices
    where InvoiceTotal - paymentTotal - CreditTotal = -
);