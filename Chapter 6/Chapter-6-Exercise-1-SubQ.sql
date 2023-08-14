/*
 Write a SELECT statement that returns the same result set as this SELECT
statement. Substitute a subquery in a WHERE clause for the inner join. 
SELECT DISTINCT VendorName FROM Vendors v
JOIN Invoices i ON v.VendorID = i.VendorID ORDER BY VendorName;
*/


select vendorName
from vendors
where VendorID in (
    select distinct VendorID
    from Invoices
)
order by VendorName