/*
 Write a SELECT statement that answers this question: Which vendors are being paid from more than one account? 
 Return two columns: the vendor name and the total number of accounts that apply to that vendor’s invoices.
  Hint: Use the DISTINCT keyword to count InvoiceLineItems.AccountNo.
*/
select v.VendorName, count(distinct li.accountno) TotalAccounts
from vendors v 
join invoices i 
  on v.vendorID = i.VendorID
Join InvoiceLineItems li 
  on i.invoiceID = li.InvoiceID
group by VendorName
having COUNT(DISTINCT li.AccountNo) > 1
order by VendorName