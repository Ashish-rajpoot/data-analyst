-- ============================================================
-- BEGINNER SQL PRACTICE DATABASE
-- E-COMMERCE / ONLINE STORE
-- ============================================================


-- ============================================================
-- 1. CREATE DATABASE
-- ============================================================

CREATE DATABASE sql_practice;

USE sql_practice;


-- ============================================================
-- 2. DROP TABLES IF THEY ALREADY EXIST
-- ============================================================

DROP TABLE IF EXISTS order_items;
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS categories;
DROP TABLE IF EXISTS addresses;
DROP TABLE IF EXISTS customers;


-- ============================================================
-- 3. CUSTOMERS
-- ============================================================

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone VARCHAR(20),
    city VARCHAR(50),
    registration_date DATE
);


-- ============================================================
-- 4. ADDRESSES
-- ============================================================

CREATE TABLE addresses (
    address_id INT PRIMARY KEY,
    customer_id INT,
    address_line VARCHAR(150),
    city VARCHAR(50),
    state VARCHAR(50),
    pincode VARCHAR(10),

    FOREIGN KEY (customer_id)
        REFERENCES customers(customer_id)
);


-- ============================================================
-- 5. CATEGORIES
-- ============================================================

CREATE TABLE categories (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(50)
);


-- ============================================================
-- 6. PRODUCTS
-- ============================================================

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category_id INT,
    price DECIMAL(10,2),
    stock_quantity INT,

    FOREIGN KEY (category_id)
        REFERENCES categories(category_id)
);


-- ============================================================
-- 7. ORDERS
-- ============================================================

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    order_status VARCHAR(30),

    FOREIGN KEY (customer_id)
        REFERENCES customers(customer_id)
);


-- ============================================================
-- 8. ORDER ITEMS
-- ============================================================

CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    unit_price DECIMAL(10,2),

    FOREIGN KEY (order_id)
        REFERENCES orders(order_id),

    FOREIGN KEY (product_id)
        REFERENCES products(product_id)
);


-- ============================================================
-- INSERT CUSTOMERS
-- ============================================================

INSERT INTO customers
(customer_id, first_name, last_name, email, phone, city, registration_date)
VALUES
(1, 'Rahul', 'Sharma', 'rahul@gmail.com', '9876543210', 'Delhi', '2025-01-10'),
(2, 'Priya', 'Verma', 'priya@gmail.com', '9876543211', 'Mumbai', '2025-01-15'),
(3, 'Amit', 'Kumar', 'amit@gmail.com', '9876543212', 'Lucknow', '2025-02-01'),
(4, 'Neha', 'Singh', 'neha@gmail.com', '9876543213', 'Delhi', '2025-02-10'),
(5, 'Rohit', 'Gupta', 'rohit@gmail.com', '9876543214', 'Jaipur', '2025-02-20'),
(6, 'Anjali', 'Mehta', 'anjali@gmail.com', '9876543215', 'Pune', '2025-03-01'),
(7, 'Vikas', 'Yadav', 'vikas@gmail.com', '9876543216', 'Kanpur', '2025-03-05'),
(8, 'Sneha', 'Patel', 'sneha@gmail.com', '9876543217', 'Ahmedabad', '2025-03-15'),
(9, 'Karan', 'Joshi', 'karan@gmail.com', '9876543218', 'Indore', '2025-04-01'),
(10, 'Pooja', 'Malhotra', 'pooja@gmail.com', '9876543219', 'Chandigarh', '2025-04-10');


-- ============================================================
-- INSERT ADDRESSES
-- ============================================================

INSERT INTO addresses
(address_id, customer_id, address_line, city, state, pincode)
VALUES
(1, 1, '12 MG Road', 'Delhi', 'Delhi', '110001'),
(2, 2, '45 Andheri Road', 'Mumbai', 'Maharashtra', '400001'),
(3, 3, '21 Gomti Nagar', 'Lucknow', 'Uttar Pradesh', '226010'),
(4, 4, '78 Lajpat Nagar', 'Delhi', 'Delhi', '110024'),
(5, 5, '15 MI Road', 'Jaipur', 'Rajasthan', '302001'),
(6, 6, '32 FC Road', 'Pune', 'Maharashtra', '411004'),
(7, 7, '10 Mall Road', 'Kanpur', 'Uttar Pradesh', '208001'),
(8, 8, '56 CG Road', 'Ahmedabad', 'Gujarat', '380009'),
(9, 9, '22 Vijay Nagar', 'Indore', 'Madhya Pradesh', '452010'),
(10, 10, '11 Sector 17', 'Chandigarh', 'Chandigarh', '160017');


-- ============================================================
-- INSERT CATEGORIES
-- ============================================================

INSERT INTO categories
(category_id, category_name)
VALUES
(1, 'Electronics'),
(2, 'Mobiles'),
(3, 'Laptops'),
(4, 'Accessories'),
(5, 'Books');


-- ============================================================
-- INSERT PRODUCTS
-- ============================================================

INSERT INTO products
(product_id, product_name, category_id, price, stock_quantity)
VALUES
(1, 'Wireless Mouse', 4, 799.00, 50),
(2, 'Mechanical Keyboard', 4, 2499.00, 30),
(3, 'USB-C Cable', 4, 499.00, 100),
(4, 'iPhone 15', 2, 69999.00, 15),
(5, 'Samsung Galaxy S24', 2, 74999.00, 20),
(6, 'OnePlus 12', 2, 59999.00, 25),
(7, 'MacBook Air M3', 3, 114999.00, 10),
(8, 'Dell Inspiron 15', 3, 65999.00, 18),
(9, 'HP Pavilion', 3, 72999.00, 12),
(10, 'Sony Headphones', 1, 5999.00, 40),
(11, 'JBL Bluetooth Speaker', 1, 3499.00, 35),
(12, 'Power Bank', 4, 1499.00, 60),
(13, 'Clean Code', 5, 899.00, 25),
(14, 'Atomic Habits', 5, 599.00, 40),
(15, 'Python Programming', 5, 799.00, 30);


-- ============================================================
-- INSERT ORDERS
-- ============================================================

INSERT INTO orders
(order_id, customer_id, order_date, order_status)
VALUES
(101, 1, '2025-05-01', 'Delivered'),
(102, 2, '2025-05-03', 'Delivered'),
(103, 3, '2025-05-05', 'Shipped'),
(104, 1, '2025-05-08', 'Delivered'),
(105, 4, '2025-05-10', 'Cancelled'),
(106, 5, '2025-05-12', 'Delivered'),
(107, 6, '2025-05-15', 'Shipped'),
(108, 7, '2025-05-18', 'Delivered'),
(109, 8, '2025-05-20', 'Processing'),
(110, 9, '2025-05-22', 'Delivered'),
(111, 10, '2025-05-25', 'Shipped'),
(112, 3, '2025-05-28', 'Delivered'),
(113, 2, '2025-06-01', 'Delivered'),
(114, 5, '2025-06-03', 'Processing'),
(115, 1, '2025-06-05', 'Delivered');


-- ============================================================
-- INSERT ORDER ITEMS
-- ============================================================

INSERT INTO order_items
(order_item_id, order_id, product_id, quantity, unit_price)
VALUES

-- Order 101
(1, 101, 1, 2, 799.00),
(2, 101, 3, 1, 499.00),

-- Order 102
(3, 102, 4, 1, 69999.00),
(4, 102, 3, 2, 499.00),

-- Order 103
(5, 103, 5, 1, 74999.00),
(6, 103, 12, 1, 1499.00),

-- Order 104
(7, 104, 2, 1, 2499.00),
(8, 104, 10, 1, 5999.00),

-- Order 105
(9, 105, 6, 1, 59999.00),

-- Order 106
(10, 106, 7, 1, 114999.00),

-- Order 107
(11, 107, 8, 1, 65999.00),
(12, 107, 1, 1, 799.00),

-- Order 108
(13, 108, 11, 2, 3499.00),
(14, 108, 12, 1, 1499.00),

-- Order 109
(15, 109, 13, 1, 899.00),
(16, 109, 14, 1, 599.00),

-- Order 110
(17, 110, 9, 1, 72999.00),

-- Order 111
(18, 111, 15, 2, 799.00),
(19, 111, 1, 1, 799.00),

-- Order 112
(20, 112, 6, 1, 59999.00),
(21, 112, 10, 1, 5999.00),

-- Order 113
(22, 113, 4, 1, 69999.00),

-- Order 114
(23, 114, 5, 1, 74999.00),
(24, 114, 3, 2, 499.00),

-- Order 115
(25, 115, 2, 1, 2499.00),
(26, 115, 14, 2, 599.00);


-- ============================================================
-- VERIFY DATA
-- ============================================================

SELECT * FROM customers;

SELECT * FROM addresses;

SELECT * FROM categories;

SELECT * FROM products;

SELECT * FROM orders;

SELECT * FROM order_items;