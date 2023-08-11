/* Chapter 5 Summary Quaroies

select Count(*) 'Number of Cusotmers', max(Sales) 'Max Sales', min(sales) 'Min Sales', AVG(sales) 'Average Sales', Sum(sales) 'Total'
    from customers;

SELECT city, state, sum(sales) Sales
from Customers
group by state, city
HAVING sum(sales) > 600000
order by sales;
Skip Exercise 6 in chapter 5
*/