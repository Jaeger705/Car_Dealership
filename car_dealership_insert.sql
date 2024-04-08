INSERT INTO Salesperson (Name, ContactInfo) VALUES
('John Doe', 'john.doe@email.com'),
('Emily Carter', 'emily.carter@email.com');

INSERT INTO Customer (Name, ContactInfo) VALUES
('Alice Johnson', 'alice.johnson@email.com'),
('Bob Brown', 'bob.brown@email.com');

INSERT INTO Car (SerialNumber, Make, Model, Year, NewOrUsed, SalespersonID, CustomerID) VALUES
('123ABC', 'Toyota', 'Camry', 2020, 'N', 1, 1),
('456DEF', 'Honda', 'Civic', 2019, 'U', 2, 2);

INSERT INTO Invoice (Date, SalespersonID, CustomerID, CarSerialNumber) VALUES
('2023-03-15', 1, 1, '123ABC'),
('2023-03-20', 2, 2, '456DEF');

INSERT INTO ServiceTicket (CarSerialNumber, CustomerID, Date, Description) VALUES
('123ABC', 1, '2023-04-01', 'Annual Maintenance'),
('456DEF', 2, '2023-04-03', 'Oil Change');

INSERT INTO ServiceHistory (CarSerialNumber, Date, Details) VALUES
('123ABC', '2023-04-01', 'Completed annual maintenance.'),
('456DEF', '2023-04-03', 'Performed oil change.');

INSERT INTO Mechanic (Name, Specialization) VALUES
('Mike Johnson', 'General Repair'),
('Sara Lee', 'Oil Changes');

INSERT INTO CarServiceMechanic (CarSerialNumber, MechanicID) VALUES
('123ABC', 1),
('456DEF', 2);


