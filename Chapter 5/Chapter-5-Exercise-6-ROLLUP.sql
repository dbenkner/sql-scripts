use AP

select accountNo, SUM(InvoiceLineItemAmount) as LineItemSum
from InvoiceLineItems
group by AccountNo with ROLLUP