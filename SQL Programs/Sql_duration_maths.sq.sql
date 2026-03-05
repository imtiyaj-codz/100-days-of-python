select 
current_date,
current_timestamp - rental_date
from rental;

select 
current_date,
extract( epoch from (return_date - rental_date)) / 3600 as total_hours
from rental;

select
customer_id,
rental_date - return_date
from rental
where customer_id = 35;

select
customer_id,
avg(rental_date - return_date) as rental_duration
from rental
group by customer_id
order by rental_duration;










