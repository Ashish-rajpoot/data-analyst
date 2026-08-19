-- 18. CASE
-- Practice conditional logic.
-- 1. Categorize products as:
-- Expensive if price > ₹50,000
-- Affordable otherwise.
select 
	p.product_name,
case
	when p.price is null then 'Unknown'
	when p.price > 50000.00 then 'Expensive'
    else 'Affordable'
end as ProductCategory
from 
	sql_practice.products as p
order by
	p.product_name;

-- 2. Categorize stock:
-- Low if stock < 20
-- Medium if stock 20–50
-- High if stock > 50.
select
	p.product_name,
    case
		when	p.stock_quantity < 20 then 'Low'
        when	p.stock_quantity between 20 and 50 then 'Medium'
        else	'High'
	end as Category_stock
from
	sql_practice.products as p
order by
	p.product_name;
    
-- 3. Categorize orders:
-- Completed for Delivered
-- In Progress for Shipped/Processing
-- Failed for Cancelled.

select 
	o.order_id,
	case
		when o.order_status = 'Delivered' then 'Completed'
        when o.order_status in ('Shipped' ,'Processing') then 'In Progress'
        when o.order_status = 'Cancelled' then 'Failed'
        else 'Unknown'
	end as Order_Status
from 
	sql_practice.orders as o;
    
-- 4. Display customer city and classify Delhi customers as Delhi Customer , others as Other .
select 
	a.city,
    case
		when a.city = 'Delhi' then 'Delhi Customers'
        else 'Other'
--         when a.city = 'Other' then 'others Customers'
--         else concat(a.city,' Customers')
	end as Customer_city
from 
	sql_practice.addresses as a;
    
-- 5. Categorize products based on price:
-- Under ₹1,000 → Budget
-- ₹1,000–₹10,000 → Mid-range
-- Above ₹10,000 → Premium
select 
	p.product_name,
case
	when p.price < 1000 then 'Budget'
    when p.price between 1000 and 10000 then 'Mid-range'
    else 'Premium'
end as `Categorize Product based on price`
from
	sql_practice.products as p
order by
	p.product_name;
    
-- 6. Categorize products based on stock.
select
	p.product_name,
case
	when p.stock_quantity > 0 then 'Available'
    else 'Un-Available'
end as Stock_status
from 
	sql_practice.products as p;
    
-- 7. Categorize orders based on status.
select 
	o.order_id,
	case
		when o.order_status = 'Delivered' then 'Completed'
        when o.order_status in ('Shipped' ,'Processing') then 'In Progress'
        when o.order_status = 'Cancelled' then 'Failed'
        else 'Unknown'
	end as Order_Status
from 
	sql_practice.orders as o;
    
-- 8. Display whether each product is In Stock or Out of Stock .
SELECT 
    p.product_name,
    p.stock_quantity,
    CASE
        WHEN p.stock_quantity > 0 THEN 'In Stock'
        ELSE 'Out of Stock'
    END AS Stock_Status
FROM 
    sql_practice.products AS p
ORDER BY 
    p.product_name;
-- 9. Display whether an order is Active or Completed .
SELECT 
    o.order_id,
    o.order_status,
    CASE
        WHEN o.order_status = 'Delivered' THEN 'Completed'
        WHEN o.order_status IN ('Shipped', 'Processing', 'Pending') THEN 'Active'
        WHEN o.order_status = 'Cancelled' THEN 'Cancelled'
        ELSE 'Unknown'
    END AS Order_Status_Category
FROM 
    sql_practice.orders AS o;
-- 10. Create a price category for every product.
SELECT 
    p.product_name,
    p.price,
    CASE
        WHEN p.price IS NULL THEN 'Price Unavailable'
        WHEN p.price = 0 THEN 'Free'
        WHEN p.price < 1000 THEN 'Budget'
        WHEN p.price BETWEEN 1000 AND 10000 THEN 'Mid-Range'
        WHEN p.price > 10000 THEN 'Premium'
    END AS Price_Category
FROM 
    sql_practice.products AS p;