USE AP;

SELECT VendorID, INvoiceDate, InvoiceTotal,
    SUM(InvoiceTotal) OVER (PARTITION BY VendorID) AS VendorTOtal,
    count(InvoiceTotal) OVER (PARTITION BY VendorID) as VendorCount,
    AVG(InvoiceTotal) OVER (PARTITION by VendorID) AS VendorAvg
from Invoices