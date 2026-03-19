select  first_table.customer_id,first_name , last_name , amount 
from payment as first_table
inner join customer as second_table
on first_table.customer_id = second_table.customer_id
order by first_table.customer_id;

select distinct first_table.customer_id , second_table.first_name , first_table.amount
from payment as first_table
full outer join customer as second_table
on first_table.customer_id = second_table.customer_id
order by first_table.customer_id;

















