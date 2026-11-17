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
    FOREIGN KEY(GenreID) REFERENCES Genre

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
    FOREIGN KEY (PlayID) REFERENCES Play,
    FOREIGN KEY (AuditoriumID) REFERENCES Auditorium

);

CREATE TABLE Seat(
    SeatID INT NOT NULL, 
    Type CHAR(10), 
    Accessibility CHAR(10),  
    AuditoriumID INT NOT NULL,
    PRIMARY KEY(SeatID),
    FOREIGN KEY(AuditoriumID) REFERENCES Auditorium
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
    FOREIGN KEY(TaxNumber) REFERENCES Person
);

CREATE TABLE Holder(
    TaxNumber INT NOT NULL, 
    ShiftID INT NOT NULL, 
    Day DATE,
    PRIMARY KEY(TaxNumber, Day),
    FOREIGN KEY(TaxNumber) REFERENCES Employee,
    FOREIGN KEY(ShiftID) REFERENCES Shift
);

CREATE TABLE Shift(
    ShiftID INT NOT NULL, 
    StartTime TIME, 
    EndTime TIME,
    PRIMARY KEY(ShiftID)
);

CREATE TABLE Client ( 
    TaxNumber INT NOT NULL,
    NumTickets INT NOT NULL,
    PRIMARY KEY(TaxNumber),
    FOREIGN KEY(TaxNumber) REFERENCES Person
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
    FOREIGN KEY (SessionID) REFERENCES Session,
    FOREIGN KEY(SeatID) REFERENCES Seat,
    FOREIGN KEY(Seller) REFERENCES Employee,
    FOREIGN KEY(Buyer) REFERENCES Client
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
    TotalPrice INT NOT NULL,
    PRIMARY KEY(BarSaleID),
    FOREIGN KEY(Seller) REFERENCES Employee,
    FOREIGN KEY(Buyer) REFERENCES Client
);

CREATE TABLE SaleItem(
    BarSaleID INT NOT NULL, 
    ProductID INT NOT NULL, 
    Quantity INT,
    PRIMARY KEY(BarSaleID),
    FOREIGN KEY(BarSaleID) REFERENCES BarSale,
    FOREIGN KEY(ProductID) REFERENCES Product

);
