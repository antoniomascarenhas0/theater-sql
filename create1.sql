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
    Name CHAR(100),
    PRIMARY KEY(GenreID)

);

CREATE TABLE Play (
    PlayID INT NOT NULL, 
    Name CHAR(100), 
    Duration INT, 
    Rating INT, 
    Synopsis CHAR(1000), 
    DatePremiere DATE, 
    GenreID INT,
    PRIMARY KEY(PlayID),
    FOREIGN KEY(GenreID) 
        REFERENCES Genre
        ON UPDATE CASCADE

);

CREATE TABLE Auditorium(
    AuditoriumID INT NOT NULL, 
    Capacity INT NOT NULL,
    PRIMARY KEY(AuditoriumID)
    
);

CREATE TABLE Session(
    SessionID INT NOT NULL, 
    Timetable TIME, 
    Date DATE, 
    PlayID INT NOT NULL, 
    AuditoriumID INT NOT NULL,
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
    Type CHAR(10), 
    Accessibility CHAR(10),  
    AuditoriumID INT NOT NULL,
    PRIMARY KEY(SeatID),
    FOREIGN KEY(AuditoriumID) 
        REFERENCES Auditorium
        ON UPDATE CASCADE
);

CREATE TABLE Person (
    TaxNumber INT NOT NULL, 
    Name CHAR(100), 
    PhoneNum INT,
    PRIMARY KEY(TaxNumber)

);

CREATE TABLE Employee (
    TaxNumber INT NOT NULL, 
    BirthDate DATE, 
    Role CHAR(10),
    PRIMARY KEY(TaxNumber),
    FOREIGN KEY(TaxNumber) 
        REFERENCES Person
        ON UPDATE CASCADE
);

CREATE TABLE Shift(
    ShiftID INT NOT NULL, 
    StartTime TIME, 
    EndTime TIME,
    PRIMARY KEY(ShiftID)
);

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
    Price INT, 
    PaymentMethod CHAR(10), 
    SessionID INT NOT NULL, 
    SeatID INT NOT NULL, 
    Seller INT NOT NULL, 
    Buyer INT NOT NULL,
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
    Name CHAR(100), 
    Price INT, 
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
    Quantity INT,
    PRIMARY KEY(BarSaleID, ProductID),
    FOREIGN KEY(BarSaleID) 
        REFERENCES BarSale
        ON UPDATE CASCADE,
    FOREIGN KEY(ProductID) 
        REFERENCES Product
        ON UPDATE CASCADE

);
