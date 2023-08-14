select c.name, o.DESCRIPTION OrderDescription, ol.product, ol.Quantity * ol.price TotalPrice
from customers c
join orders o 
    on c.id = o.CustomerId
join orderlines ol 
    on ol.ordersid = o.id
where c.id = 40

select c.name, sum(ol.price * ol.Quantity) TotalOrder
from customers c 
join orders o
    on o.CustomerId = c.id
join orderlines OL 
    on o.id = ol.OrdersId
where c.id = 40
group by c.Name