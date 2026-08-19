-- 19. Subqueries
-- These are very important before moving to intermediate SQL.

-- 1. Find products that cost more than the average product price.
select 
	p.product_name,
    p.price
from
	sql_practice.products as p
where
	p.price > (
		select avg(p.price)
        from sql_practice.products as p
    );
    
-- 2. Find products that cost less than the average product price.
select 
	*
from
	sql_practice.products as p
where
	p.price < (
		select avg(price) 
        from sql_practice.products
        );
        
-- 3. Find the most expensive product.
select 
	product_name,
	price
from 
	sql_practice.products
order by 
	price desc
limit 1;

-- 4. Find the cheapest product.
select 
	product_name,
	price
from 
	sql_practice.products
order by 
	price 
limit 1;

-- 5. Find customers who have placed at least one order.
SELECT DISTINCT
    c.customer_id,
    c.first_name,
    c.email
    -- o.order_id
FROM 
    sql_practice.customers AS c
INNER JOIN 
    sql_practice.orders AS o
ON 
    c.customer_id = o.customer_id;
    
-- 6. Find customers who have never placed an order.
SELECT DISTINCT
    c.customer_id,
    c.first_name,
    c.email
FROM 
    sql_practice.customers AS c
left JOIN 
    sql_practice.orders AS o
ON 
    c.customer_id = o.customer_id
where 
	o.customer_id is null;

-- 7. Find products that have never been ordered.
select 
	p.product_name
from sql_practice.order_items as oi
right join sql_practice.products as p
on 	oi.product_id = p.product_id
where oi.product_id is null;

-- 8. Find products whose price is greater than the price of Wireless Mouse .
select 
	*
from 
	sql_practice.products as p
where 
	p.price > (
		select 
			price 
		from 
			sql_practice.products 
		where 
			product_name = 'Wireless Mouse'
	);
    
-- 9. Find products belonging to the same category as iPhone 15 .
select
	*
from
	sql_practice.products as p
where 
	p.category_id = (
		select 
			category_id
		from 
			sql_practice.products
		where
			product_name = 'iPhone 15'
	);
      
-- 10. Find customers who placed an order after the first order date.

select
	c.first_name,
    o.order_date
from 
	sql_practice.customers as c
join
	sql_practice.orders as o
on 
	o.customer_id = c.customer_id
where
	o.order_date > (
		select 
			min(order_date)
		from
			sql_practice.orders
	);