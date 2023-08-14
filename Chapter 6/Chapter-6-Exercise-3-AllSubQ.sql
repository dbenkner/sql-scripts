/*
Write a SELECT statement that answers this question: Which invoices have a PaymentTotal that’s greater than the median PaymentTotal for all paid invoices? Chapter 6 How to code subqueries
(The median marks the midpoint in a set of values. In other words, an equal number of values lie above and below the median value.) Return the InvoiceNumber and InvoiceTotal for each invoice.
Hint: Begin with the solution to exercise 2, then use the ALL keyword in the WHERE clause and code “TOP 50 PERCENT PaymentTotal” in the subquery.
*/


select InvoiceNumber, InvoiceTotal
from Invoices
where PaymentTotal > all (
    select top 50 PERCENT PaymentTotal
    from Invoices
    where PaymentTotal <> 0
    order by PaymentTotal
);

select paymentTotal
from Invoices
where InvoiceTotal - PaymentTotal - CreditTotal = 0
order by paymentTotal