-- 13. HAVING
-- Practice filtering groups.

-- 1. Find cities having more than 1 customer.
select city, count(city)
from sql_practice.customers
group by city
having count(city) > 1;

-- 2. Find categories having more than 2 products.
select category_id, count(category_id) as product_count
from sql_practice.products
group by category_id
having count(category_id) > 2;

-- 3. Find categories whose average product price is greater than ₹10,000.
select category_id, avg(price) as average_product_price
from sql_practice.products
group by category_id
having avg(price) > 10000;

-- 4. Find customers who have placed more than 1 order.
select customer_id, count(customer_id) as Customer_count_order_more_than_1
from sql_practice.orders
group by customer_id
having count(customer_id) > 1;

-- 5. Find products whose total quantity sold is greater than 2.
select product_id, sum(quantity) as sum_of_product_sold
from sql_practice.order_items
group by product_id
having sum(quantity) > 2;

-- 6. Find order statuses having more than 2 orders.
select order_status, count(order_status)
from sql_practice.orders
group by order_status
having count(order_status) > 2;

-- 7. Find categories whose total stock is greater than 50.
select category_id, sum(stock_quantity) as total_stock
from sql_practice.products
group by category_id
having sum(stock_quantity) > 50;

-- 8. Find customers whose total order quantity is greater than 2.
select o.order_id, sum(quantity)
from sql_practice.orders as o
join sql_practice.order_items as oi
	on o.order_id = oi.order_id
group by o.order_id
having sum(quantity) > 2;

-- 9. Find products generating more than ₹5,000 revenue.
-- select * from sql_practice.order_items; 
select product_id, sum(quantity * unit_price)
from sql_practice.order_items
group by product_id
having sum(quantity * unit_price) > 5000;

-- 10. Find categories whose maximum product price is greater than ₹50,000.
select c.category_name, p.price
from sql_practice.products as p
join sql_practice.categories as c
	on c.category_id = p.category_id
group by p.category_id, p.price
having p.price > 50000.00;

