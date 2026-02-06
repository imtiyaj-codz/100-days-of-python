select count(*)
from rental
where return_date is null;

select 
payment_id,
amount
from payment
where amount <= 2;

select * 
from payment
where customer_id = 20
or customer_id = 24
and amount = 3.99;














