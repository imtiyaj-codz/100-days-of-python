select 
sum(amount) as total_amount,
to_char(payment_date , 'Dy,dd/mm/yyyy')
from payment
group by
to_char(payment_date , 'Dy,dd/mm/yyyy')
order by total_amount;

select 
sum(amount) as total_amount,
to_char(payment_date , 'Dy,yyyy')
from payment
group by
to_char(payment_date , 'Dy,yyyy')
order by total_amount;

select 
sum(amount) as total_amount,
to_char(payment_date , 'Dy,hh:mm')
from payment
group by
to_char(payment_date , 'Dy,hh:mm')
by total_amount;

select current_date





