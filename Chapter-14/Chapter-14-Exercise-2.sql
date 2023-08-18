/*
Write a script that declares and sets a variable that’s equal to the total outstanding balance due. If the balance due is 
greater than $10,000.00, the script should return a result set consisting of VendorName, InvoiceNumber, InvoiceDueDate, 
and Balance for each invoice with a balance due, sorted with the oldest due date first. If the total outstanding balance due
 is less than $10,000.00, the script should return the message “Balance due is less than $10,000.00.” 
 */

 Declare @BalanceDue decimal(11,2);

 Set @BalanceDue = (Select Sum(InvoiceTOtal - PaymentTotal - CreditTOtal) from invoices);

 If @BalanceDue > 10000
 BEGIN
    Select v.VendorName, i.InvoiceNumber, i.InvoiceDate, i.InvoiceTotal - i.CreditTotal - i.PaymentTotal BalanceDue
        From Invoices i
        JOIN Vendors V on i.vendorID = v.vendorID
        Where i.InvoiceTotal - i.CreditTotal - i.PaymentTotal > 0
        Order By i.InvoiceDate ASC;
END
ELSE
    Print 'Balance Due is less than $10,000.000;'