CREATE TABLE
	Manufacturer (
		Manufacturer_name VARCHAR(50) PRIMARY KEY,
		Country VARCHAR(50)
	);

CREATE TABLE
	Airport (
		AirportID VARCHAR(50) PRIMARY KEY,
		Airport_name VARCHAR(50),
		City VARCHAR(50) UNIQUE,
		Capacity VARCHAR(50)
	);

CREATE TABLE
	Airlines (
		AirlineID VARCHAR(50) PRIMARY KEY,
		Airlinename VARCHAR(50),
		Website_url VARCHAR(40),
		Operating_country VARCHAR(50),
		email VARCHAR(50),
		Phone_no VARCHAR(50)
	);

CREATE TABLE
	Aircraft (
		AircraftID VARCHAR(50) PRIMARY KEY,
		Manufacture_date DATE,
		capacity INTEGER,
		Model VARCHAR(50),
		AirlineID VARCHAR(50) REFERENCES Airlines (AirlineID),
		Manufacturer_name VARCHAR(50) REFERENCES Manufacturer (Manufacturer_name)
	);

CREATE TABLE
	Flights (
		FlightID VARCHAR(50) PRIMARY KEY,
		fdate DATE,
		Departure_time TIMESTAMP,
		Ticketprice INTEGER,
		AircraftID VARCHAR(50) REFERENCES Aircraft (AircraftID),
		Flight_From VARCHAR(50),
		Flight_To VARCHAR(50),
		Arrival_time TIMESTAMP
	);

CREATE TABLE
	Booking (
		BookingID VARCHAR(50) PRIMARY KEY,
		BookingDate DATE,
		Ticket_cost INTEGER,
		Payment_type VARCHAR(50),
		FlightID VARCHAR(50) REFERENCES Flights (FlightID)
	);

CREATE TABLE
	Passenger (
		PassengerID VARCHAR(50) PRIMARY KEY,
		Gender CHAR,
		Age INTEGER,
		Name VARCHAR(50),
		Phone_no VARCHAR(50),
		Nationality VARCHAR(50),
		Email VARCHAR(50) UNIQUE
	);

CREATE TABLE
	Baggages (
		BaggageID VARCHAR(50) PRIMARY KEY,
		Type VARCHAR(50),
		Dimention VARCHAR(50),
		Weight INTEGER,
		PassengerID VARCHAR(50) REFERENCES Passenger (PassengerID)
	);

CREATE TABLE
	Maintenance (
		RecodeID VARCHAR(50) PRIMARY KEY,
		Task_performed VARCHAR(50),
		Notes VARCHAR(50),
		Date_of_maintenance DATE,
		AircraftID VARCHAR(50) REFERENCES Aircraft (AircraftID)
	);

CREATE TABLE
	Scheduled (
		FlightID VARCHAR(50) REFERENCES Flights (FlightID),
		AirportID VARCHAR(50) REFERENCES Airport (AirportID),
		Time TIMESTAMP,
		Flight_type VARCHAR(50)
	);

CREATE TABLE
	State (
		City VARCHAR(50) PRIMARY KEY REFERENCES Airport (City),
		State VARCHAR(50) UNIQUE
	);

CREATE TABLE
	Country (
		State VARCHAR(50) PRIMARY KEY REFERENCES State (State),
		Country VARCHAR(50)
	);

CREATE TABLE
	Employee (
		EmployeeID INTEGER PRIMARY KEY,
		AirportID VARCHAR(50) REFERENCES Airport (AirportID),
		Name VARCHAR(50),
		Dob DATE,
		Phone_no VARCHAR(50),
		Gender CHAR,
		Joining_date DATE,
		Salary INTEGER,
		Email VARCHAR(50) UNIQUE
	);

CREATE TABLE
	Vehicle (
		VID INTEGER PRIMARY KEY,
		V_type VARCHAR(50),
		AirportID VARCHAR(50) REFERENCES Airport (AirportID)
	);

CREATE TABLE
	Driver (
		EmployeeID INTEGER REFERENCES Employee (EmployeeID),
		Area VARCHAR(50),
		VID INTEGER REFERENCES Vehicle (VID)
	);

CREATE TABLE
	Maintenance_crew (
		EmployeeID INTEGER REFERENCES Employee (EmployeeID),
		Specialization VARCHAR(50),
		Task VARCHAR(50)
	);


CREATE TABLE
	Cleaning_staff (
		EmployeeID INTEGER REFERENCES Employee (EmployeeID),
		Area VARCHAR(50)
	);

CREATE TABLE
	Includes (
		PassengerID VARCHAR(50) REFERENCES Passenger (PassengerID),
		BookingID VARCHAR(50) REFERENCES Booking (BookingID),
		Seat_no VARCHAR(50)
	);
