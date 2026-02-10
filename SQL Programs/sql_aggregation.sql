select 
description 
from film 
where description ILIKE '%Drama%';

select count(*)
from film
where description ILIKE '%Documentary %';

select 
count (*) 
from customer
where first_name LIKE '___'
and
(last_name LIKE '%X' or last_name LIKE '%Y');

select 
sum(amount),
count(*),
min(amount),
max(amount),
round(avg(amount),3) as average, 
round(avg(amount),3),
avg(amount)
from payment;

select  
min(replacement_cost),
max(replacement_cost),
round(avg(replacement_cost),2) as AVG,
sum(replacement_cost)

from film



















