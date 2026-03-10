SELECT 
film_id,
round((rental_rate/replacement_cost) * 100,2) as percentage
FROM film
WHERE (rental_rate/replacement_cost) * 100 < 4;

SELECT 
amount,
CASE
WHEN amount < 2 THEN 'low amount'
WHEN amount > 5 THEN 'medium amount'
ELSE 'high amount'
END
FROM payment; 















