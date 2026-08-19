-- 14. INNER JOIN
-- Now we start working with multiple tables.

-- 1. Display customer names along with their orders.
select *
from sql_practice.customers as c
inner join sql_practice.orders as p
	 on c.customer_id = p.customer_id;

-- 2. Display customer names and order dates.
select c.first_name, p.order_date
from sql_practice.customers as c
inner join sql_practice.orders as p
	 on c.customer_id = p.customer_id;

-- 3. Display customer names and order status.
select c.first_name, o.order_status
from sql_practice.customers as c
join sql_practice.orders as o
	on c.customer_id = o.customer_id;

-- 4. Display product names with their categories.
select p.product_name, c.category_name
from sql_practice.categories as c
inner join sql_practice.products as p
	on c.category_id = p.category_id;
    
-- 5. Display products along with category names and prices.
select p.product_name, c.category_name, p.price
from sql_practice.categories as c
join sql_practice.products as p
	on c.category_id = p.category_id;
    
-- 6. Display orders along with customer names.
select c.first_name,o.order_id ,o.order_date, order_status
from sql_practice.customers as c
join sql_practice.orders as o
	on c.customer_id = o.customer_id;

-- 7. Display order items with product names.
select oi.order_item_id, oi.order_id, p.product_name, oi.quantity,oi.unit_price
from sql_practice.order_items as oi
join sql_practice.products as p
	on p.product_id = oi.product_id;

-- 8. Display order items with product names and quantities.
select oi.order_item_id, p.product_name, oi.quantity
from sql_practice.order_items as oi
join sql_practice.products as p
	on p.product_id = oi.product_id;

-- 9. Display order items with product names and unit prices.
select oi.order_item_id, p.product_name, p.price
from sql_practice.order_items as oi
join sql_practice.products as p
	on oi.product_id = p.product_id
order by order_item_id;
    
-- 10. Display customer name, order ID, product name, and quantity.
select c.first_name, o.order_id, p.product_name, oi.quantity
-- select *
from sql_practice.customers as c
join sql_practice.orders as o
	on o.customer_id = c.customer_id
join sql_practice.order_items as oi
	on oi.order_id = o.order_id
join sql_practice.products as p
	on oi.product_id = p.product_id;
