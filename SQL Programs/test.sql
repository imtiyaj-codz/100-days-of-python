SELECT
    current_date - rental_date
FROM
    rental
LIMIT
    1;

SELECT
    current_timestamp - rental_date
FROM
    rental;

--This shows the interval e.g 7587
SELECT
    rental_id,
    extract(
        DAY
        FROM
            return_date - rental_date
    ) * 24 || '  hours	'
FROM
    rental;



--This is to show total hours in the current days duration