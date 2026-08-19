-- 20. Real Business Questions
-- These combine several concepts and are excellent final beginner exercises.

-- 1. Who are the top 5 customers by total spending?
SELECT 
    c.customer_id,
    c.first_name,
    SUM(oi.quantity * oi.unit_price) AS total_spending
FROM 
    sql_practice.customers AS c
JOIN 
    sql_practice.orders AS o ON c.customer_id = o.customer_id
JOIN 
    sql_practice.order_items AS oi ON o.order_id = oi.order_id
GROUP BY 
    c.customer_id, c.first_name
ORDER BY 
    total_spending DESC
LIMIT 5;

-- 2. Which product has generated the highest revenue?
select 
	p.product_name,
    sum(oi.quantity * oi.unit_price) as total_revenue_per_product
from
	sql_practice.order_items as oi
join
	sql_practice.products as p
on
	oi.product_id = p.product_id
group by 
	oi.product_id
order by
	total_revenue_per_product desc
limit 1;

-- 3. Which category has generated the highest revenue?
select 
	c.category_name,
    sum(oi.quantity * oi.unit_price) as total_revenue
from
	sql_practice.order_items as oi
join
	sql_practice.products as p
on 
	p.product_id = oi.product_id
join
	sql_practice.categories as c
on 
	c.category_id = p.category_id
group by 
	c.category_name
order by 
	total_revenue desc
limit 1
;

-- 4. Which customers have placed more than one order?
select
	o.customer_id,
    c.first_name,
    count(o.customer_id)
from 
	sql_practice.orders as o
join 
	sql_practice.customers as c
on
	o.customer_id = c.customer_id
group by
	o.customer_id, c.first_name
having
	count(*) > 1
;

-- 5. Which products have never been ordered?
select 
	p.product_name
from
	sql_practice.order_items as oi
right join
	sql_practice.products as p
on
	p.product_id = oi.product_id
where
	oi.order_id is null
;

-- 6. What is the average order value?
select 
	avg(average_total) as average_order_value
from (
	select oi.order_id, sum(oi.quantity * oi.unit_price) as average_total
    from sql_practice.order_items as oi
    group by oi.order_id
) as average_totals;

-- 7. Which customer has spent the most money?
select 
	c.customer_id, c.first_name, sum(sum_per_orders.sum_per_order) as most_spend
from( 
    select 
		oi.order_id, 
        sum(oi.unit_price  * oi.quantity) as sum_per_order
	from
		sql_practice.order_items as oi
	group by
		oi.order_id
) as sum_per_orders
join
	sql_practice.orders as o
on
	o.order_id = sum_per_orders.order_id
join 
	sql_practice.customers as c
on	
	c.customer_id = o.customer_id
group by
	c.customer_id, c.first_name
order by
	most_spend desc
limit 1
;

-- 8. Which city has the highest number of customers?
SELECT
    city,
    COUNT(*) AS customer_count
FROM sql_practice.customers
GROUP BY city
ORDER BY customer_count DESC
LIMIT 1;

-- 9. Which category contains the most products?
select
	p.category_id,
    c.category_name,
    count(p.category_id) as count
from
	sql_practice.products as p
join
	sql_practice.categories as c
on
	p.category_id = c.category_id
group by
	p.category_id,
    c.category_name
order by
	count(p.category_id) desc
limit 1;

-- 10. Which product has the highest quantity sold?
select
	p.product_name
from(
	select
		oi.product_id,
		sum(quantity) as total_quantity
    from
		sql_practice.order_items as oi
	group by
		oi.product_id
	order by
		total_quantity desc
	limit 1
) as o
join
	sql_practice.products as p
on 
	p.product_id = o.product_id;