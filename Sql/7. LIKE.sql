-- 7. LIKE — Pattern Matching
-- Practice:
-- LIKE '%...%'
-- LIKE '...%'
-- LIKE '%...'

-- 1. Find customers whose first name starts with A .
select * 
from sql_practice.customers
where first_name like 'A%';

-- 2. Find customers whose first name starts with P .
select * 
from sql_practice.customers
where first_name like 'P%';

-- 3. Find customers whose first name ends with a .
select * 
from sql_practice.customers
where first_name like '%a';

-- 4. Find customers whose name contains a .
select * 
from sql_practice.customers
where first_name like '%a%';

-- 5. Find products containing the word Phone .
select * 
from sql_practice.products
where product_name like '%Phone%';

-- 6. Find products containing Book .
select * 
from sql_practice.products
where product_name like '%Book%';

-- 7. Find products whose name starts with S .
select * 
from sql_practice.products
where product_name  like 'S%';

-- 8. Find customers whose last name starts with M .
select * 
from sql_practice.customers
where last_name like 'M%';

-- 9. Find customers whose email contains gmail .
select * 
from sql_practice.customers
where email like '%gmail%';

-- 10. Find products whose name contains Wireless .
select * 
from sql_practice.products
where product_name like '%Wireless%';