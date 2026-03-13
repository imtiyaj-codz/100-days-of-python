SELECT
    CASE
        WHEN EXTRACT(HOUR FROM departure_time) < 6 THEN 'Early Morning'
        WHEN EXTRACT(HOUR FROM departure_time) < 12 THEN 'Morning'
        WHEN EXTRACT(HOUR FROM departure_time) < 18 THEN 'Afternoon'
        ELSE 'Evening/Night'
    END AS departure_period,

    COUNT(*) AS total_flights,

    ROUND(AVG(price), 2) AS average_ticket_price

FROM flights

GROUP BY departure_period

ORDER BY total_flights DESC;
