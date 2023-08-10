/*
Write a SELECT statement that returns one column from the Vendors table named Full Name. Create this column from the VendorContactFName and VendorContactLName columns. 
Format it as follows: last name, comma, first name (for example, “Doe, John”). Sort the result set by last name, then by first name.
*/

select VendorContactLName + ', ' + VendorContactFName as 'Full Name'
from vendors
order by VendorContactLName, VendorContactFName;