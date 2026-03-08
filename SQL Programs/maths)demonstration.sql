select 
film_id,
rental_rate as old_rental_rate,
ceiling(rental_rate*1.4)-0.01 as new_rental_rate
from film;

select
product_name,
sum(quantity_sold * price_per_unit) as total_revenue
from sales

group by product_name
order by total_revenue desc
limit 1;








