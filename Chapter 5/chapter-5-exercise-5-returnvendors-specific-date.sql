/*
Modify the solution to exercise 4 to filter for invoices dated from October 1, 2022 to December 31, 2022.
Hint: Join the Invoices table so you can code a search condition based on InvoiceDate.
*/

select distinct v.vendorName, gl.AccountDescription, count(li.InvoiceLineItemAmount) LineItemCount, sum(li.InvoiceLineItemAmount) LineItemSum
from vendors v 
join GLAccounts gl 
    on v.defaultaccountno = gl.AccountNo
join InvoiceLineItems li 
    on li.AccountNo = v.defaultaccountno
join Invoices I
    on i.VendorID = v.VendorID
group by  v.vendorName, gl.AccountDescription,  i.InvoiceDate
having i.InvoiceDate >= '2022-10-01' or i.InvoiceDate <= '2022-12-31'
