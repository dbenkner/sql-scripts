Select 'Past Due' as DueStatus, i.InvoiceNumber, i.InvoiceDate, i.InvoiceTotal, v.vendorName, v.VendorPhone
from invoices i 
join terms t
    on t.termsID = i.TermsID
join vendors v 
    on v.vendorID = i.VendorID
Where datediff(day, i.InvoiceDate, 2023-03-01) < TermsDueDays and i.invoicetotal - i.PaymentTotal - i.CreditTotal > 0
UNION
select 'Not Due' as DueStatus, i.invoiceNumber, i.InvoiceDate, i.invoicetotal, v.vendorName, v.VendorPhone
from invoices i
join terms t 
    on t.termsID = i.termsID
join Vendors v 
    on v.vendorID = i.VendorID
Where datediff(day, i.InvoiceDate, 2023-03-01) > TermsDueDays and i.invoicetotal - i.PaymentTotal - i.credittotal > 0
UNION
select 'Paid on time' as DueStatus, i.InvoiceNumber, i.InvoiceDate, i.InvoiceTotal, v.vendorName, v.VendorPhone
from invoices i 
join terms t
    on t.termsID = i.TermsID
join vendors v 
    on v.vendorID = i.VendorID
WHERE datediff(day, i.InvoiceDate, i.PaymentDate) < TermsDueDays and i.InvoiceTotal - i.CreditTotal - i.PaymentTotal = 0
UNION
select 'Paid Late' as DueStatus, i.InvoiceNumber, i.InvoiceDate, i.InvoiceTotal, v.vendorName, v.VendorPhone
from invoices i 
join terms t
    on t.termsID = i.TermsID
join vendors v 
    on v.vendorID = i.VendorID
WHERE datediff(day, i.invoiceDate, PaymentDate) > TermsDueDays and i.InvoiceTotal - i.CreditTotal - i.PaymentTotal = 0