select customer_id, first_name , last_name,amount
from payment
inner join customer
on customer.customer_id = payment.customer_id;

select  first_name , last_name,amount
from payment as first_table     --You can also use aliases to refer tables
inner join customer as second_table
on first_table.customer_id = second_table.customer_id;


SELECT customer.customer_id, customer.first_name, payment.amount
FROM customer
JOIN payment
ON customer.customer_id = payment.customer_id;




