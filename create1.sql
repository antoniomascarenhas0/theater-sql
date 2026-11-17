CREATE TABLE Genre(
    GenreID INT, 
    Name CHAR(100),
    PRIMARY KEY(GenreID)

);

CREATE TABLE Play (
    PlayID INT, 
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
    AuditoriumID INT, 
    Capacity INT,
    PRIMARY KEY(AuditoriumID)
    
);

CREATE TABLE Session(
    SessionID INT, 
    Timetable TIME, 
    Date DATE, 
    PlayID INT, 
    AuditoriumID INT,
    PRIMARY KEY(SessionID),
    FOREIGN KEY (PlayID) REFERENCES Play,
    FOREIGN KEY (AuditoriumID) REFERENCES Auditorium

);

CREATE TABLE Seat(
    SeatID INT, 
    Type CHAR(10), 
    Accessibility CHAR(10),  
    AuditoriumID INT,
    PRIMARY KEY(SeatID),
    FOREIGN KEY(AuditoriumID) REFERENCES Auditorium
);

CREATE TABLE Person (
    TaxNumber INT, 
    Name CHAR(100), 
    PhoneNum INT,
    PRIMARY KEY(TaxNumber)

);

CREATE TABLE Employee (
    EmployeeID INT, 
    TaxNumber INT, 
    BirthDate DATE, 
    Role CHAR(10),
    PRIMARY KEY(EmployeeID),
    FOREIGN KEY(TaxNumber) REFERENCES Person
);

CREATE TABLE Holder(
    EmployeeID INT, 
    ShiftID INT, 
    Day DATE,
    PRIMARY KEY(EmployeeID, Day),
    FOREIGN KEY(EmployeeID) REFERENCES Employee,
    FOREIGN KEY(ShiftID) REFERENCES Shift
);

CREATE TABLE Shift(
    ShiftID INT, 
    StartTime TIME, 
    EndTime TIME,
    PRIMARY KEY(ShiftID)
);

CREATE TABLE Client (
    ClientID INT, 
    TaxNumber INT,
    PRIMARY KEY(ClientID),
    FOREIGN KEY(TaxNumber) REFERENCES Person
);

CREATE TABLE Ticket(
    TicketID INT, 
    Price INT, 
    PaymentMethod CHAR(10), 
    SessionID INT, 
    SeatID INT, 
    EmployeeID INT, 
    ClientID INT,
    PRIMARY KEY(TicketID),
    FOREIGN KEY (SessionID) REFERENCES Session,
    FOREIGN KEY(SeatID) REFERENCES Seat,
    FOREIGN KEY(EmployeeID) REFERENCES Employee,
    FOREIGN KEY(ClientID) REFERENCES Client
);

CREATE TABLE Product (
    ProductID INT, 
    Name CHAR(100), 
    Price INT, 
    Stock INT,
    PRIMARY KEY(ProductID)
);

CREATE TABLE BarSale (
    BarSaleID INT, 
    EmployeeID INT, 
    ClientID INT,
    PRIMARY KEY(BarSaleID),
    FOREIGN KEY(EmployeeID) REFERENCES Employee,
    FOREIGN KEY(ClientID) REFERENCES Client
);

CREATE TABLE SaleItem(
    BarSaleID INT, 
    ProductID INT, 
    Quantity INT,
    PRIMARY KEY(BarSaleID),
    FOREIGN KEY(BarSaleID) REFERENCES BarSale,
    FOREIGN KEY(ProductID) REFERENCES Product

);

