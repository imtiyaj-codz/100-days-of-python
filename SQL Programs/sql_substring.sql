select 
left(first_name,2),
right(last_name,3)
from customer;

select 
right(left(first_name,2),1),
first_name
from customer;

select 
right(email,5) as last_five
from customer;

select 
left(right(email,4),1)
from customer;
select 
left(first_name,1) || left(last_name,1)
from customer; --this is concatenation of string in sql

select 
left(first_name,1) || '.' || left(last_name,1) as initials
from customer; --you can concatenate anything to this and alias are also used over here

select
left(email,1) || '***' || right(email,19)
from customer;








































