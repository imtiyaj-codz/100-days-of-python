select count(customer_id)
from payment
where customer_id = 100;

select amount
from payment
where amount > 10
order by amount desc;

select 
first_name,
last_name
from 
customer
where first_name is not null;

select rental_date from rental
where rental_date


