-- A customer forgot their wallet at our store! We need to track down their
-- email to inform them.
-- What is the email for the customer with name Nancy Thomas?
SELECT email
FROM customer
WHERE first_name = 'Nancy'
    AND last_name = 'Thomas';
-- A customer wants to know what the movie "Outlaw Hanky" is about.
-- Could you give them the description of the movie "Outlaw Hanky"?
SELECT description
FROM film
WHERE title = 'Outlaw Hanky';
-- A customer is late on their movie return, and we've mailed them a letter to
-- their address at '259 Ipoh Drive'. We should also call them on the phone
-- to let them know.
-- Can you get the phone number for the customer with address '259 Ipoh Drive'?
SELECT phone
FROM address
WHERE address = '259 Ipoh Drive';