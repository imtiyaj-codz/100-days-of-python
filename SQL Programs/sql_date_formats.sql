select 
extract(month from payment_date),
sum(amount) as total_payment_amount
from payment
group by extract(month from payment_date)
order by count(*) desc;

select
extract(day from payment_date) ,
sum(amount)
from payment
where extract(day from payment_date) between 0 and 7
group by extract(day from payment_date)
order by sum(amount) desc;

select
extract(week from payment_date) as week,
customer_id,
sum(amount)
from payment
group by extract(week from payment_date) , customer_id
order by sum(amount) desc;






