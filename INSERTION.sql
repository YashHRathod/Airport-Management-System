INSERT INTO Manufacturer (Manufacturer_name, Country)
VALUES 
('Boeing', 'USA'),
('Airbus', 'France'),
('Bombardier', 'Canada'),
('Embraer', 'Brazil'),
('ATR', 'France'),
('Mitsubishi', 'Japan'),
('Sukhoi', 'Russia'),
('Comac', 'China'),
('Dassault', 'France'),
('Lockheed Martin', 'USA');


INSERT INTO Airlines (AirlineID, Airlinename, Website_url, Operating_country, email, Phone_no)
VALUES 
('AA123', 'American', 'www.aa.com', 'USA', 'info@aa.com', '+1-800-433-7300'),
('UA456', 'United', 'www.united.com', 'USA', 'info@united.com', '+1-800-864-8331'),
('DL789', 'Delta', 'www.delta.com', 'USA',  'info@delta.com', '+1-800-221-1212'),
('BA101', 'British Airways', 'www.ba.com', 'UK', 'info@ba.com', '+44 20 3450 1000'),
('AF202', 'Air France', 'www.airfrance.com', 'France', 'info@airfrance.com', '+33 1 41 56 78 00'),
('LH303', 'Lufthansa', 'www.lufthansa.com', 'Germany', 'info@lufthansa.com', '+49 69 86 799 799'),
('EK404', 'Emirates', 'www.emirates.com', 'UAE', 'info@emirates.com', '+971 600 555 555'),
('QF505', 'Qantas', 'www.qantas.com', 'Australia','info@qantas.com', '+61 2 8222 2439'),
('SQ606', 'Singapore Airlines', 'www.singaporeair.com', 'Singapore','info@singaporeair.com', '+65 6223 8888'),
('TK707', 'Turkish Airlines', 'www.turkishairlines.com', 'Turkey', 'info@turkishairlines.com', '+90 212 444 0849');

INSERT INTO Aircraft (AircraftID, Manufacture_date, capacity, Model, AirlineID, Manufacturer_name)
VALUES 
('A123', '2023-01-15', 200, 'Boeing 737', 'AA123', 'Boeing'),
('A456', '2022-07-20', 250, 'Airbus A320', 'UA456', 'Airbus'),
('A789', '2023-11-05', 180, 'Boeing 787', 'DL789', 'Boeing'),
('A101', '2021-05-30', 300, 'Boeing 777', 'BA101', 'Boeing'),
('A202', '2022-09-12', 220, 'Airbus A350', 'AF202', 'Airbus'),
('A303', '2023-04-25', 260, 'Airbus A380', 'LH303', 'Airbus'),
('A404', '2024-02-18', 280, 'Boeing 777X', 'EK404', 'Boeing'),
('A505', '2022-12-10', 190, 'Airbus A330', 'QF505', 'Airbus'),
('A606', '2023-08-22', 240, 'Boeing 787', 'SQ606', 'Boeing'),
('A707', '2023-06-01', 210, 'Airbus A320neo', 'TK707', 'Airbus');


INSERT INTO Flights (FlightID, fdate, Departure_time, Ticketprice, AircraftID, Flight_From, Flight_To, Arrival_time)
VALUES
('F123', '2024-04-10', '2024-04-10 08:00:00', 26250,   'A123', 'Mumbai', 'Bangalore', '2024-04-10 10:00:00'),
('F456', '2024-04-12', '2024-04-12 12:00:00', 21000,   'A456', 'Bangalore', 'New Delhi', '2024-04-12 15:00:00'),
('F789', '2024-04-15', '2024-04-15 09:30:00', 31500,   'A789', 'New Delhi', 'Mumbai', '2024-04-15 11:30:00'),
('F101', '2024-04-18', '2024-04-18 11:45:00', 37500,   'A101', 'New Delhi', 'Bangalore', '2024-04-18 15:45:00'),
('F202', '2024-04-20', '2024-04-20 15:20:00', 28500,   'A202', 'Bangalore', 'New Delhi', '2024-04-20 17:50:00'),
('F303', '2024-04-22', '2024-04-22 07:10:00', 45000,   'A303', 'Bangalore', 'New Delhi', '2024-04-22 10:10:00'),
('F404', '2024-04-25', '2024-04-25 14:00:00', 52500,   'A404', 'Mumbai', 'Bangalore', '2024-04-25 16:00:00'),
('F505', '2024-04-28', '2024-04-28 13:45:00', 33750,   'A505', 'New Delhi', 'Mumbai', '2024-04-28 15:15:00'),
('F606', '2024-05-01', '2024-05-01 10:20:00', 39000,   'A606', 'Bangalore', 'New Delhi', '2024-05-01 14:20:00'),
('F707', '2024-05-03', '2024-05-03 16:30:00', 25500,   'A707', 'Bangalore', 'Mumbai', '2024-05-03 18:30:00');



INSERT INTO Booking (BookingID, BookingDate, Ticket_cost, FlightID,Payment_type)
VALUES 
('B001', '2024-04-01', 105000,'F123', 'Credit Card'),
('B002', '2024-04-02', 42000, 'F456', 'Debit Card'),
('B003', '2024-04-03', 126000,'F789', 'Cash'),
('B004', '2024-04-05', 150000,'F101', 'Credit Card'),
('B005', '2024-04-06', 28500, 'F202', 'Debit Card'),
('B006', '2024-04-08', 45000, 'F303', 'Cash'),
('B007', '2024-04-10', 52500, 'F404', 'Credit Card'),
('B008', '2024-04-12', 33750, 'F505', 'Debit Card'),
('B009', '2024-04-15', 39000, 'F606', 'Cash'),
('B010', '2024-04-17', 25500, 'F707', 'Credit Card'),
('B011' , '2024-04-18',25500 , 'F707', 'Cash');




INSERT INTO Passenger (PassengerID, Gender, Age, Name, Phone_no, Nationality, Email)
VALUES 
('P001', 'M', 35, 'Rahul Sharma', '+919876543210', 'Indian', 'rahul.sharma@example.com'),
('P002', 'F', 28, 'Priya Patel', '+919876543211', 'Indian', 'priya.patel@example.com'),
('P003', 'M', 45, 'Amit Kumar', '+919876543212', 'Indian', 'amit.kumar@example.com'),
('P004', 'F', 22, 'Sneha Gupta', '+919876543213', 'Indian', 'sneha.gupta@example.com'),
('P005', 'M', 30, 'Vivek Singh', '+919876543214', 'Indian', 'vivek.singh@example.com'),
('P006', 'F', 26, 'Neha Verma', '+919876543215', 'Indian', 'neha.verma@example.com'),
('P007', 'M', 40, 'John Smith', '+12345678901', 'American', 'john.smith@example.com'),
('P008', 'F', 32, 'Emily Johnson', '+19876543210', 'British', 'emily.johnson@example.com'),
('P009', 'M', 27, 'Michael Brown', '+11223344556', 'Australian', 'michael.brown@example.com'),
('P010', 'F', 24, 'Sophia Lee', '+15678901234', 'South Korean', 'sophia.lee@example.com'),
('P011', 'M', 33, 'Daniel Kim', '+17890123456', 'Canadian', 'daniel.kim@example.com'),
('P012', 'F', 29, 'Olivia Davis', '+14325678901', 'German', 'olivia.davis@example.com'),
('P013', 'M', 47, 'Arun Joshi', '+919876543216', 'Indian', 'arun.joshi@example.com'),
('P014', 'F', 23, 'Ananya Reddy', '+919876543217', 'Indian', 'ananya.reddy@example.com'),
('P015', 'M', 31, 'Rajesh Mehra', '+919876543218', 'Indian', 'rajesh.mehra@example.com'),
('P016', 'F', 25, 'Kamal Malhotra', '+919876543219', 'Indian', 'kamal.malhotra@example.com'),
('P017', 'M', 39, 'Pooja Gupta', '+919876543220', 'Indian', 'pooja.gupta@example.com'),
('P018', 'F', 34, 'Vikram Kumar', '+919876543221', 'Indian', 'vikram.kumar@example.com'),
('P019', 'M', 28, 'Kirti Singh', '+919876543222', 'Indian', 'kirti.singh@example.com'),
('P020', 'F', 26, 'Amitabh Verma', '+919876543223', 'Indian', 'amitabh.verma@example.com');




INSERT INTO Includes (PassengerID, BookingID, Seat_no)
VALUES 
('P001', 'B001', 1), 
('P002', 'B001', 2),  
('P003', 'B001', 3), 
('P004', 'B001', 4), 

('P005', 'B002', 1), 
('P006', 'B002', 2),  

('P020', 'B003', 1),  
('P016', 'B003', 2),  
('P015', 'B003', 3),  
('P014', 'B003', 4), 

('P019', 'B004', 1), 
('P018', 'B004', 2),  
('P017', 'B004', 3), 
('P013', 'B004', 4),  

('P011', 'B005', 1),  

('P010', 'B006', 1), 

('P009', 'B007', 1),  

('P008', 'B008', 1), 

('P007', 'B009', 1),  

('P012', 'B010', 1),

('P001', 'B011' , 1);  



INSERT INTO Baggages (BaggageID, Type, Dimention, Weight, PassengerID)
VALUES 
('BG0001', 'Checked', '22x14x9 inches', 15, 'P001'),
('BG0002', 'Carry-On', '18x14x8 inches', 7, 'P002'),
('BG0003', 'Checked', '24x16x10 inches', 18, 'P003'),
('BG0004', 'Carry-On', '20x15x9 inches', 9, 'P004'),
('BG0005', 'Checked', '26x18x11 inches', 20, 'P005'),
('BG0006', 'Carry-On', '19x14x7 inches', 6, 'P006'),
('BG0007', 'Checked', '25x17x10 inches', 22, 'P007'),
('BG0008', 'Carry-On', '21x13x8 inches', 8, 'P008'),
('BG0009', 'Checked', '23x15x9 inches', 16, 'P009'),
('BG0010', 'Carry-On', '17x13x8 inches', 5, 'P010'),
('BG0011', 'Checked', '21x14x9 inches', 14, 'P011'),
('BG0012', 'Carry-On', '16x12x7 inches', 4, 'P012'),
('BG0013', 'Checked', '20x16x9 inches', 12, 'P013'),
('BG0014', 'Carry-On', '18x13x8 inches', 6, 'P014'),
('BG0015', 'Checked', '22x15x10 inches', 17, 'P015'),
('BG0016', 'Carry-On', '19x14x7 inches', 7, 'P016'),
('BG0017', 'Checked', '24x17x11 inches', 19, 'P017'),
('BG0018', 'Carry-On', '20x13x8 inches', 8, 'P018'),
('BG0019', 'Checked', '23x16x10 inches', 15, 'P019'),
('BG0020', 'Carry-On', '18x12x7 inches', 5, 'P020');






INSERT INTO Maintenance (RecodeID, Task_performed, Notes, Date_of_maintenance, AircraftID)
VALUES 
('M001', 'Engine Check', 'Oil change', '2024-03-15', 'A123'),
('M002', 'Interior Clean', 'Seats and carpet cleaned', '2024-02-20', 'A456'),
('M003', 'Safety Inspection', 'Checked all safety equipment', '2024-03-05', 'A789'),
('M004', 'Routine Maintenance', 'Regular maintenance check', '2024-02-10', 'A101'),
('M005', 'Avionics Upgrade', 'Installed new avionics systems', '2024-01-25', 'A202'),
('M006', 'Engine Overhaul', 'Complete engine overhaul', '2024-03-20', 'A303'),
('M007', 'Structural Inspection', 'Checked for any structural issues', '2024-01-10', 'A404'),
('M008', 'Hydraulic System Check', 'Inspected hydraulic systems', '2024-04-02', 'A505'),
('M009', 'Fuel System Maintenance', 'Cleaned and inspected fuel systems', '2024-02-28', 'A606'),
('M010', 'Landing Gear Inspection', 'Checked landing gear components', '2024-03-10', 'A707');


INSERT INTO Airport (AirportID, Airport_name, City, Capacity)
VALUES 
('AI001', 'Mystic Valley Airport', 'New Delhi', 'Large'),
('AI002', 'Golden Sands Airport', 'Mumbai',   'Large'),
('AI003', 'Emerald Hills Airport', 'Bangalore', 'Large');

INSERT INTO State (City , State)
VALUES
('New Delhi', 'Delhi'),
('Mumbai', 'Maharashtra'),
('Bangalore', 'Karnataka');

INSERT INTO Country ( Country ,State)
VALUES
('India', 'Delhi'),
('India', 'Maharashtra'),
('India', 'Karnataka');


INSERT INTO Employee (EmployeeID, AirportID, Name, Dob, Phone_no, Gender, Joining_date, Salary)
VALUES
(1, 'AI001', 'Amit Sharma', '1990-05-15', '9876543211', 'M', '2023-01-10', 50000),
(2, 'AI002', 'Neha Verma', '1988-09-22', '9876543212', 'F', '2023-02-05', 48000),
(3, 'AI003', 'Priya Singh', '1992-03-12', '9876543213', 'F', '2023-03-20', 52000),
(4, 'AI001', 'Rahul Gupta', '1995-07-18', '9876543214', 'M', '2023-04-15', 51000),
(5, 'AI002', 'Anjali Kapoor', '1993-11-25', '9876543215', 'F', '2023-05-10', 49000),
(6, 'AI003', 'Vikas Malhotra', '1991-02-08', '9876543216', 'M', '2023-06-25', 53000),
(7, 'AI001', 'Deepika Sharma', '1994-06-30', '9876543217', 'F', '2023-07-20', 52000),
(8, 'AI002', 'Ravi Kumar', '1989-09-05', '9876543218', 'M', '2023-08-15', 48000),
(9, 'AI003', 'Sneha Patel', '1996-12-10', '9876543219', 'F', '2023-09-30', 54000),
(10, 'AI001', 'Raj Kapoor', '1997-04-28', '9876543220', 'M', '2023-10-25', 51000),
(11, 'AI001', 'Rahul Sharma', '1993-08-20', '9876543221', 'M', '2023-11-12', 48000),
(12, 'AI002', 'Pooja Gupta', '1991-05-28', '9876543222', 'F', '2023-12-05', 52000),
(13, 'AI003', 'Arun Singh', '1994-12-15', '9876543223', 'M', '2024-01-20', 51000),
(14, 'AI001', 'Shreya Kapoor', '1990-09-10', '9876543224', 'F', '2024-02-15', 49000),
(15, 'AI002', 'Sanjay Verma', '1995-03-25', '9876543225', 'M', '2024-03-30', 53000),
(16, 'AI003', 'Neha Malhotra', '1992-07-02', '9876543226', 'F', '2024-04-20', 52000),
(17, 'AI001', 'Rajesh Patel', '1996-01-05', '9876543227', 'M', '2024-05-10', 48000),
(18, 'AI002', 'Manisha Kumar', '1993-04-18', '9876543228', 'F', '2024-06-25', 54000),
(19, 'AI003', 'Amita Singh', '1988-11-22', '9876543229', 'F', '2024-07-20', 51000),
(20, 'AI001', 'Sandeep Sharma', '1997-06-08', '9876543230', 'M', '2024-08-15', 49000);

INSERT INTO Employee (EmployeeID, AirportID, Name, Dob, Phone_no, Gender, Joining_date, Salary)
VALUES
(21, 'AI002', 'Ankit Kapoor', '1994-02-12', '9876543231', 'M', '2024-09-30', 53000),
(22, 'AI003', 'Shikha Gupta', '1990-07-28', '9876543232', 'F', '2024-10-25', 52000),
(23, 'AI001', 'Vivek Singh', '1992-12-15', '9876543233', 'M', '2024-11-12', 48000),
(24, 'AI002', 'Kirti Verma', '1989-09-20', '9876543234', 'F', '2024-12-05', 54000),
(25, 'AI003', 'Rahul Malhotra', '1996-04-05', '9876543235', 'M', '2025-01-20', 51000),
(26, 'AI001', 'Priyanka Patel', '1993-01-10', '9876543236', 'F', '2025-02-15', 49000),
(27, 'AI002', 'Varun Sharma', '1990-06-25', '9876543237', 'M', '2025-03-30', 53000),
(28, 'AI003', 'Preeti Kapoor', '1995-11-02', '9876543238', 'F', '2025-04-20', 52000),
(29, 'AI001', 'Nikhil Verma', '1992-08-05', '9876543239', 'M', '2025-05-10', 48000),
(30, 'AI002', 'Meera Gupta', '1997-03-18', '9876543240', 'F', '2025-06-25', 54000),
(31, 'AI003', 'Alok Singh', '1994-06-22', '9876543241', 'M', '2025-07-20', 51000),
(32, 'AI001', 'Tanvi Sharma', '1991-11-08', '9876543242', 'F', '2025-08-15', 49000),
(33, 'AI002', 'Vikram Patel', '1988-04-05', '9876543243', 'M', '2025-09-30', 53000),
(34, 'AI003', 'Sneha Malhotra', '1993-01-20', '9876543244', 'F', '2025-10-25', 52000),
(35, 'AI001', 'Rohit Kapoor', '1996-07-05', '9876543245', 'M', '2025-11-12', 48000),
(36, 'AI002', 'Kavita Verma', '1990-10-18', '9876543246', 'F', '2025-12-05', 54000),
(37, 'AI003', 'Amit Kumar', '1989-05-15', '9876543247', 'M', '2026-01-20', 51000),
(38, 'AI001', 'Anjali Singh', '1995-02-10', '9876543248', 'F', '2026-02-15', 49000),
(39, 'AI002', 'Rahul Sharma', '1992-09-25', '9876543249', 'M', '2026-03-30', 53000),
(40, 'AI003', 'Pooja Malhotra', '1997-04-02', '9876543250', 'F', '2026-04-20', 52000);


INSERT INTO Vehicle (VID, V_type, AirportID)
VALUES
(1, 'Car', 'AI001'),
(2, 'Van', 'AI001'),
(3, 'Bus', 'AI001'),
(4, 'Car', 'AI001'),
(5, 'Van', 'AI001'),
(6, 'Bus', 'AI002'),
(7, 'Car', 'AI002'),
(8, 'Van', 'AI002'),
(9, 'Car', 'AI003'),
(10, 'Van', 'AI003');


INSERT INTO Scheduled (FlightID, AirportID, Time, Flight_type)
VALUES 
('F123', 'AI002', '2024-04-10 08:00:00', 'Departure'),
('F123', 'AI003', '2024-04-10 10:00:00', 'Arrival'),

('F456', 'AI003', '2024-04-12 12:00:00', 'Departure'),
('F456', 'AI001', '2024-04-12 15:00:00', 'Arrival'),

('F789', 'AI001', '2024-04-15 09:30:00', 'Departure'),
('F789', 'AI002', '2024-04-15 11:30:00', 'Arrival'),

('F101', 'AI001', '2024-04-18 11:45:00', 'Departure'),
('F101', 'AI002', '2024-04-18 13:45:00', 'Arrival'),
('F101', 'AI002', '2024-04-18 14:30:00', 'Departure'),
('F101', 'AI003', '2024-04-18 15:45:00', 'Arrival'),

('F202', 'AI003', '2024-04-20 15:20:00', 'Departure'),
('F202', 'AI001', '2024-04-20 17:50:00', 'Arrival'),

('F303', 'AI003', '2024-04-22 07:10:00', 'Departure'),
('F303', 'AI001', '2024-04-22 10:10:00', 'Arrival'),

('F404', 'AI002', '2024-04-25 14:00:00', 'Departure'),
('F404', 'AI003', '2024-04-25 16:00:00', 'Arrival'),

('F505', 'AI001', '2024-04-28 13:45:00', 'Departure'),
('F505', 'AI002', '2024-04-28 15:15:00', 'Departure'),

('F606', 'AI003', '2024-05-01 10:20:00', 'Departure'),
('F606', 'AI002', '2024-05-01 11:35:00', 'Arrival'),
('F606', 'AI002', '2024-05-01 12:20:00', 'Departure'),
('F606', 'AI001', '2024-05-01 14:20:00', 'Arrival'),

('F707', 'AI003', '2024-05-03 16:30:00', 'Departure'),
('F707', 'AI002', '2024-05-03 18:30:00', 'Arrival');



INSERT INTO Cleaning_staff (EmployeeID, Area)
VALUES
(1, 'Terminal Cleaning'),
(2, 'Terminal Cleaning'),
(3, 'Terminal Cleaning'),
(4, 'Gate Cleaning'),
(5, 'Gate Cleaning'),
(6, 'Security Check Cleaning'),
(7, 'Lounge Cleaning'),
(8, 'Baggage Claim Cleaning'),
(9, 'Parking Area Cleaning'),
(10, 'Lounge Cleaning');


INSERT INTO Maintenance_crew (EmployeeID, Specialization, Task)
VALUES
(11, 'Electrical Systems', 'Routine Maintenance'),
(12, 'Engine Maintenance', 'Engine Inspections'),
(13, 'Avionics Systems', 'Software Updates'),
(14, 'Airframe Structures', 'Structural Inspections'),
(15, 'Fuel Systems', 'Fuel Leak Checks'),
(16, 'Hydraulic Systems', 'Fluid Checks'),
(17, 'Landing Gear', 'Gear Maintenance'),
(18, 'Cabin Systems', 'Cabin Inspections'),
(19, 'Communications Systems', 'Communication Checks'),
(20, 'Pneumatic Systems', 'Pressure Checks');



INSERT INTO Driver (EmployeeID, Area, VID)
VALUES
(31, 'Local Area', 1),
(32, 'Downtown', 2),
(33, 'Suburbs', 3),
(34, 'Business District', 4),
(35, 'Residential Area', 5),
(36, 'Tourist Spots', 6),
(37, 'City Center', 7),
(38, 'Industrial Area', 8),
(39, 'Shopping District', 9),
(40, 'Airport Area', 10);
