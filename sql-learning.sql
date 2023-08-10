

/*
select *
from Invoices
where PaymentDate > InvoiceDueDate;

select *
from GLAccounts
where AccountDescription like '%sale%';
*/

/*
SELECT *
from GLAccounts
where AccountNo in (
    select AccountNo from GLAccounts
    where left(AccountDescription, 8) = 'Employer'
);


select * 
from GLAccounts
where accountNo not IN (100, 200, 300);
*/

/*
SELECT VendorName + '''s Address: ',
VendorCity + ', ' + VendorState + ' ' + VendorZipCode FROM Vendors;


--select 'Greg' + ' ' + 'O''Dowd'


select top 20 InvoiceID, InvoiceTotal, CreditTotal, PaymentTotal, CreditTotal + PaymentTotal  as TotalCredits
from Invoices
order by InvoiceTotal desc;

select *
from glAccounts
where AccountNo >= 300 AND AccountNo > 600
order by AccountDescription DESC, AccountNo
*/
