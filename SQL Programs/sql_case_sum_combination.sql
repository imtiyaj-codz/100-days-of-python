select
sum(
case
when total_amount < 40000 then 1
else 0
end
) as cheap_flights
from bookings;











