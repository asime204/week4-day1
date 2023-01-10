-- 1. How many actors are there with the last name ‘Wahlberg’?
-- (2)
SELECT COUNT(*)
FROM actor
WHERE last_name = 'Wahlberg';

-- 2. How many payments were made between $3.99 and $5.99?
-- (4802)
SELECT COUNT(*)
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;

-- 3. What film does the store have the most of? (search in inventory)
-- (Zorro Ark)
SELECT MAX(title) AS most_copies
FROM film;

-- 4. How many customers have the last name ‘William’?
-- (0)
SELECT COUNT(*)
FROM customer
WHERE last_name = 'William';

-- 5. What store employee (get the id) sold the most rentals?
-- (1)
SELECT staff_id, COUNT(*)
FROM rental
GROUP BY staff_id
ORDER BY COUNT(*) DESC
LIMIT 1;

-- 6. How many different district names are there?
-- (378)
SELECT COUNT(DISTINCT district)
FROM address;

-- 7. What film has the most actors in it? (use film_actor table and get film_id)
-- (714)
SELECT film_id, COUNT(actor_id)
FROM film_actor
GROUP BY film_id
ORDER BY MAX(actor_id) DESC
LIMIT 1;


-- 8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
-- (21)
SELECT COUNT(store_id)
FROM customer
WHERE last_name LIKE '%es';

-- 9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
-- with ids between 380 and 430? (use group by and having > 250)
-- (3)
SELECT amount, COUNT(*) 
FROM payment
WHERE customer_id BETWEEN 380 AND 430
GROUP BY amount
HAVING COUNT(*) > 250;


-- 10. Within the film table, how many rating categories are there? And what rating has the most
-- movies total?
-- (5)
-- (PG-13)
SELECT rating, COUNT(*)
FROM film
GROUP BY rating
ORDER BY COUNT(*) DESC
LIMIT 1;
