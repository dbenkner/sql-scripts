/*
Write a SELECT statement that returns two columns from the GLAccounts table: AccountNo and AccountDescription. 
The result set should have one row for each account number that has never been used. Sort the final result set by AccountNo. Hint: Use an outer join to the InvoiceLineItems table.
*/

select g.AccountNo, g.AccountDescription
from GLAccounts g 
    left join InvoiceLineItems li
    on g.AccountNo = li.AccountNo
    where li.AccountNo is null
    order by g.AccountNo
