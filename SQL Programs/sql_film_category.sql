select 
title,
case
when rating in ('PG' , 'PG-13') or length > 210 then 'Great or very long (tier 1)'
when description ILIKE '%Drama%' and length > 90 then 'Long Drama (tier 2)'
WHEN description LIKE '%Drama%' and length <=90 THEN 'Short drama (tier 3)'
when rental_rate < 1 then 'Very cheap (tier 4)'
end as film_tier_list
from film
WHERE 
    rating IN ('PG','PG-13')
    OR length > 210
    OR description ILIKE '%Drama%'
    OR rental_rate < 1
ORDER BY title;

