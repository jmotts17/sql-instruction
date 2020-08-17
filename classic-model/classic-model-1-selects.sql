-- Selects all information from Customers Table
SELECT * FROM customers;

-- Selects a customer with the customerNumber of 144
SELECT * FROM customers
WHERE customerNumber = 144;

-- Selects customer name, last/first name, credit limit and orders by customer name
SELECT customerName, contactLastName, contactFirstname, creditLimit FROM customers
ORDER BY customerName;

-- 