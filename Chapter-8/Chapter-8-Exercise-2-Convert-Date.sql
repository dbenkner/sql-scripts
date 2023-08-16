select InvoiceDate, Cast(InvoiceDate as varchar) InvoiceDateCast, TRY_CONVERT(varchar, InvoiceDate, 1) TryConvertInvoiceDateStyle1,
    TRY_CONVERT(varchar, InvoiceDate, 10) TryConvertInvoiceDataStyle10
FROM Invoices;