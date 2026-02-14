select
customer_id,
sum(amount) as average_spent
from payment
group by customer_id
order by customer_id