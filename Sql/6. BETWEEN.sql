-- 6. BETWEEN
-- Practice ranges.
-- 1. Find products priced between ₹500 and ₹5,000.
select *
from sql_practice.products 
where price between 500 and 5000
;
-- 2. Find products priced between ₹10,000 and ₹70,000.
select *
from sql_practice.products
where price between 10000 and 70000
;
-- 3. Find products with stock between 20 and 50.
select * 
from sql_practice.products
where stock_quantity between 20 and 50
;
-- 4. Find products with stock between 10 and 30.
select *
from sql_practice.products
where stock_quantity between 10 and 30
;
-- 5. Find customers with IDs between 3 and 7.
select *
from sql_practice.customers
where customer_id between 3 and 7
;
-- 6. Find orders with IDs between 103 and 110.
select *
from sql_practice.orders 
where order_id between 103 and 110;
-- 7. Find orders placed between 2025-05-01 and 2025-05-15 .
select *
from sql_practice.orders
where order_date between '2025-05-01' and '2025-05-15';
-- 8. Find customers who registered between 2025-02-01 and 2025-03-31 .
select *
from sql_practice.customers
where registration_date between '2025-02-01' and '2025-03-31';
-- 9. Find products priced between ₹1,000 and ₹10,000.
select * 
from sql_practice.products
where price between 1000 and 10000;

-- 10. Find orders placed between 2025-05-15 and 2025-06-01 .
select *
from sql_practice.orders
where order_date between '2025-05-15' and '2025-06-01';
