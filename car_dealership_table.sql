DROP TABLE IF EXISTS Salesperson;
CREATE TABLE Salesperson (
    SalespersonID SERIAL PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    ContactInfo VARCHAR(255)
);

DROP TABLE IF EXISTS Customer CASCADE;
CREATE TABLE Customer (
    CustomerID SERIAL PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    ContactInfo VARCHAR(255)
);

DROP TABLE IF EXISTS Car CASCADE;
CREATE TABLE Car (
    SerialNumber VARCHAR(255) PRIMARY KEY,
    Make VARCHAR(255) NOT NULL,
    Model VARCHAR(255) NOT NULL,
    Year INT NOT NULL,
    NewOrUsed CHAR(1) CHECK (NewOrUsed IN ('N', 'U')),
    SalespersonID INT,
    CustomerID INT,
    FOREIGN KEY (SalespersonID) REFERENCES Salesperson(SalespersonID),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);


DROP TABLE IF EXISTS Invoice CASCADE;
CREATE TABLE Invoice (
    InvoiceID SERIAL PRIMARY KEY,
    Date DATE NOT NULL,
    SalespersonID INT,
    CustomerID INT,
    CarSerialNumber VARCHAR(255),
    FOREIGN KEY (SalespersonID) REFERENCES Salesperson(SalespersonID),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
    FOREIGN KEY (CarSerialNumber) REFERENCES Car(SerialNumber)
);

DROP TABLE IF EXISTS ServiceTicket CASCADE;
CREATE TABLE ServiceTicket (
    TicketID SERIAL PRIMARY KEY,
    CarSerialNumber VARCHAR(255),
    CustomerID INT,
    Date DATE NOT NULL,
    Description TEXT,
    FOREIGN KEY (CarSerialNumber) REFERENCES Car(SerialNumber),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);

DROP TABLE IF EXISTS ServiceHistory CASCADE;
CREATE TABLE ServiceHistory (
    RecordID SERIAL PRIMARY KEY,
    CarSerialNumber VARCHAR(255),
    Date DATE NOT NULL,
    Details TEXT,
    FOREIGN KEY (CarSerialNumber) REFERENCES Car(SerialNumber)
);


DROP TABLE IF EXISTS Mechanic CASCADE;
CREATE TABLE Mechanic (
    MechanicID SERIAL PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Specialization VARCHAR(255)
);

DROP TABLE IF EXISTS CarServiceMechanic CASCADE;
CREATE TABLE CarServiceMechanic (
    CarSerialNumber VARCHAR(255),
    MechanicID INT,
    PRIMARY KEY (CarSerialNumber, MechanicID),
    FOREIGN KEY (CarSerialNumber) REFERENCES Car(SerialNumber),
    FOREIGN KEY (MechanicID) REFERENCES Mechanic(MechanicID)
);


