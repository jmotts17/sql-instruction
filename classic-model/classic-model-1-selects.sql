-- Selects all information from Customers Table
SELECT * FROM customers;

-- Select by Primary Key
SELECT * FROM customers
WHERE customerNumber = 144;

-- Count Function
SELECT Count(*) FROM customers;

-- Count with an Alias
SELECT Count(*) as row_count 
FROM customers;

-- Count with an Alias, shorthand (no as)
SELECT Count(*) row_count 
FROM customers;

-- Sum Function
SELECT SUM(creditLimit) FROM customers;

-- Average & Format Function
SELECT FORMAT(AVG(creditLimit), 2) FROM customers;

-- Average & Format, and Concat Function with Alias
SELECT CONCAT('$', FORMAT(AVG(creditLimit), 2)) as avg_credit_limit FROM customers;

-- Group By: avg, format & concat function by country
-- GROUP BY IS ON SQL ASSESSMENT
SELECT country, CONCAT('$', FORMAT(AVG(creditLimit), 2)) as avg_credit_limit FROM customers
GROUP BY country
ORDER BY avg(creditLimit) DESC;

-- Group By, having: avg, format & concat function by country where avg is > 0
SELECT country, CONCAT('$', FORMAT(AVG(creditLimit), 2)) as avg_credit_limit FROM customers
GROUP BY country
HAVING avg(creditLimit) > 0
ORDER BY avg(creditLimit) DESC;

-- Max Credit Limit
SELECT  max(creditLimit) FROM customers;

-- Min Credit Limit
SELECT min(creditLimit) FROM customers;