-- 3. Comparison Operators
-- Practice:
-- =
-- >
-- <
-- >=
-- <=
-- <>
-- Questions:
-- 1. Find products costing more than ₹50,000.
select *
from sql_practice.products
where price > 50000
;
-- 2. Find products costing less than ₹1,000.
select *
from sql_practice.products
where price < 1000
;
-- 3. Find products costing ₹2,499 or more.
select *
from sql_practice.products
where price >= 2499
;
-- 4. Find products with stock less than 20.
select *
from sql_practice.products
where stock_quantity < 20
;
-- 5. Find products with stock greater than or equal to 40.
select *
from sql_practice.products
where stock_quantity >= 40
;
-- 6. Find orders placed on 2025-05-10 .
select *
from sql_practice.orders
where order_date = '2025-05-10'
;
-- 7. Find customers who registered before 2025-03-01 .
select *
from sql_practice.customers
where registration_date < '2025-03-01'
;
-- 8. Find products whose price is not ₹799.
select *
from sql_practice.products
where price != 799
;
-- 9. Find orders whose status is not Delivered .
select *
from sql_practice.orders
where order_status != 'Delivered'
;
-- 10. Find customers whose customer_id is greater than 5.
select *
from sql_practice.customers
where customer_id > 5
;