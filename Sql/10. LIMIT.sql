-- 10. LIMIT
-- Practice restricting results.

-- 1. Find the 5 cheapest products.
select *
from sql_practice.products
order by price limit 5;

-- 2. Find the 5 most expensive products.
select *
from sql_practice.products
order by price desc limit 5;

-- 3. Find the 3 products with the highest stock.
select *
from sql_practice.products
order by stock_quantity desc limit 3;

-- 4. Find the 3 products with the lowest stock.
select *
from sql_practice.products
order by stock_quantity limit 3;

-- 5. Find the first 5 customers alphabetically.
select *
from sql_practice.customers
order by first_name limit 5;

-- 6. Find the last 5 customers based on customer ID.
select *
from sql_practice.customers
order by customer_id desc limit 5;

-- 7. Find the latest 5 orders.
select *
from sql_practice.orders
order by order_date desc limit 5;

-- 8. Find the earliest 5 orders.
select *
from sql_practice.orders
order by order_date limit 5;

-- 9. Find the 5 most expensive products in category 3.
select *
from sql_practice.products
where category_id = 3
order by price desc limit 5;

-- 10. Find the 3 latest registered customers.
select *
from sql_practice.customers
order by registration_date desc limit 3;