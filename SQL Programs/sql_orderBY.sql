select 
staff_id,
sum(amount),
count(*)
from payment
where amount != 0
group by staff_id
order by sum(amount) desc;










