-- 9. ORDER BY
-- Practice sorting.
-- 1. Display products from cheapest to most expensive.
select *
from sql_practice.products
order by price;

-- 2. Display products from most expensive to cheapest.
select *
from sql_practice.products
order by price desc;

-- 3. Display customers alphabetically by first name.
select *
from sql_practice.customers
order by first_name ;

-- 4. Display customers in reverse alphabetical order.
select *
from sql_practice.customers
order by first_name desc;

-- 5. Display products by highest stock first.
select *
from sql_practice.products
order by stock_quantity desc;

-- 6. Display products by lowest stock first.
select *
from sql_practice.products
order by stock_quantity;

-- 7. Display orders from oldest to newest.
select *
from sql_practice.orders
order by order_date;

-- 8. Display orders from newest to oldest.
select *
from sql_practice.orders
order by order_date desc;

-- 9. Display customers by registration date.
select *
from sql_practice.customers
order by registration_date;

-- 10. Display products sorted by price and then stock quantity.
select *
from sql_practice.products
order by price, stock_quantity;
