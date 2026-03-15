SELECT
    customer_id,
    COUNT(*) AS total_rentals,
    AVG(return_date - rental_date) AS avg_rental_duration_days,
    MAX(rental_date) AS last_rental_date,
    CURRENT_DATE - MAX(rental_date) AS days_since_last_rental
FROM rental
WHERE EXTRACT(YEAR FROM rental_date) = EXTRACT(YEAR FROM CURRENT_DATE)
  AND return_date IS NOT NULL
GROUP BY customer_id
HAVING COUNT(*) > 5
ORDER BY total_rentals DESC
LIMIT 10;
