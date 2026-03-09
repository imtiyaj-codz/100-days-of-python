SELECT
    staff_id,

    COUNT(*) AS total_rentals,

    ROUND(AVG(EXTRACT(EPOCH FROM (return_date - rental_date)) / 3600), 2) 
        AS avg_rental_hours,

    CEILING(AVG(EXTRACT(EPOCH FROM (return_date - rental_date)) / 3600)) 
        AS rounded_up_hours,

    FLOOR(AVG(EXTRACT(EPOCH FROM (return_date - rental_date)) / 3600)) 
        AS rounded_down_hours,

    ABS(MAX(EXTRACT(EPOCH FROM (return_date - rental_date)) / 3600)) 
        AS longest_rental_hours,

    (ROUND(AVG(EXTRACT(EPOCH FROM (return_date - rental_date)) / 3600),2)) ^ 2 
        AS squared_avg_hours

FROM rental

WHERE return_date IS NOT NULL

GROUP BY staff_id

ORDER BY avg_rental_hours DESC;
