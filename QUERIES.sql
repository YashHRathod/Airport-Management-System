
--1. List all passengers and their bookings with corresponding flight details:
SELECT
	p.PassengerID,
	p.Name AS Passenger_Name,
	p.Gender,
	p.Age,
	p.Phone_no,
	p.Nationality,
	b.BookingID,
	b.BookingDate,
	f.FlightID,
	f.Flight_From,
	f.Flight_To,
	f.Departure_time,
	f.Arrival_time,
	f.Ticketprice
FROM
	Passenger p
	JOIN Includes i ON p.PassengerID = i.PassengerID
	JOIN Booking b ON i.BookingID = b.BookingID
	JOIN Flights f ON b.FlightID = f.FlightID;

--2. List all employees with their corresponding airport and salary details:
SELECT
	e.EmployeeID,
	e.Name AS Employee_Name,
	e.Dob,
	e.Phone_no,
	e.Gender,
	e.Joining_date,
	e.Salary,
	a.AirportID,
	a.Airport_name AS Airport_Name,
	a.City
FROM
	Employee e
	JOIN Airport a ON e.AirportID = a.AirportID;

--3. Give details of cleaning staff with thier salary
SELECT
	e.EmployeeID,
	e.Name AS Employee_Name,
	e.Dob,
	e.Phone_no,
	e.Gender,
	e.Joining_date,
	e.Salary,
	a.AirportID,
	a.Airport_name AS Airport_Name,
	a.City
FROM
	Cleaning_staff cs
	JOIN Employee e ON cs.EmployeeID = e.EmployeeID
	JOIN Airport a ON e.AirportID = a.AirportID;

--4.  How many passengers are associated with the flight ID 'F123'
SELECT
	COUNT(*) AS Passenger_Count
FROM
	Includes
WHERE
	BookingID IN (
		SELECT
			BookingID
		FROM
			Booking
		WHERE
			FlightID = 'F123'
	);

--5.  Sort flights from New Delhi to Mumbai by ticket price
SELECT
	*
FROM
	Flights
WHERE
	Flight_From = 'New Delhi'
	AND Flight_To = 'Mumbai'
ORDER BY
	Ticketprice;

--6. Count the number of flights for each airline
SELECT
	Airlines.AirlineID,
	Airlines.Airlinename,
	COUNT(f.FlightID) AS Number_of_Flights
FROM
	Airlines 
	NATURAL JOIN Aircraft
	NATURAL JOIN Flights as f
GROUP BY
	Airlines.AirlineID,
	Airlines.Airlinename
ORDER BY
	Number_of_Flights DESC;

-- 7. Find the manufacturer with the maximum number of aircraft at the airport
SELECT
	Manufacturer_name,
	COUNT(AircraftID) AS Num_Aircraft
FROM
	Aircraft
GROUP BY
	Manufacturer_name
ORDER BY
	Num_Aircraft DESC;

-- 8. Get the details of baggage for a passenger with the name "Rahul Sharma"
SELECT
	b.BaggageID,
	b.Type,
	b.Dimention,
	b.Weight
FROM
	Baggages as b
	JOIN Passenger as p ON b.PassengerID = p.PassengerID
WHERE
	p.Name = 'Rahul Sharma';

-- 9.Calculate the total baggage weight on flight "F123"
SELECT
	SUM(b.Weight) AS TotalBaggageWeight
FROM
	Baggages as b
	JOIN Includes as i ON b.PassengerID = i.PassengerID
	JOIN Booking ON i.BookingID = Booking.BookingID
	JOIN Flights as f ON Booking.FlightID = f.FlightID
WHERE
	f.FlightID = 'F123';

-- 10. Name and Flight details of a passenger who has more than one booking 
SELECT
	P.Name AS PassengerName,
	B.BookingID,
	F.FlightID,
	F.Flight_From,
	F.Flight_To
FROM
	Passenger P
	JOIN Includes I ON P.PassengerID = I.PassengerID
	JOIN Booking B ON I.BookingID = B.BookingID
	JOIN Flights F ON B.FlightID = F.FlightID
WHERE
	P.PassengerID IN (
		SELECT
			P2.PassengerID
		FROM
			Passenger P2
			JOIN Includes I2 ON P2.PassengerID = I2.PassengerID
		GROUP BY
			P2.PassengerID
		HAVING
			COUNT(I2.BookingID) > 1
	);

-- 11. Sort flights from New Delhi to Bangalore by duration
SELECT
	f.FlightID,
	f.Flight_From,
	f.Flight_To,
	f.Departure_time,
	f.Arrival_time,
	CAST(
		EXTRACT(
			EPOCH
			FROM
				(f.Arrival_time - f.Departure_time)
		) / 3600 AS INTEGER
	) AS Duration_hours
FROM
	Flights as f
WHERE
	f.Flight_From = 'Bangalore'
	AND f.Flight_To = 'New Delhi'
ORDER BY
	Duration_hours;

-- 12. Name and flight details of a passenger with nationality that is not Indian
SELECT
	P.Name AS PassengerName,
	P.Nationality,
	B.BookingID,
	F.FlightID,
	F.Flight_From,
	F.Flight_To
FROM
	Passenger P
	JOIN Includes I ON P.PassengerID = I.PassengerID
	JOIN Booking B ON I.BookingID = B.BookingID
	JOIN Flights F ON B.FlightID = F.FlightID
WHERE
	P.Nationality <> 'Indian';

-- 13. Give details of employees who are drivers and their corresponding vehicle details
SELECT
	E.EmployeeID,
	E.Name AS EmployeeName,
	E.Dob,
	E.Phone_no,
	E.Gender,
	E.Joining_date,
	E.Salary,
	D.Area AS DriverArea,
	V.VID,
	V.V_type
FROM
	Employee E
	JOIN Driver D ON E.EmployeeID = D.EmployeeID
	JOIN Vehicle V ON D.VID = V.VID;

-- 14. Sort frequency of route 
SELECT
	Flight_From,
	Flight_To,
	COUNT(*) AS Frequency
FROM
	Flights
GROUP BY
	Flight_From,
	Flight_To
ORDER BY
	Frequency DESC;