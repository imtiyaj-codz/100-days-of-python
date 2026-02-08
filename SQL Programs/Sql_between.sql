select * from customer
where customer_id IN (123,342,523,347,456);

select * from customer
where first_name IN ('MARY','PATRICA');

select * from customer
where first_name NOT IN ('MARY','PATRICA');

select * from payment
where customer_id IN (12, 25, 67, 93, 124, 234) 
and
amount IN (4.99,7.99,9.99)
and
(payment_date between '2020-01-01' and '2020-01-31 23:59');

select first_name
from actor
where first_name ILIKE 'a%';--if we use ILIKE we don't have to worry about case sensitivity cuz it is case sentitive

select first_name
from actor
where first_name LIKE 'A%';--if we use LIKE then we have to take care of case sensitivity cuz it is case sentitive

select first_name
from actor
where first_name LIKE '%A%';--we use doble % so that we can see that the A can be anaywhere in the

select first_name
from actor
where first_name LIKE '_A%';-- '_' the A will be a second position in all the words and if we use two underscores then we can shift for two words

select * from film
where description LIKE '%Drama%';














