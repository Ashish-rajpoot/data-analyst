-- 15. LEFT JOIN
-- Important for understanding unmatched records.

-- 1. Display all customers and their orders.
select *
from sql_practice.customers as c
left join sql_practice.orders as o
	on o.customer_id = c.customer_id;
    
-- 2. Find customers who have never placed an order.
SELECT c.*
FROM sql_practice.customers AS c
LEFT JOIN sql_practice.orders AS o
    ON c.customer_id = o.customer_id
WHERE o.customer_id IS NULL;   

-- 3. Display all categories and their products.
select *
from sql_practice.categories as c
left join sql_practice.products as p
	on c.category_id = p.category_id;
    
-- 4. Find categories that have no products.
select c.*
from sql_practice.categories as c
left join sql_practice.products as p
	on c.category_id = p.category_id
where p.category_id is null;
    
-- 5. Display all products and their order items.
select *
from sql_practice.products as p
left join sql_practice.order_items as oi
	on oi.product_id = p.product_id;
    
-- 6. Find products that have never been ordered.
select p.* 
from sql_practice.products as p
left join sql_practice.order_items as oi
	on p.product_id = oi.product_id
where oi.product_id is null;

-- 7. Display all customers and their addresses.
select *
from sql_practice.customers as c
left join sql_practice.addresses as a
	on c.customer_id = a.customer_id;
    
-- 8. Find customers who don't have an address.
select c.*
from sql_practice.customers as c
left join sql_practice.addresses as a
	on c.customer_id = a.customer_id
where a.customer_id is null;

-- 9. Display all orders and their order items.
select *
from sql_practice.orders as o
left join sql_practice.order_items as oi
	on o.order_id = oi.order_id;

-- 10. Find orders that don't have any order items.
select o.*
from sql_practice.orders as o
left join sql_practice.order_items as oi
	on o.order_id = oi.order_id
where oi.order_id is null;