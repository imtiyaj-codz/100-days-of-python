select count(*)
from rental
where return_date is null;

select 
payment_id,
amount
from payment
where amount <= 2;







