select 
rental_date,
return_date
from rental
order by rental_date desc;

select 
rental_date,
coalesce(cast(return_date as varchar) , 'Not Returned')
from rental
order by rental_date desc;

select 
replace(cast(rating as text),'PG-13','PG-18')
from film
group by rating