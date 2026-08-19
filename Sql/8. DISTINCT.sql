-- 8. DISTINCT
-- Practice removing duplicate values.

-- 1. Display all unique customer cities.
select distinct city
from sql_practice.customers;
-- 2. Display all unique order statuses.
select distinct order_status
from sql_practice.orders;

-- 3. Display all unique category IDs from products.
select distinct category_id
from sql_practice.products;

-- 4. Display all unique customer IDs from orders.
select distinct customer_id
from sql_practice.orders;

-- 5. Display unique product prices.
select distinct price
from sql_practice.products;

-- 6. Display unique registration dates.
select distinct registration_date
from sql_practice.customers;

-- 7. Display unique cities from addresses.
select distinct city
from sql_practice.addresses;

-- 8. Display unique states from addresses.
select distinct state
from sql_practice.addresses;

-- 9. Display unique quantities ordered.
select distinct quantity
from sql_practice.order_items;

-- 10. Display unique unit prices from order items.
select distinct unit_price
from sql_practice.order_items;
