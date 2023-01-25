-- We have two staff members, with Staff IDs 1 and 2.  We want to give a bonus to
-- the staff member that handled the most payments. (Most in terns of number of
-- payments, not total amount of payments.)
-- How many payments did each staff member handle and who gets the bonus?
SELECT staff_id,
    COUNT(*) AS payment_count
FROM payment
GROUP BY staff_id
ORDER BY payment_count DESC;
-- Corporate HQ is conducting a study on the relationship between replacement cost
-- and a movie MPAA rating (e.g. G, PG, PG-13, R, NC-17). 
-- What is the average replacement cost per MPAA rating?
SELECT rating,
    ROUND(AVG(replacement_cost), 2) AS avg_replacement_cost
FROM film
GROUP BY rating;
-- We are running a promotion to reward our top 5 customers with coupons.
-- What are the customer ids of the top 5 customers by total amount spent?
SELECT customer_id,
    SUM(amount) AS total_amount
FROM payment
GROUP BY customer_id
ORDER BY total_amount DESC
LIMIT 5;