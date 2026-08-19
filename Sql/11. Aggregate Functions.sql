-- 11. Aggregate Functions
-- Practice:
-- COUNT()
-- SUM()
-- AVG()
-- MIN()
-- MAX()

-- 1. Count the total number of customers.
select count(*)
from sql_practice.customers;

-- 2. Count the total number of products.
select count(*)
from sql_practice.products;

-- 3. Count the total number of orders.
select count(*)
from sql_practice.orders;

-- 4. Find the highest product price.
select max(price)
from sql_practice.products;

-- 5. Find the lowest product price.
select min(price)
from sql_practice.products;

-- 6. Find the average product price.
select avg(price)
from sql_practice.products;

-- 7. Find the total stock across all products.
select sum(stock_quantity)
from sql_practice.products;

-- 8. Find the total number of order items.
select count(*)
from sql_practice.order_items;

-- 9. Find the highest quantity ordered in a single order item.
select max(quantity)
from sql_practice.order_items;

-- 10. Find the average quantity ordered.
select avg(quantity)
from sql_practice.order_items;

