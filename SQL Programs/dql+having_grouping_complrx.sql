select 
customer_id,
sum(amount)
from payment
group by customer_id
order by customer_id;
select 
customer_id,
sum(amount),
count(*)
from payment
group by staff_id , customer_id
order by count(*)








