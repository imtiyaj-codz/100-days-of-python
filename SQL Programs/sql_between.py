select
customer_id,
amount
from payment 
where (customer_id = 322 or customer_id = 346 or customer_id = 355)
and 
(amount < 2 or amount > 10)
order by customer_id asc,amount desc;

select 
payment_id,
payment_date
from payment
where amount between 1.99 and 4.99;

select 
payment_id,
payment_date
from payment
where amount not between 1.99 and 4.99;

select 
rental_date
from rental
where rental_date between 
'2005-05-24' and '2005-05-26';

select 
rental_date
from rental
where rental_date between 
'2005-05-24 02:30' and '2005-05-26 05:40';

select 
count (*)
from payment
where (payment_date between '2020-01-26' and '2020-01-27')
and
amount between 1.99 and 3.99
















