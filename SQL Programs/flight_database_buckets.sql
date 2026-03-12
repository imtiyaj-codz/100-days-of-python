SELECT
    CASE
        WHEN price < 200 THEN 'Cheap Flight'
        WHEN price BETWEEN 200 AND 500 THEN 'Standard Flight'
        WHEN price BETWEEN 500 AND 1000 THEN 'Premium Flight'
        ELSE 'Luxury Flight'
    END AS price_bucket,

    COUNT(*) AS total_flights,

    ROUND(AVG(price),2) AS avg_price

FROM flights

GROUP BY price_bucket

ORDER BY avg_price DESC;
