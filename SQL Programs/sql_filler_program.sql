select 
position('@' IN email) as position_email,
email
from customer;

select 
left(email,position('@' IN email)) as position_email,
email
from customer;

select 
left(email,position('@' IN email)-1) as position_email,
email
from customer;

select 
left(email,position('.' IN email)-1) || ', ' || last_name
from customer;

select 
substring(email,6,5)
from customer;






