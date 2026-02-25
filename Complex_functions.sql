SELECT
    customer_id,
    DATE(payment_date) AS payment_day,
    ROUND(AVG(amount), 2) AS avg_payment_amount,
    COUNT(*) AS payment_count,
    LEFT(email, POSITION('@' IN email) - 1) AS username,
    SUBSTRING(
        email
        FROM POSITION('.' IN email) + 1
        FOR POSITION('@' IN email) - POSITION('.' IN email) - 1
    ) AS last_name_part
FROM payment
JOIN customer ON payment.customer_id = customer.customer_id
WHERE DATE(payment_date) BETWEEN '2020-04-28' AND '2020-04-30'
  AND amount > 0
  AND email ILIKE '%gmail%'
GROUP BY
    customer_id,
    DATE(payment_date),
    email
HAVING COUNT(*) > 1
ORDER BY avg_payment_amount DESC
LIMIT 10;
