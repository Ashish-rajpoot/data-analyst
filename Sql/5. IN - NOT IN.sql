-- 5. IN / NOT IN
-- Practice filtering against multiple values.

-- 1. Find customers from Delhi, Mumbai, or Pune.
select *
from sql_practice.customers
where city in ('Delhi','Mumbai', 'Pune')
;
-- 2. Find customers who are not from Delhi, Mumbai, or Pune.
select *
from sql_practice.customers
where city not in ('Delhi','Mumbai', 'Pune')
;
-- 3. Find products with category IDs 1, 2, or 3.
select *
from sql_practice.products
where category_id in (1,2,3)
;
-- 4. Find products whose category ID is not 4 or 5.
select *
from sql_practice.products
where category_id not in (4,5)
;
-- 5. Find orders with status Delivered or Shipped .
select *
from sql_practice.orders
where order_status in ('Delivered','Shipped')
;
-- 6. Find orders whose status is not Cancelled or Processing .
select *
from sql_practice.orders
where order_status not in ('Cancelled','Processing')
;
-- 7. Find customers with IDs 1, 3, 5, 7, and 9.
select *
from sql_practice.customers
where customer_id in (1,3,5,7,9)
;
-- 8. Find products with IDs 1, 5, 10, and 15.
select *
from sql_practice.products
where product_id in (1,5,10,15)
;
-- 9. Find orders belonging to customers 1, 2, and 3.
select *
from sql_practice.orders
where customer_id in (1,2,3)
;
-- 10. Find products belonging to categories 2, 3, and 5.
select * 
from sql_practice.products
where category_id in (2,3,5)
;