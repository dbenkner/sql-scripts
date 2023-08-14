/*
Write a SELECT statement that returns four columns: VendorName, Account-Description, LineItemCount, and LineItemSum.
 LineItemCount is the row count, and LineItemSum is the sum of the InvoiceLineItemAmount column. 
 For each vendor and account, return the number and sum of line items, sorted first by vendor, then by account description. Hint: Use a four-table join.
*/

select v.vendorName, gl.AccountDescription, count(*) LineItemCount, sum(li.InvoiceLineItemAmount) LineItemSum
from vendors v 
join GLAccounts gl 
    on v.defaultaccountno = gl.AccountNo
join InvoiceLineItems li 
    on li.AccountNo = v.defaultaccountno
group by v.vendorName, gl.AccountDescription