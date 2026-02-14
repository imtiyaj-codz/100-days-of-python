SELECT amount, COUNT(*)
FROM payment
GROUP BY amount
HAVING COUNT(*) > 3;