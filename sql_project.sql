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
