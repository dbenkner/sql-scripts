/*
Use the UNION operator to generate a result set consisting of two columns from the Vendors table: VendorName and VendorState.
 If the vendor is in California, the VendorState value should be “CA”; otherwise, the VendorState value should be “Outside CA.” Sort the final result set by VendorName.
*/

select VendorName, VendorState
from Vendors
where VendorState = 'CA'
UNION 
select vendorName, 'Outside CA' VendorState
from Vendors
where VendorState != 'ca' 
order by VendorName

/*
Another way to code using IIF function 
SELECT VendorName, IIF (VendorState = 'CA', 'CA', 'Outside CA')
from Vendors
order by VendorName;
*/