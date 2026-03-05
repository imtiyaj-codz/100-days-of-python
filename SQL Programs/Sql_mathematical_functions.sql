SELECT
    rental_id,
    rental_date,
    CURRENT_DATE - rental_date AS days_since_rental
FROM rental;
