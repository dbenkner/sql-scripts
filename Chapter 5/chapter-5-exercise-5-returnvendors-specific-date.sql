/*
Modify the solution to exercise 4 to filter for invoices dated from October 1, 2022 to December 31, 2022.
Hint: Join the Invoices table so you can code a search condition based on InvoiceDate.
*/

select distinct v.vendorName, gl.AccountDescription, count(*) LineItemCount, sum(li.InvoiceLineItemAmount) LineItemSum, i.InvoiceDate
from vendors v 
join GLAccounts gl 
    on v.defaultaccountno = gl.AccountNo
join InvoiceLineItems li 
    on li.AccountNo = v.defaultaccountno
join Invoices I
    on i.VendorID = v.VendorID
where i.InvoiceDate BETWEEN '2022-01-01' AND '2022-12-31'
group by  v.vendorName, gl.AccountDescription,  i.InvoiceDate
having count(*) > 1
order by LineItemCount DESC

