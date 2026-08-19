-- 16. Multi-Table JOIN
-- Now combine 3 or more tables.
-- 1. Display customer name, order ID, and order date.
select c.first_name, o.order_id, o.order_date
from sql_practice.customers as c
join sql_practice.orders as o
	on o.customer_id = c.customer_id;
    
-- 2. Display customer name, product name, and quantity purchased.
select c.first_name, p.product_name, oi.quantity
from sql_practice.customers as c
join sql_practice.orders as o
	on c.customer_id = o.customer_id
join sql_practice.order_items as oi
	on oi.order_id= o.order_id
join sql_practice.products as p
    on	oi.product_id = p.product_id;
    
-- 3. Display customer name, product name, and price.
select c.first_name, p.product_name, p.price
from sql_practice.customers as c
join sql_practice.orders as o
	on o.customer_id = c.customer_id
join sql_practice.order_items as oi
	on oi.order_id = o.order_id
join sql_practice.products as p
	on oi.product_id = p.product_id
group by
c.first_name,
p.product_name,
p.price;

-- 4. Display customer name, category name, and product name.
select c.first_name, ca.category_name, p.product_name
from sql_practice.customers as c
join sql_practice.orders as o
	on c.customer_id = o.customer_id
join sql_practice.order_items as oi
	on oi.order_id = o.order_id
join sql_practice.products as p
	on p.product_id = oi.product_id
join sql_practice.categories as ca
	on ca.category_id = p.category_id;
    
-- 5. Display order ID, customer name, product name, and quantity.
select o.order_id, c.first_name, p.product_name, oi.quantity
from sql_practice.customers as c
join sql_practice.orders as o
	on c.customer_id = o.customer_id
join sql_practice.order_items as oi
	on oi.order_id = o.order_id
join sql_practice.products as p
	on p.product_id = oi.product_id
join sql_practice.categories as ca
	on ca.category_id = p.category_id
order by o.order_id;

-- 6. Display customer name, order date, product name, and unit price.
select c.first_name, o.order_date, p.product_name, oi.unit_price
from sql_practice.customers as c
join sql_practice.orders as o
	on c.customer_id = o.customer_id
join sql_practice.order_items as oi
	on oi.order_id = o.order_id
join sql_practice.products as p
	on p.product_id = oi.product_id
join sql_practice.categories as ca
	on ca.category_id = p.category_id
order by o.order_id;

-- 7. Display customer city, product name, and quantity purchased.
select a.city, p.product_name, oi.quantity
from sql_practice.customers as c
join sql_practice.orders as o
	on o.customer_id = c.customer_id
join sql_practice.order_items as oi
	on oi.order_id = o.order_id
join sql_practice.products as p
	on oi.product_id = p.product_id
join sql_practice.addresses as a
	on c.customer_id = a.customer_id;
-- 8. Display customer name, product name, category name, and price.
select c.first_name, p.product_name, ca.category_name, p.price
from sql_practice.customers as c
join sql_practice.orders as o
	on c.customer_id = o.customer_id
join sql_practice.order_items as oi
	on oi.order_id = o.order_id
join sql_practice.products as p
	on p.product_id = oi.product_id
join sql_practice.categories as ca
	on ca.category_id = p.category_id
order by o.order_id;
-- 9. Display customer name, order ID, product name, quantity, and unit price.
select c.first_name, o.order_id, p.product_name,oi.quantity, oi.unit_price
from sql_practice.customers as c
join sql_practice.orders as o
	on c.customer_id = o.customer_id
join sql_practice.order_items as oi
	on oi.order_id = o.order_id
join sql_practice.products as p
	on p.product_id = oi.product_id
join sql_practice.categories as ca
	on ca.category_id = p.category_id
order by o.order_id;
-- 10. Display customer name and the total amount of every order.
SELECT
    o.order_id,
    c.first_name,
    SUM(oi.quantity * oi.unit_price) AS total_order_amount
FROM sql_practice.customers AS c
JOIN sql_practice.orders AS o
    ON c.customer_id = o.customer_id
JOIN sql_practice.order_items AS oi
    ON oi.order_id = o.order_id
GROUP BY
    o.order_id,
    c.first_name
ORDER BY
    o.order_id;