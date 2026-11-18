PRAGMA foreign_keys = ON;

DROP TABLE IF EXISTS SaleItem;
DROP TABLE IF EXISTS BarSale;
DROP TABLE IF EXISTS Product;
DROP TABLE IF EXISTS Ticket;
DROP TABLE IF EXISTS Client;
DROP TABLE IF EXISTS Holder;
DROP TABLE IF EXISTS Shift;
DROP TABLE IF EXISTS Employee;
DROP TABLE IF EXISTS Person;
DROP TABLE IF EXISTS Seat;
DROP TABLE IF EXISTS Session;
DROP TABLE IF EXISTS Auditorium;
DROP TABLE IF EXISTS Play;
DROP TABLE IF EXISTS Genre;


CREATE TABLE Genre(
    GenreID INT NOT NULL,
    Name CHAR(100) NOT NULL UNIQUE,
    PRIMARY KEY(GenreID)

);

CREATE TABLE Play (
    PlayID INT NOT NULL, 
    Name CHAR(100) NOT NULL, 
    Duration INT NOT NULL CHECK (Duration > 0), 
    Rating INT CHECK (Rating >= 0), 
    Synopsis CHAR(1000), 
    DatePremiere DATE, 
    GenreID INT NOT NULL,
    PRIMARY KEY(PlayID),
    FOREIGN KEY(GenreID) 
        REFERENCES Genre
        ON UPDATE CASCADE

);

CREATE TABLE Auditorium(
    AuditoriumID INT NOT NULL, 
    Capacity INT NOT NULL CHECK (Capacity>=0),
    PRIMARY KEY(AuditoriumID)
    
);

CREATE TABLE Session(
    SessionID INT NOT NULL, 
    Timetable TIME NOT NULL, 
    Date DATE NOT NULL, 
    PlayID INT NOT NULL, 
    AuditoriumID INT NOT NULL,
    UNIQUE(Date, Timetable, AuditoriumID),
    PRIMARY KEY(SessionID),
    FOREIGN KEY (PlayID) 
        REFERENCES Play
        ON UPDATE CASCADE,
    FOREIGN KEY (AuditoriumID) 
        REFERENCES Auditorium
        ON UPDATE CASCADE

);

CREATE TABLE Seat(
    SeatID INT NOT NULL, 
    Type CHAR(10) NOT NULL CHECK (Type IN ('Normal', 'Confort', 'First Class')), 
    Accessibility CHAR(10) NOT NULL CHECK (Accessibility IN ('Yes', 'No')),  
    AuditoriumID INT NOT NULL,
    PRIMARY KEY(SeatID),
    FOREIGN KEY(AuditoriumID) 
        REFERENCES Auditorium
        ON UPDATE CASCADE
);

CREATE TABLE Person (
    TaxNumber INT NOT NULL CHECK (TaxNumber BETWEEN 100000000 AND 999999999), 
    Name CHAR(100) NOT NULL, 
    PhoneNum INT NOT NULL CHECK (PhoneNum BETWEEN 100000000 AND 999999999),
    PRIMARY KEY(TaxNumber)

);

CREATE TABLE Employee (
    TaxNumber INT NOT NULL, 
    BirthDate DATE, 
    Role CHAR(10) NOT NULL CHECK (Role IN ('Cashier', 'Barman', 'Cleaner', 'Play Member')),
    PRIMARY KEY(TaxNumber),
    FOREIGN KEY(TaxNumber) 
        REFERENCES Person
        ON UPDATE CASCADE
);

CREATE TABLE Shift(
    ShiftID INT NOT NULL, 
    StartTime TIME NOT NULL, 
    EndTime TIME NOT NULL,
    PRIMARY KEY(ShiftID)
);
CHECK (EndTime > StartTime)

CREATE TABLE Holder(
    TaxNumber INT NOT NULL, 
    ShiftID INT NOT NULL, 
    Day DATE,
    PRIMARY KEY(TaxNumber, Day),
    FOREIGN KEY(TaxNumber) 
        REFERENCES Employee
        ON UPDATE CASCADE,
    FOREIGN KEY(ShiftID) 
        REFERENCES Shift
        ON UPDATE CASCADE
);

CREATE TABLE Client (
    TaxNumber INT NOT NULL,
    PRIMARY KEY(TaxNumber),
    FOREIGN KEY(TaxNumber) 
        REFERENCES Person
        ON UPDATE CASCADE
);

CREATE TABLE Ticket(
    TicketID INT NOT NULL, 
    Price INT NOT NULL (Price >= 0), 
    PaymentMethod CHAR(10) NOT NULL CHECK (PaymentMethod IN ('Cash', 'Card')), 
    SessionID INT NOT NULL, 
    SeatID INT NOT NULL, 
    Seller INT NOT NULL, 
    Buyer INT NOT NULL,
    UNIQUE (SessionID, SeatID),
    PRIMARY KEY(TicketID),
    FOREIGN KEY (SessionID) 
        REFERENCES Session
        ON UPDATE CASCADE,
    FOREIGN KEY(SeatID) 
        REFERENCES Seat
        ON UPDATE CASCADE,
    FOREIGN KEY(Seller) 
        REFERENCES Employee
        ON UPDATE CASCADE,
    FOREIGN KEY(Buyer) 
        REFERENCES Client
        ON UPDATE CASCADE
);

CREATE TABLE Product (
    ProductID INT NOT NULL, 
    Name CHAR(100) NOT NULL, 
    Price INT NOT NULL (Price >= 0), 
    Stock INT,
    PRIMARY KEY(ProductID)
);

CREATE TABLE BarSale (
    BarSaleID INT NOT NULL, 
    Seller INT NOT NULL, 
    Buyer INT NOT NULL,
    PRIMARY KEY(BarSaleID),
    FOREIGN KEY(Seller) 
        REFERENCES Employee
        ON UPDATE CASCADE,
    FOREIGN KEY(Buyer) 
        REFERENCES Client
        ON UPDATE CASCADE
);

CREATE TABLE SaleItem(
    BarSaleID INT NOT NULL, 
    ProductID INT NOT NULL, 
    Quantity INT CHECK (Quantity > 0),
    PRIMARY KEY(BarSaleID, ProductID),
    FOREIGN KEY(BarSaleID) 
        REFERENCES BarSale
        ON UPDATE CASCADE,
    FOREIGN KEY(ProductID) 
        REFERENCES Product
        ON UPDATE CASCADE

);
