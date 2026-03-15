SELECT
    staff_id,
    
    COUNT(*) AS total_rentals,

    ROUND(AVG(return_date - rental_date),2) AS avg_rental_days,

    CEILING(AVG(return_date - rental_date)) AS rounded_up_days,

    FLOOR(AVG(return_date - rental_date)) AS rounded_down_days,

    ABS(MAX(return_date - rental_date)) AS longest_rental_days,

    (AVG(return_date - rental_date)) ^ 2 AS duration_power_example

FROM rental

WHERE return_date IS NOT NULL

GROUP BY staff_id

ORDER BY avg_rental_days DESC;
