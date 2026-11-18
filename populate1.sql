PRAGMA foreign_keys = ON;

-- Genre
INSERT INTO Genre (GenreID, Name) VALUES (1, 'Drama');
INSERT INTO Genre (GenreID, Name) VALUES (2, 'Comedy');
INSERT INTO Genre (GenreID, Name) VALUES (3, 'Musical');
INSERT INTO Genre (GenreID, Name) VALUES (4, 'Thriller');


--Play
INSERT INTO Play (PlayID, Name, Duration, Rating, Synopsis, DatePremiere, GenreID) 
VALUES (1, 'O Auto da Barca do Inferno', 110, 12, 'A classic allegorical play by Gil Vicente depicting souls arriving at the afterlife.', '2026-09-15', 1);

INSERT INTO Play (PlayID, Name, Duration, Rating, Synopsis, DatePremiere, GenreID) 
VALUES (2, 'A Comédia de Enganos', 95, 6, 'A fast-paced comedy revolving around two sets of identical twins separated at birth.', '2026-10-02', 2);

INSERT INTO Play (PlayID, Name, Duration, Rating, Synopsis, DatePremiere, GenreID) 
VALUES (3, 'Os Miseráveis em Concerto', 150, 12, 'A dramatic musical adaptation set in 19th-century France.', '2026-10-20', 3);

INSERT INTO Play (PlayID, Name, Duration, Rating, Synopsis, DatePremiere, GenreID) 
VALUES (4, 'A Ratoeira', 125, 14, 'Guests at a remote guesthouse are snowed in with a murderer among them.', '2026-11-05', 4);

-- Auditorium
INSERT INTO Auditorium (AuditoriumID, Capacity) VALUES (1, 150);
INSERT INTO Auditorium (AuditoriumID, Capacity) VALUES (2, 80);

-- Session
INSERT INTO Session (SessionID, Timetable, Date, PlayID, AuditoriumID) 
VALUES (1, '21:00:00', '2026-11-10', 1, 1);

INSERT INTO Session (SessionID, Timetable, Date, PlayID, AuditoriumID) 
VALUES (2, '18:30:00', '2026-11-12', 2, 2);

INSERT INTO Session (SessionID, Timetable, Date, PlayID, AuditoriumID) 
VALUES (3, '21:30:00', '2026-11-15', 3, 1);

INSERT INTO Session (SessionID, Timetable, Date, PlayID, AuditoriumID) 
VALUES (4, '21:00:00', '2026-11-18', 4, 2);

-- Seat
INSERT INTO Seat (SeatID, Type, Accessibility, AuditoriumID) VALUES (1, 'Normal', 'No', 1);
INSERT INTO Seat (SeatID, Type, Accessibility, AuditoriumID) VALUES (2, 'Confort', 'No', 1);
INSERT INTO Seat (SeatID, Type, Accessibility, AuditoriumID) VALUES (3, 'Normal', 'Yes', 1);
INSERT INTO Seat (SeatID, Type, Accessibility, AuditoriumID) VALUES (4, 'First Class', 'No', 1);
INSERT INTO Seat (SeatID, Type, Accessibility, AuditoriumID) VALUES (5, 'Normal', 'No', 2);
INSERT INTO Seat (SeatID, Type, Accessibility, AuditoriumID) VALUES (6, 'Confort', 'Yes', 2);

-- Person
INSERT INTO Person (TaxNumber, Name, PhoneNum) VALUES (214567890, 'Ana Sofia Martins', 912345678);
INSERT INTO Person (TaxNumber, Name, PhoneNum) VALUES (239876543, 'Bruno Miguel Ferreira', 934567890);
INSERT INTO Person (TaxNumber, Name, PhoneNum) VALUES (256123456, 'Carla Beatriz Rocha', 961234567);
INSERT INTO Person (TaxNumber, Name, PhoneNum) VALUES (278901234, 'Diogo Alexandre Silva', 923456789);
INSERT INTO Person (TaxNumber, Name, PhoneNum) VALUES (201234567, 'Elena Maria Costa', 919876543);
INSERT INTO Person (TaxNumber, Name, PhoneNum) VALUES (245678901, 'Filipe André Sousa', 938765432);
INSERT INTO Person (TaxNumber, Name, PhoneNum) VALUES (267890123, 'Gonçalo Nuno Almeida', 967654321);

-- Employee
INSERT INTO Employee (TaxNumber, BirthDate, Role) VALUES (214567890, '1995-04-12', 'Cashier');
INSERT INTO Employee (TaxNumber, BirthDate, Role) VALUES (239876543, '1998-09-23', 'Barman');
INSERT INTO Employee (TaxNumber, BirthDate, Role) VALUES (256123456, '1988-01-30', 'Cleaner');
INSERT INTO Employee (TaxNumber, BirthDate, Role) VALUES (278901234, '2001-07-14', 'Play Member');

-- Shift
INSERT INTO Shift (ShiftID, StartTime, EndTime) VALUES (1, '14:00:00', '19:00:00');
INSERT INTO Shift (ShiftID, StartTime, EndTime) VALUES (2, '19:00:00', '23:59:00');

-- Holder
INSERT INTO Holder (TaxNumber, ShiftID, Day) VALUES (214567890, 2, '2026-11-10');
INSERT INTO Holder (TaxNumber, ShiftID, Day) VALUES (239876543, 2, '2026-11-10');
INSERT INTO Holder (TaxNumber, ShiftID, Day) VALUES (214567890, 1, '2026-11-12');
INSERT INTO Holder (TaxNumber, ShiftID, Day) VALUES (239876543, 2, '2026-11-15');
INSERT INTO Holder (TaxNumber, ShiftID, Day) VALUES (278901234, 2, '2026-11-18');

-- Client
INSERT INTO Client (TaxNumber) VALUES (201234567);
INSERT INTO Client (TaxNumber) VALUES (245678901);
INSERT INTO Client (TaxNumber) VALUES (267890123);
INSERT INTO Client (TaxNumber) VALUES (256123456);

-- Ticket
INSERT INTO Ticket (TicketID, Price, PaymentMethod, SessionID, SeatID, Seller, Buyer) 
VALUES (1, 12.50, 'Cash', 1, 1, 214567890, 201234567);

INSERT INTO Ticket (TicketID, Price, PaymentMethod, SessionID, SeatID, Seller, Buyer) 
VALUES (2, 20.00, 'Card', 1, 2, 214567890, 245678901);

INSERT INTO Ticket (TicketID, Price, PaymentMethod, SessionID, SeatID, Seller, Buyer) 
VALUES (3, 10.00, 'Cash', 2, 5, 214567890, 267890123);

INSERT INTO Ticket (TicketID, Price, PaymentMethod, SessionID, SeatID, Seller, Buyer) 
VALUES (4, 15.00, 'Card', 3, 3, 214567890, 256123456);

INSERT INTO Ticket (TicketID, Price, PaymentMethod, SessionID, SeatID, Seller, Buyer) 
VALUES (5, 18.00, 'Card', 4, 6, 214567890, 201234567);

-- Product
INSERT INTO Product (ProductID, Name, Price, Stock) VALUES (1, 'Água Mineral 50cl', 1.50, 120);
INSERT INTO Product (ProductID, Name, Price, Stock) VALUES (2, 'Pipocas Doces Médias', 3.50, 60);
INSERT INTO Product (ProductID, Name, Price, Stock) VALUES (3, 'Café Expresso', 1.00, 200);
INSERT INTO Product (ProductID, Name, Price, Stock) VALUES (4, 'Sumo de Laranja Natural', 2.80, 45);

-- BarSale
INSERT INTO BarSale (BarSaleID, Seller, Buyer) VALUES (1, 239876543, 201234567);
INSERT INTO BarSale (BarSaleID, Seller, Buyer) VALUES (2, 239876543, 245678901);
INSERT INTO BarSale (BarSaleID, Seller, Buyer) VALUES (3, 239876543, 267890123);

-- SaleItem
INSERT INTO SaleItem (BarSaleID, ProductID, Quantity) VALUES (1, 1, 2);
INSERT INTO SaleItem (BarSaleID, ProductID, Quantity) VALUES (1, 2, 1);
INSERT INTO SaleItem (BarSaleID, ProductID, Quantity) VALUES (2, 3, 2);
INSERT INTO SaleItem (BarSaleID, ProductID, Quantity) VALUES (3, 4, 1);
INSERT INTO SaleItem (BarSaleID, ProductID, Quantity) VALUES (3, 2, 2);