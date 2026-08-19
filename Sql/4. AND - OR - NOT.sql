-- 4. AND / OR / NOT
-- Practice combining conditions.

-- 1. Find products costing more than ₹1,000 AND having stock greater than 20.
select * 
from sql_practice.products
where price > 1000 and stock_quantity > 20
;
-- 2. Find customers living in Delhi OR Mumbai.
select *
from sql_practice.customers
where city = 'Delhi' or city = 'Mumbai'
;
-- 3. Find products costing more than ₹50,000 AND having stock less than 20.
select *
from sql_practice.products
where price > 50000 and stock_quantity < 20
;
-- 4. Find orders that are Delivered AND were placed after 2025-05-15 .
select *
from sql_practice.orders
where order_status= 'Delivered' and order_date > '2025-05-15'
;
-- 5. Find customers who are from Delhi AND registered after 2025-02-01 .
select *
from sql_practice.customers
where city = 'Delhi' and registration_date > '2025-02-01'
;
-- 6. Find products that are cheaper than ₹5,000 OR have stock greater than 50.
select *
from sql_practice.products
where price < 5000 or stock_quantity > 50
;
-- 7. Find orders that are not Cancelled .
select * 
from sql_practice.orders
where order_status != 'Cancelled'
;
-- 8. Find customers who are not from Delhi.
select *
from sql_practice.customers
where city != 'Delhi'
;
-- 9. Find products costing between ₹1,000 and ₹10,000 using AND .
select *
from sql_practice.products
where price >= 1000 and price <= 10000
;
-- 10. Find orders that are Delivered OR Shipped .
select *
from sql_practice.orders
where order_status = 'Delivered' or order_status ='Shipped'
;
