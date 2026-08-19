# SELECT — Basic Data Retrieval
# Q1: Display all customers.
SELECT *
FROM sql_practice.customers;

# Q2: Display only first_name and last_name from customers.
select first_name, last_name
from sql_practice.customers;

#3. Display all products.
select *
from sql_practice.products;

#4. Display product_name and price from products.
select products.product_name, products.price
from sql_practice.products;

#5. Display all orders.
select *
from sql_practice.orders;

#6. Display order_id , customer_id , and order_date .
select orders.order_id, orders.customer_id, orders.order_date
from sql_practice.orders;

#7. Display all categories.
select *
from sql_practice.categories;

#8. Display first_name , email , and city of all customers.
select first_name, email, city
from sql_practice.customers;

#9. Display product_name , price , and stock_quantity .
select product_name, price, stock_quantity
from sql_practice.products;

#10. Display order_id , order_date , and order_status .
select order_id, order_date, order_status
from sql_practice.orders;