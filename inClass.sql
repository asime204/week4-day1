-- BASIC QUERY
-- Use two hyphens to comment

-- Select all records from actor table
SELECT *
FROM actor;

SELECT first_name, last_name FROM actor; 

SELECT last_name, first_name FROM actor;

SELECT *
FROM actor
WHERE first_name = 'Nick';

SELECT *
FROM actor
WHERE first_name LIKE 'Nick';

-- % acts as a wildcard
SELECT *
FROM actor
WHERE first_name LIKE 'N%';

-- _ acts as a single wildcard
SELECT *
FROM actor
WHERE first_name LIKE 'K___';

-- COMPARING OPERATORS
-- GREATER THAN >
-- LESS THAN <
-- GREATER OR EQUALTO >=
-- LESS OR EQUAL TO <=
-- NOT EQUAL <>

SELECT *
FROM payment;

SELECT customer_id, amount
FROM payment
WHERE amount > 4.99;

SELECT *
FROM payment
WHERE amount <> 4.99;

SELECT customer_id, amount
FROM payment
WHERE amount > 10.00
ORDER BY amount ASC;

SELECT customer_id, amount
FROM payment
WHERE amount > 10.00
ORDER BY amount DESC;

SELECT first_name, last_name, email
FROM customer
WHERE customer_id = 341;


-- gives us total sum
SELECT SUM(amount)
FROM payment
WHERE amount > 10.00;

-- gives total for EACH customer
SELECT SUM(amount), customer_id
FROM payment
WHERE amount > 10.00
GROUP BY customer_id
ORDER BY SUM(amount) DESC;

-- different SQL aggregators
-- SUM(), AVG(), COUNT(), MIN(), MAX()
SELECT SUM(amount)
FROM payment
WHERE customer_id > 300;

SELECT AVG(amount)
FROM payment
WHERE amount > 5.99;

SELECT COUNT(*)
FROM payment
WHERE amount > 5.99;

SELECT COUNT(DISTINCT amount)
FROM payment
WHERE amount > 5.99;

SELECT MIN(amount) AS least_amount_paid
FROM payment;

SELECT MAX(amount) AS most_amount_paid
FROM payment;

SELECT customer_id, SUM(amount)
FROM paymentWHERE customer_id >70 AND customer_id<80
GROUP BY customer_id
HAVING SUM(amount) > 150
ORDER BY customer_id;

SELECT customer_id, SUM(amount)
FROM payment
WHERE customer_id BETWEEN 70 AND 80
GROUP BY customer_id
HAVING SUM(amount) > 150
ORDER BY customer_id
LIMIT 2
OFFSET 2;