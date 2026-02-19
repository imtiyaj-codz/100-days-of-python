select
staff_id,
DATE(payment_date),
sum(amount),
count(*)
from payment
where amount != 0
group by staff_id , DATE(payment_date)
order by sum(amount) desc;

select
staff_id,
DATE(payment_date),
sum(amount),
count(*)
from payment
where amount != 0
group by staff_id , DATE(payment_date)
having count(*) > 400
order by sum(amount) desc;

select
customer_id,
date(payment_date),
round(avg(amount),3) as average_amount,
count(*)
from payment
where date(payment_date) between '2020-04-28 00:00:00' and '2020-04-30 23:59:59'
group by customer_id , date(payment_date)
having count(*) > 1
order by average_amount desc;





















