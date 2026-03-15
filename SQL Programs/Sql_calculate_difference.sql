SELECT
    staff_id,
    TO_CHAR(rental_date, 'Month') AS rental_month,
    COUNT(*) AS total_rentals,
    ROUND(
        AVG(EXTRACT(EPOCH FROM (return_date - rental_date)) / 3600),
        2
    ) AS avg_rental_hours
FROM rental
WHERE return_date IS NOT NULL
GROUP BY staff_id, TO_CHAR(rental_date, 'Month')
HAVING COUNT(*) > 5
ORDER BY avg_rental_hours DESC
LIMIT 10;
