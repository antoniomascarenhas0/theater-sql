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
    EmployeeID INT NOT NULL, 
    TaxNumber INT NOT NULL, 
    BirthDate DATE, 
    Role CHAR(10),
    PRIMARY KEY(EmployeeID),
    FOREIGN KEY(TaxNumber) 
        REFERENCES Person
        ON UPDATE CASCADE
);

CREATE TABLE Holder(
    EmployeeID INT NOT NULL, 
    ShiftID INT NOT NULL, 
    Day DATE,
    PRIMARY KEY(EmployeeID, Day),
    FOREIGN KEY(EmployeeID) 
        REFERENCES Employee
        ON UPDATE CASCADE,
    FOREIGN KEY(ShiftID) 
        REFERENCES Shift
        ON UPDATE CASCADE
);

CREATE TABLE Shift(
    ShiftID INT NOT NULL, 
    StartTime TIME, 
    EndTime TIME,
    PRIMARY KEY(ShiftID)
);

CREATE TABLE Client (
    ClientID INT NOT NULL, 
    TaxNumber INT NOT NULL,
    PRIMARY KEY(ClientID),
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
    EmployeeID INT NOT NULL, 
    ClientID INT NOT NULL,
    PRIMARY KEY(TicketID),
    FOREIGN KEY (SessionID) 
        REFERENCES Session
        ON UPDATE CASCADE,
    FOREIGN KEY(SeatID) 
        REFERENCES Seat
        ON UPDATE CASCADE,
    FOREIGN KEY(EmployeeID) 
        REFERENCES Employee
        ON UPDATE CASCADE,
    FOREIGN KEY(ClientID) 
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
    EmployeeID INT NOT NULL, 
    ClientID INT NOT NULL,
    PRIMARY KEY(BarSaleID),
    FOREIGN KEY(EmployeeID) 
        REFERENCES Employee
        ON UPDATE CASCADE,
    FOREIGN KEY(ClientID) 
        REFERENCES Client
        ON UPDATE CASCADE
);

CREATE TABLE SaleItem(
    BarSaleID INT NOT NULL, 
    ProductID INT NOT NULL, 
    Quantity INT,
    PRIMARY KEY(BarSaleID),
    FOREIGN KEY(BarSaleID) 
        REFERENCES BarSale
        ON UPDATE CASCADE,
    FOREIGN KEY(ProductID) 
        REFERENCES Product
        ON UPDATE CASCADE

);
