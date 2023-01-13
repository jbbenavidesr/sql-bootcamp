-- How many payment transactions were greater than $5.00?
SELECT COUNT(*)
FROM payment
WHERE amount > 5;
-- How many actors have a first name that starts with the letter 'P'?
SELECT count(*)
FROM actor
WHERE first_name LIKE 'P%';
-- How many unique districts are our customers from?
SELECT COUNT(DISTINCT district)
FROM address;
-- Retrieve the list of names for those distinct districts.
SELECT DISTINCT district
FROM address;
-- How many films have a rating of R and a replacement cost between $5 and $15?
SELECT COUNT(*)
FROM film
WHERE rating = 'R'
    AND replacement_cost BETWEEN 5 AND 15;
-- How many films have the word 'Truman' somewhere in their title?
SELECT COUNT(*)
FROM film
WHERE title LIKE '%Truman%';