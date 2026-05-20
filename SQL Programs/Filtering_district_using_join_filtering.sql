select b.district , a.first_name, a.last_name , b.phone from customer a  --first_name last_name phone number and district texas 
full outer join address b   --customer has first and last name and address has district and pno
on a.address_id = b.address_id
Where b.district = 'Texas';
--instead of "Where" we can use AND then it is better for faster execution 







