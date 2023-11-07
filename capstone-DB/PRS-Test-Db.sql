Delete from RequestLines;
DELETE from Requests
Delete from Products
DELETE from Vendors;
Delete from users;

Set IDENTITY_INSERT Users ON;

Insert users (Id, Username, Password, Firstname, Lastname, Phone, Email, IsReviewer, IsAdmin) VALUES
    (1, 'dbenkner', 'snowflake', 'David', 'Benkner', '5133731765', 'dbenkner@gmail.com', 1, 1),
    (2, 'hhill', 'propane', 'Hank', 'Hill', '5052025454', 'hank@strickland.com', 1, 0),
    (3, 'hsimpson', 'donuts', 'Homer', 'Simpson', '6265553226', 'homerwantsaduff@yahoo.com', 0, 0);
SELECT * from users;

SET IDENTITY_INSERT Users OFF;

SET IDENTITY_INSERT VENDORS ON;

INSERT vendors (Id, code, name, address, city, state, zip, phone, email) VALUES
    (1, 'MICROCENT', 'Microcenter', '11755 Mosteller Rd', 'Sharonville', 'OH', '45241', '18009591800', 'micro@center.com'),
    (2, 'AMAZ', 'Amazon', '100 Amazon St', 'Seattle', 'WA', '98910', '18002625000', 'cust@amazon.com'),
    (3, 'STAP', 'Staples', '9500 Mason Montgomery', 'Mason', 'OH', '45249', '5134599500', 'customer@staples.com'),
    (4, 'IKEA', 'Ikea', '9500 Ikea Way', 'West Chester Township', 'OH', '45069', '8888884532', 'cust@ikea.com');
SET IDENTITY_INSERT VENDORS  OFF;
select * from vendors;

SET IDENTITY_INSERT Products ON;
Insert Products (Id, Partnbr, Name, Price, Unit, VendorId) VALUES
    (1, 'CRTPRPR', 'Paper', 20, '1 carton', 3),
    (2, 'ASUS4070ROG', 'Asus 4070 Rog Strix', 600, '1 card', 1),
    (3, 'HPTNR24213', 'HP Toner', 50, '1 toner', 2),
    (4, 'DELL32FAD', 'Dell 32FAD 32 inch monitor', 249, '1 unit', 1),
    (5, 'DESK4324', 'Jimbo Desk', 150, '1 Desk', 4),
    (6, 'KYBDLOG', 'Logitech Keyboard', 30, '1 unit', 2);
SET IDENTITY_INSERT Products Off;
select * from Products;
SET IDENTITY_INSERT Requests on;
INSERT Requests (Id, [Description], Justification, DeliveryMode, [Status], Total, UserId) VALUES
    (1, 'Office Supplies', 'Out', 'Pickup', 'NEW', 20, 2),
    (2, 'Tech', 'Broken', 'Pickup', 'NEW', 50, 1),
    (3, 'Supplies', 'replinish', 'Delivery', 'NEW', 100, 2);
SET IDENTITY_INSERT Requests off;
select * from requests;
SET IDENTITY_INSERT RequestLines ON;
Insert RequestLines (Id, RequestId, ProductId, Quantity) Values
    (1, 1, 1, 2),
    (2, 1, 3, 1),
    (3, 2, 4, 1),
    (4, 3, 6, 1);
SET IDENTITY_INSERT Requestlines OFF;
select * from RequestLines;
