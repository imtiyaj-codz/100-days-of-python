select * from payment as first_table --all columns from both tables
inner join customer as second_table
on first_table.customer_id = second_table.customer_id;

select first_table.*, first_name , last_name --all columns from first(payment table) and 
from payment as first_table                  --f_name and l_name from second(customer table)
inner join customer as second_table
on first_table.customer_id = second_table.customer_id;

select first_table.*, first_name , last_name --all the columns from both the tables are shown 
from payment as first_table                  
full outer join customer as second_table
on first_table.customer_id = second_table.customer_id;







