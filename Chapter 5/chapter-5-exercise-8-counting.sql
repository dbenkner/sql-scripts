/*
 Write a SELECT statement that answers this question: Which vendors are being paid from more than one account? 
 Return two columns: the vendor name and the total number of accounts that apply to that vendor’s invoices.
  Hint: Use the DISTINCT keyword to count InvoiceLineItems.AccountNo.
*/


select v.vendorName, count(li.AccountNo) TotalAccounts
from vendors v 
join InvoiceLineItems li 
    on li.AccountNo = v.DefaultAccountNo
Group by v.vendorName
having count(li.AccountNo) > 1
