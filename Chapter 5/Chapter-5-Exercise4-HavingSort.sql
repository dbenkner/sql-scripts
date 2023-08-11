/*
Write a SELECT statement that returns three columns: AccountDescription, LineItemCount, and LineItemSum. 
LineItemCount is the number of entries in the InvoiceLineItems table that have that AccountNo. LineItemSum is the sum of the InvoiceLineItemAmount column for that AccountNo. 
Filter the result set to include only those rows with LineItemCount greater than 1. Group the result set by account description, and sort it by descending LineItemCount. 
Hint: Join the GLAccounts table to the InvoiceLineItems table.
*/

SELECT gl.AccountDescription, count(li.InvoiceID) LineItemCount, sum(li.InvoiceLineItemAmount) LineItemSum
from GLAccounts gl
join InvoiceLineItems li
 on gl.AccountNo = li.AccountNo
 Group By gl.AccountDescription
 HAVING count(li.InvoiceID) > 1
 order by LineItemCount DESC;