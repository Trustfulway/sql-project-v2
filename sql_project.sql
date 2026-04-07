
-- Create customers table
CREATE TABLE customers (
    id INT,
    name VARCHAR(50),
    age INT,
    city VARCHAR(50)
);

-- Insert sample data
INSERT INTO customers (id, name, age, city) VALUES
(1, 'John', 28, 'New York'),
(2, 'Mary', 32, 'Chicago'),
(3, 'David', 25, 'Los Angeles'),
(4, 'Sarah', 35, 'New York'),
(5, 'James', 40, 'Chicago');

-- Basic select
SELECT * FROM customers;

-- Filter customers older than 30
SELECT name, age
FROM customers
WHERE age > 30;

-- Count customers per city
SELECT city, COUNT(*) AS total_customers
FROM customers
GROUP BY city;

-- Average age per city
SELECT city, AVG(age) AS avg_age
FROM customers
GROUP BY city;

-- Order by age descending
SELECT * FROM customers
ORDER BY age DESC;



-- Create orders table
CREATE TABLE orders (
    order_id INT,
    customer_id INT,
    amount DECIMAL(10,2)
);

-- Insert sample orders
INSERT INTO orders (order_id, customer_id, amount) VALUES
(101, 1, 250.00),
(102, 2, 300.00),
(103, 1, 150.00),
(104, 3, 400.00);

-- JOIN customers with orders
SELECT customers.name, orders.amount
FROM customers
JOIN orders
ON customers.id = orders.customer_id;

-- Total spending per customer
SELECT customers.name, SUM(orders.amount) AS total_spent
FROM customers
JOIN orders
ON customers.id = orders.customer_id
GROUP BY customers.name;

