-- 1. List all customers who live in Texas (use JOINs)

SELECT first_name, last_name, city.city_id, city.city, address.district
FROM customer
INNER JOIN address
ON customer.address_id = address.address_id
INNER JOIN city
ON address.city_id = city.city_id
WHERE district = 'Texas';

-- 2. Get all payments above $6.99 with the Customer's Full Name

SELECT amount, customer.customer_id, customer.first_name, customer.last_name
FROM payment
INNER JOIN customer
ON payment.customer_id = customer.customer_id
WHERE amount > 6.99;

-- 3. Show all customers names who have made payments over $175(use subqueries)

SELECT first_name, last_name, customer_id
FROM customer
WHERE customer_id IN (
	SELECT customer_id
	FROM payment
	GROUP BY customer_id
	HAVING SUM(amount) > 175
);

-- 4. List all customers that live in Nepal (use the city table)

SELECT first_name, last_name, address.address_id, country.country
FROM customer
INNER JOIN address
ON customer.address_id = address.address_id
INNER JOIN city
ON address.city_id = city.city_id
INNER JOIN country
ON city.country_id = country.country_id
WHERE country = 'Nepal'

-- 5. Which staff member had the most transactions?

SELECT COUNT(staff.staff_id), first_name, last_name
FROM staff
INNER JOIN payment
ON staff.staff_id = payment.staff_id
GROUP BY staff.staff_id
ORDER BY COUNT(staff.staff_id) DESC
LIMIT 1;

-- 6. How many movies of each rating are there?

SELECT COUNT(rating), rating
FROM film
GROUP BY (rating)

-- 7.Show all customers who have made a single payment above $6.99 (Use Subqueries)

SELECT customer_id, first_name, last_name
FROM customer
WHERE customer_id IN (
	SELECT customer_id
	FROM payment 
	WHERE payment.amount > 6.99
	GROUP BY customer_id
	HAVING COUNT(payment.amount) = 1
);

SELECT customer.customer_id
FROM customer
INNER JOIN payment
ON customer.customer_id = payment.customer_id
WHERE payment.amount > 6.99
GROUP BY customer.customer_id
HAVING COUNT(payment.amount) = 1 AND COUNT(DISTINCT payment.amount) = 1;

-- 8. How many free rentals did our stores give away?

SELECT COUNT(rental.rental_id) as Free_Rentals
FROM rental
INNER JOIN payment
ON rental.rental_id = payment.rental_id
WHERE amount = 0.00;

