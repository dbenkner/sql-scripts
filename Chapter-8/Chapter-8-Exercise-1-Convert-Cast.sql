SELECT InvoiceTotal, 
    CAST(InvoiceTotal as DECIMAL(10,2)) InvoiceDecimal,
    CAST(InvoiceTotal as varchar) InvoiceVarChar,
    CONVERT(decimal(10,2), InvoiceTotal) InvoiceConvertDecimal,
    convert(varchar(12), InvoiceTotal) InvoiceTotalConvertVarChar
from Invoices