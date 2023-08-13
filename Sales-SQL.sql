select c.name, count(ol.OrdersId) NumOfOrders, sum(ol.price) ordertotal, (sum(ol.price) / count(ol.OrdersID)) AverageOrder
from customers c
join orders o 
    on o.CustomerId = c.Id
join OrderLines ol 
    on o.id = ol.ordersID
where sales > 50000
group by c.name

select product, quantity, price, ordersID
from orderlines
