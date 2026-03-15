SELECT
    customer_id,

    SUM(amount) AS total_spent,

    CASE
        WHEN SUM(amount) < 50 THEN 'Low Value Customer'
        WHEN SUM(amount) BETWEEN 50 AND 150 THEN 'Medium Value Customer'
        WHEN SUM(amount) BETWEEN 150 AND 300 THEN 'High Value Customer'
        ELSE 'VIP Customer'
    END AS customer_category

FROM payment

GROUP BY customer_id

ORDER BY total_spent DESC;
