
SELECT * FROM ola.bookings where Booking_Status="success";
SELECT * FROM ola.bookings;
# 1. Retrieve all successful bookings:
Create View Successful_booking As 
SELECT * FROM ola.bookings where Booking_Status="success";

#for creating the view is that the sale manager can easily retrive the data such as
select * from Successful_booking; 

# 2. Find the average ride distance for each vehicle type:
select Vehicle_Type, Avg(Ride_Distance)
as avg_distance from ola.Bookings
group by Vehicle_Type; 

#3. Get the total number of cancelled rides by customers:
select count(*) from ola.Bookings
where Booking_Status='Canceled by Customer';

# 4. List the top 5 customers who booked the highest number of rides:
select Customer_ID,count(Booking_ID) as total_rides
from ola.Bookings
group by Customer_id
order by total_rides desc limit 5;

#5. Get the number of rides cancelled by drivers due to personal and car-related issues:
select count(*)
from ola.Bookings
where Canceled_Rides_by_Driver='Personal & Car related issue';

# 6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
select max(Driver_Ratings) as max_rating,
min(Driver_Ratings) as min_rating
from ola.Bookings
where Vehicle_Type='Prime Sedan';

#7. Retrieve all rides where payment was made using UPI:
select * from ola.Bookings
where Payment_Method='UPI';

#8. Find the average customer rating per vehicle type:
select Vehicle_Type ,avg(Customer_Rating)
as avg_customer_rating from ola.Bookings
group by Vehicle_Type;

#9. Calculate the total booking value of rides completed successfully

select sum(Booking_value) as total_successful_value
from ola.Bookings
group by Booking_Status='Success';

# List all incomplete rides along with the reason:
select Booking_ID,Incomplete_Rides_Reason
 from ola.Bookings
 where Incomplete_Rides='Yes';




