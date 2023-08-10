/*
Modify the solution to exercise 3 to filter for contacts whose last name begins with the letter A, B, C, or E (not D).
*/


select VendorContactLName + ', ' + VendorContactFName as 'Full Name'
from vendors
WHERE VendorContactLName like 'A%' or VendorContactLName like 'B%' or VendorContactLName like 'C%' or VendorContactLName like 'E%'
order by VendorContactLName, VendorContactFName;
