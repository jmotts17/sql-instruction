SELECT * FROM customer;

-- See Name & Sales from Customer
SELECT name, sales FROM customer; 

-- See Name & Sales from Customer
SELECT name, sales FROM customer
ORDER BY name;

-- Customers with the most sales
SELECT name, sales FROM customer
ORDER BY sales desc;

-- Customers with sales greater than 40,000,000
SELECT Name, Sales from Customer
WHERE sales > 40000000;

-- Sales >= 30,000,000 and less than 40,000,000
SELECT Name, Sales from Customer
WHERE sales >= 30000000 AND sales <= 40000000;

-- Join customer and state tables ouputting customer and city/state name
SELECT customer.name, customer.city, state.name
	FROM customer
	JOIN state
		ON customer.state = state.code;
