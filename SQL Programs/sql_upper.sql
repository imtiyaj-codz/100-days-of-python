select
upper (email) as bigcase,
lower (email) as smallcase,
length (email)
from customer
where length(email) < 30;

select 
lower(first_name) as fname,
lower(last_name) as lname,
lower(email) as emails
from customer
where length(first_name) > 10 or length(last_name) > 10;













