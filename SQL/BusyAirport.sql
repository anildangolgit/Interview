-- +-------------------+------+
-- | Column Name       | Type |
-- +-------------------+------+
-- | departure_airport | int  |
-- | arrival_airport   | int  |
-- | flights_count     | int  |
-- +-------------------+------+
-- (departure_airport, arrival_airport) is the primary key column for this table.
-- Each row of this table indicates that there were flights_count flights that departed from departure_airport and arrived at arrival_airport.
 

 1 2 100
 2 4 200
 4 5 200


 ---Find Total number of flights departing per airport
 Select 
 ---Find Total number of Flights departine per airport
    -- Find The total flight per flight
        --Rank them by total flights
            --Get the Top most one

select * from Airport A1
join Airport A2
on A1.departure_airport=A2.arrival_airport
where A1.flights_count=(Select max(flights_count) from Airport)
and A2.flights_count=(Select (max(flights_count) from Airport)