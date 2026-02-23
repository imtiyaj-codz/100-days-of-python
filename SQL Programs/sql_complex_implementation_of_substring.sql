select
substring(email from position('.' in email)+1 for 5 ),
email
from customer;

select
substring(email from position('.' in email)+1 for position('@' in email)-position('.' in email)-1),
email
from customer;




