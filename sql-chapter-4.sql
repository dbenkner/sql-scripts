SELECT 'A'ABC, *
from Customers
where sales >= 80000
UNION
SELECT 'B'ABC, *
from Customers
where sales >= 20000 and Sales < 80000
UNION
SELECT 'C'ABC, *
from Customers
where sales < 20000
Order by Sales desc

/*
Outer Join
select c.name, o.Description
from Orders o right join customers c
    on c.Id = o.CustomerId
order by c.Name;
Inner Join
select o.Description, c.Name 
from Orders o
Join Customers c
    on c.Id = o.CustomerId;

*/