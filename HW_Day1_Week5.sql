-- Week 5 - Day 1 - Homework Exercises-------------------------------------------------------------------JEREMY SHIOTANI

-- 1. How many actors are there with the last name ‘Wahlberg’?----------------------------------------------------------
SELECT COUNT(last_name)
FROM actor
WHERE last_name = 'Wahlberg'
-- Answer: There are 2 actors with the last name ‘Wahlberg’!------------------------------------------------------------


-- 2. How many payments were made between $3.99 and $5.99?--------------------------------------------------------------
SELECT COUNT(amount) AS total_payments
FROM payment 
WHERE amount BETWEEN 3.99 AND 5.99;
-- Answer: There were 5607 payments made between $3.99 and $5.99!-------------------------------------------------------


-- 3. What films have exactly 7 copies? (search in inventory)-----------------------------------------------------------
SELECT film_id, COUNT(*) AS total_copies
FROM inventory
GROUP BY film_id 
HAVING COUNT(*) = 7
ORDER BY film_id;
-- Answer: There are 116 films that have exactly 7 copies!--------------------------------------------------------------


-- 4. How many customers first name is ‘Willie’?------------------------------------------------------------------------
SELECT COUNT(first_name)
FROM customer
WHERE first_name = 'Willie';
-- Answer: There are 2 customers with the first name ‘Willie’!----------------------------------------------------------


-- 5. What store employee (get the id) sold the most rentals (use the rental table)?------------------------------------
SELECT COUNT(staff_id)
FROM rental
WHERE staff_id = 1; 
--count 8040
SELECT COUNT(staff_id)
FROM rental
WHERE staff_id = 2;
--count 8004
-- Answer: Honestly, it was quite the close match-up. Mike sold the most rentals with 8040, while Jon is in a close second with 8004 rentals sold.------------------------------------------------------------------------------------------


-- 6. How many unique district names are there? (search in address)-----------------------------------------------------
SELECT DISTINCT district
FROM address
GROUP BY district
ORDER BY district;
-- Answer: There are 378 district values upon search from which 377 are distinct district names (one value is completely blank)!-----------------------------------------------------------------------------------------------------------------


-- 7. What film has the most actors in it? (use film_actor table and get film_id)---------------------------------------
SELECT film_id, COUNT(actor_id) AS total_actors
FROM film_actor
GROUP BY film_id
ORDER BY total_actors DESC;
-- Answer: The critically acclaimed title of Lambs Cincinatti, with a film_id of 508, has the most actors in it!---------------------------------------------------------------------------------------------------------------------


-- 8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)-----------------------
SELECT last_name, store_id
FROM customer
WHERE last_name LIKE '%es' AND store_id = '1'
ORDER BY last_name;
-- Answer: There are 13 total customers with the last name ending in 'es' from store_id 1!------------------------------


-- 9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers with ids between 380 and 430? (use group by and having > 250)--------------------------------------------------------------------------------
SELECT COUNT(amount)
FROM payment
WHERE customer_id BETWEEN 380 AND 430
GROUP BY amount
HAVING count(amount) > 250;
-- Answer: There are 3 distinct payment amounts which have a number of rentals above 250 for customers with ids between 380 and 430!-----------------------------------------------------------------------------------------------------------


-- 10. Within the film table, how many rating categories are there? Additionally, what rating has the most movies total?------------------------------------------------------------------------------------------------------------------
SELECT COUNT(title), rating
FROM film
GROUP BY rating
ORDER BY COUNT(title) DESC;
-- Answer: There are 5 distinct rating categories within the film table. The rating PG-13 has the most movies total with 223!--------------------------------------------------------------------------------------------------------------------