-- 2. WHERE — Filtering
-- Practice filtering rows based on conditions.

-- 1. Find customers who live in Delhi.
select *
from sql_practice.customers
where city = 'Delhi'
;

-- 2. Find customers who live in Mumbai.
select *
from sql_practice.customers
where city = 'Mumbai'
;

-- 3. Find products with a price greater than ₹10,000.
select *
from sql_practice.products
where price > 10000
;

-- 4. Find products with a price less than ₹5,000.
select *
from sql_practice.products
where price < 5000
;

-- 5. Find products whose stock quantity is greater than 30.
select *
from sql_practice.products
where stock_quantity > 30
;
-- 6. Find orders with status Delivered .
select *
from sql_practice.orders
where order_status = 'Delivered'
;
-- 7. Find orders with status Cancelled .
select *
from sql_practice.orders
where order_status = 'Cancelled'
;
-- 8. Find customers who registered after 2025-02-01 .
select *
from sql_practice.customers
where registration_date >= '2025-02-01'
;
-- 9. Find products costing exactly ₹799.
select *
from sql_practice.products
where price = 799.00
;
-- 10. Find orders placed after 2025-05-15 .
select *
from sql_practice.orders
where order_date > '2025-05-15'
;