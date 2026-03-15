select 
email,
substring(email from position('.' in email)+1 for position('@' in email)-position('.' in email)-1) 
from customer;


select 
substring(email from 1 for 1) 
|| '***'  
|| substring(email from(position('.' in email))for 2) 
|| '***' || substring(email from position('@' in email))
from customer;

select
'***' 
|| substring(email from position('.' in email)-1 for 3) 
|| '***' 
|| substring(email from position('@' in email))
from customer;

select
extract(day from rental_date),
count(*)
from rental
group by extract(day from rental_date)
order by count(*) desc;

select
extract(month from payment_date),
count(amount)
from payment
group by extract(month from payment_date)
order by count(amount) desc;




























