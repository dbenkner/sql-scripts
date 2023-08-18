/*
Write a script that uses one variable to store the count of all of the invoices in the Invoices table that have a balance due 
and another variable to store the sum of the balances due for all of those invoices. 
If that total balance due is greater than or equal to $30,000, the script should display a result set that displays the 
values of both variables like this: Invoice count: 11 Total due: 32020
Otherwise, the script should display a result set that displays a message that says, “Total balance due is less than $30,000.”
*/
Declare @InvoiceCount int;
Declare @SumOfAll decimal(11,2);

set @InvoiceCount = (select count(invoiceID)
    from Invoices
    where invoiceTotal - PaymentTotal - CreditTotal > 0)
set @SumOfAll = (select sum(InvoiceTotal - PaymentTotal - CreditTotal) from invoices where InvoiceTotal - PaymentTotal - CreditTotal > 0)


If @SumOfAll > 30000
BEGIN
    Print  'Invoice Count ' + Convert(VarChar, @InvoiceCount) + ' Total Due: '+ Convert(Varchar, @SumOfAll);
END
ELSE Print 'TOtal Invoices Due Less than 30000';