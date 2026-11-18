PRAGMA foreign_keys = ON;

-- Genre
INSERT INTO Genre (GenreID, Name) VALUES (1, 'Drama');
INSERT INTO Genre (GenreID, Name) VALUES (2, 'Comedy');
INSERT INTO Genre (GenreID, Name) VALUES (3, 'Musical');
INSERT INTO Genre (GenreID, Name) VALUES (4, 'Thriller');
INSERT INTO Genre (GenreID, Name) VALUES (5, 'Tragedy');
INSERT INTO Genre (GenreID, Name) VALUES (6, 'Stand-Up');

--Play
INSERT INTO Play (PlayID, Name, Duration, Rating, Synopsis, DatePremiere, GenreID) 
VALUES (1, 'O Auto da Barca do Inferno', 110, 12, 'A classic allegorical play by Gil Vicente depicting souls arriving at the afterlife.', '2026-09-15', 1);

INSERT INTO Play (PlayID, Name, Duration, Rating, Synopsis, DatePremiere, GenreID) 
VALUES (2, 'A Comédia de Enganos', 95, 6, 'A fast-paced comedy revolving around two sets of identical twins separated at birth.', '2026-10-02', 2);

INSERT INTO Play (PlayID, Name, Duration, Rating, Synopsis, DatePremiere, GenreID) 
VALUES (3, 'Os Miseráveis em Concerto', 150, 12, 'A dramatic musical adaptation set in 19th-century France.', '2026-10-20', 3);

INSERT INTO Play (PlayID, Name, Duration, Rating, Synopsis, DatePremiere, GenreID) 
VALUES (4, 'A Ratoeira', 125, 14, 'Guests at a remote guesthouse are snowed in with a murderer among them.', '2026-11-05', 4);

INSERT INTO Play (PlayID, Name, Duration, Rating, Synopsis, DatePremiere, GenreID) 
VALUES (5, 'Hamlet', 165, 14, 'Prince Hamlet seeks revenge against his uncle Claudius for murdering his father.', '2026-08-20', 5);

INSERT INTO Play (PlayID, Name, Duration, Rating, Synopsis, DatePremiere, GenreID) 
VALUES(6, 'Noite de Improviso no Porto', 80, 16, NULL, '2026-11-01', 6);

INSERT INTO Play (PlayID, Name, Duration, Rating, Synopsis, DatePremiere, GenreID) 
VALUES(7, 'Frei Luís de Sousa', 130, 12, 'A Portuguese Romantic tragedy exploring fate, identity, and family honor.', '2026-12-01', 5);

-- Auditorium
INSERT INTO Auditorium (AuditoriumID, Capacity) VALUES (1, 150);
INSERT INTO Auditorium (AuditoriumID, Capacity) VALUES (2, 80);
INSERT INTO Auditorium (AuditoriumID, Capacity) VALUES (3, 45);

-- Session
INSERT INTO Session (SessionID, Timetable, Date, PlayID, AuditoriumID) 
VALUES (1, '21:00:00', '2026-11-10', 1, 1);

INSERT INTO Session (SessionID, Timetable, Date, PlayID, AuditoriumID) 
VALUES (2, '18:30:00', '2026-11-12', 2, 2);

INSERT INTO Session (SessionID, Timetable, Date, PlayID, AuditoriumID) 
VALUES (3, '21:30:00', '2026-11-15', 3, 1);

INSERT INTO Session (SessionID, Timetable, Date, PlayID, AuditoriumID) 
VALUES (4, '21:00:00', '2026-11-18', 4, 2);

INSERT INTO Session (SessionID, Timetable, Date, PlayID, AuditoriumID) 
VALUES (5, '21:00:00', '2026-11-18', 4, 2);

INSERT INTO Session (SessionID, Timetable, Date, PlayID, AuditoriumID) 
VALUES (6, '22:00:00', '2026-11-20', 6, 3);

INSERT INTO Session (SessionID, Timetable, Date, PlayID, AuditoriumID) 
VALUES (7, '20:30:00', '2026-11-22', 5, 1);

INSERT INTO Session (SessionID, Timetable, Date, PlayID, AuditoriumID) 
VALUES (8, '21:30:00', '2026-11-25', 3, 1);

INSERT INTO Session (SessionID, Timetable, Date, PlayID, AuditoriumID) 
VALUES (9, '19:00:00', '2026-11-28', 2, 3);

-- Seat

INSERT INTO Seat (SeatID, Type, Accessibility, AuditoriumID) VALUES (1, 'Normal', 'No', 1);
INSERT INTO Seat (SeatID, Type, Accessibility, AuditoriumID) VALUES (2, 'Normal', 'No', 1);
INSERT INTO Seat (SeatID, Type, Accessibility, AuditoriumID) VALUES (3, 'Normal', 'Yes', 1);
INSERT INTO Seat (SeatID, Type, Accessibility, AuditoriumID) VALUES (4, 'Normal', 'Yes', 1);
INSERT INTO Seat (SeatID, Type, Accessibility, AuditoriumID) VALUES (5, 'Confort', 'No', 1);
INSERT INTO Seat (SeatID, Type, Accessibility, AuditoriumID) VALUES (6, 'Confort', 'No', 1);
INSERT INTO Seat (SeatID, Type, Accessibility, AuditoriumID) VALUES (7, 'Confort', 'Yes', 1);
INSERT INTO Seat (SeatID, Type, Accessibility, AuditoriumID) VALUES (8, 'First Class', 'No', 1);
INSERT INTO Seat (SeatID, Type, Accessibility, AuditoriumID) VALUES (9, 'First Class', 'No', 1);
INSERT INTO Seat (SeatID, Type, Accessibility, AuditoriumID) VALUES (10, 'First Class', 'Yes', 1);

INSERT INTO Seat (SeatID, Type, Accessibility, AuditoriumID) VALUES (1, 'Normal', 'No', 2);
INSERT INTO Seat (SeatID, Type, Accessibility, AuditoriumID) VALUES (2, 'Normal', 'No', 2);
INSERT INTO Seat (SeatID, Type, Accessibility, AuditoriumID) VALUES (3, 'Normal', 'Yes', 2);
INSERT INTO Seat (SeatID, Type, Accessibility, AuditoriumID) VALUES (4, 'Confort', 'No', 2);
INSERT INTO Seat (SeatID, Type, Accessibility, AuditoriumID) VALUES (5, 'Confort', 'Yes', 2);
INSERT INTO Seat (SeatID, Type, Accessibility, AuditoriumID) VALUES (6, 'First Class', 'No', 2);
INSERT INTO Seat (SeatID, Type, Accessibility, AuditoriumID) VALUES (7, 'First Class', 'No', 2);
INSERT INTO Seat (SeatID, Type, Accessibility, AuditoriumID) VALUES (8, 'First Class', 'Yes', 2);

INSERT INTO Seat (SeatID, Type, Accessibility, AuditoriumID) VALUES (1, 'Normal', 'No', 3),;
INSERT INTO Seat (SeatID, Type, Accessibility, AuditoriumID) VALUES (2, 'Normal', 'Yes', 3);
INSERT INTO Seat (SeatID, Type, Accessibility, AuditoriumID) VALUES (3, 'Confort', 'No', 3);
INSERT INTO Seat (SeatID, Type, Accessibility, AuditoriumID) VALUES (4, 'Confort', 'No', 3);
INSERT INTO Seat (SeatID, Type, Accessibility, AuditoriumID) VALUES (5, 'First Class', 'No', 3);
INSERT INTO Seat (SeatID, Type, Accessibility, AuditoriumID) VALUES (6, 'First Class', 'Yes', 3);

-- Person
INSERT INTO Person (TaxNumber, Name, PhoneNum) VALUES (214567890, 'Ana Sofia Martins', 912345678);
INSERT INTO Person (TaxNumber, Name, PhoneNum) VALUES (239876543, 'Bruno Miguel Ferreira', 934567890);
INSERT INTO Person (TaxNumber, Name, PhoneNum) VALUES (256123456, 'Carla Beatriz Rocha', 961234567);
INSERT INTO Person (TaxNumber, Name, PhoneNum) VALUES (278901234, 'Diogo Alexandre Silva', 923456789);
INSERT INTO Person (TaxNumber, Name, PhoneNum) VALUES (281234567, 'Eduardo Manuel Tavares', 915678901);
INSERT INTO Person (TaxNumber, Name, PhoneNum) VALUES (293456789, 'Filipa Leonor Cardoso', 936789012);
INSERT INTO Person (TaxNumber, Name, PhoneNum) VALUES (201234567, 'Elena Maria Costa', 919876543);
INSERT INTO Person (TaxNumber, Name, PhoneNum) VALUES (245678901, 'Filipe André Sousa', 938765432);
INSERT INTO Person (TaxNumber, Name, PhoneNum) VALUES (267890123, 'Gonçalo Nuno Almeida', 967654321);
INSERT INTO Person (TaxNumber, Name, PhoneNum) VALUES (219876543, 'Helena Isabel Ribeiro', 914321098);
INSERT INTO Person (TaxNumber, Name, PhoneNum) VALUES (223456789, 'Inês Catarina Pinto', 935432109);
INSERT INTO Person (TaxNumber, Name, PhoneNum) VALUES (234567891, 'João Pedro Oliveira', 968765432);
INSERT INTO Person (TaxNumber, Name, PhoneNum) VALUES (241234568, 'Kátia Vanessa Moreira', 927654321);
INSERT INTO Person (TaxNumber, Name, PhoneNum) VALUES (252345679, 'Luís Filipe Pereira', 918765432);
INSERT INTO Person (TaxNumber, Name, PhoneNum) VALUES (263456780, 'Mariana Clara Teixeira', 939876543);
INSERT INTO Person (TaxNumber, Name, PhoneNum) VALUES (274567891, 'Nuno Rafael Marques', 960987654);

-- Employee
INSERT INTO Employee (TaxNumber, BirthDate, Role) VALUES (214567890, '1995-04-12', 'Cashier');
INSERT INTO Employee (TaxNumber, BirthDate, Role) VALUES (281234567, '1997-11-08', 'Cashier');
INSERT INTO Employee (TaxNumber, BirthDate, Role) VALUES (239876543, '1998-09-23', 'Barman');
INSERT INTO Employee (TaxNumber, BirthDate, Role) VALUES (293456789, '1993-02-17', 'Barman');
INSERT INTO Employee (TaxNumber, BirthDate, Role) VALUES (256123456, '1988-01-30', 'Play Member');
INSERT INTO Employee (TaxNumber, BirthDate, Role) VALUES (278901234, '2001-07-14', 'Cleaner');

-- Shift
INSERT INTO Shift (ShiftID, StartTime, EndTime) VALUES (1, '10:00:00', '15:00:00');
INSERT INTO Shift (ShiftID, StartTime, EndTime) VALUES (2, '15:00:00', '20:00:00');
INSERT INTO Shift (ShiftID, StartTime, EndTime) VALUES (3, '19:30:00', '23:59:00');

-- Holder
INSERT INTO Holder (TaxNumber, ShiftID, Day) VALUES (214567890, 3, '2026-11-10');
INSERT INTO Holder (TaxNumber, ShiftID, Day) VALUES (239876543, 3, '2026-11-10');
INSERT INTO Holder (TaxNumber, ShiftID, Day) VALUES (256123456, 3, '2026-11-10');
INSERT INTO Holder (TaxNumber, ShiftID, Day) VALUES (281234567, 2, '2026-11-11');
INSERT INTO Holder (TaxNumber, ShiftID, Day) VALUES (293456789, 2, '2026-11-11');
INSERT INTO Holder (TaxNumber, ShiftID, Day) VALUES (214567890, 2, '2026-11-12');
INSERT INTO Holder (TaxNumber, ShiftID, Day) VALUES (239876543, 3, '2026-11-15');
INSERT INTO Holder (TaxNumber, ShiftID, Day) VALUES (281234567, 3, '2026-11-15');
INSERT INTO Holder (TaxNumber, ShiftID, Day) VALUES (214567890, 3, '2026-11-18');
INSERT INTO Holder (TaxNumber, ShiftID, Day) VALUES (278901234, 1, '2026-11-19');
INSERT INTO Holder (TaxNumber, ShiftID, Day) VALUES (281234567, 3, '2026-11-20');
INSERT INTO Holder (TaxNumber, ShiftID, Day) VALUES (293456789, 3, '2026-11-20');
INSERT INTO Holder (TaxNumber, ShiftID, Day) VALUES (214567890, 3, '2026-11-22');
INSERT INTO Holder (TaxNumber, ShiftID, Day) VALUES (239876543, 3, '2026-11-25');

-- Client
INSERT INTO Client (TaxNumber) VALUES (201234567);
INSERT INTO Client (TaxNumber) VALUES (245678901);
INSERT INTO Client (TaxNumber) VALUES (267890123);
INSERT INTO Client (TaxNumber) VALUES (256123456);
INSERT INTO Client (TaxNumber) VALUES (219876543);
INSERT INTO Client (TaxNumber) VALUES (223456789),
INSERT INTO Client (TaxNumber) VALUES (234567891);
INSERT INTO Client (TaxNumber) VALUES (241234568);
INSERT INTO Client (TaxNumber) VALUES (252345679);
INSERT INTO Client (TaxNumber) VALUES (263456780);
INSERT INTO Client (TaxNumber) VALUES (274567891);
INSERT INTO Client (TaxNumber) VALUES (278901234);

-- Ticket
INSERT INTO Ticket (TicketID, Price, PaymentMethod, SessionID, SeatID, Seller, Buyer) 
VALUES (1, 12, 'Card', 1, 1, 214567890, 201234567);
    
INSERT INTO Ticket (TicketID, Price, PaymentMethod, SessionID, SeatID, Seller, Buyer) 
VALUES (2, 12, 'Card', 1, 2, 214567890, 201234567);

INSERT INTO Ticket (TicketID, Price, PaymentMethod, SessionID, SeatID, Seller, Buyer) 
VALUES (3, 18, 'Cash', 1, 5, 214567890, 245678901);

INSERT INTO Ticket (TicketID, Price, PaymentMethod, SessionID, SeatID, Seller, Buyer) 
VALUES (4, 25, 'Card', 1, 8, 214567890, 267890123);

INSERT INTO Ticket (TicketID, Price, PaymentMethod, SessionID, SeatID, Seller, Buyer) 
VALUES (5, 25, 'Card', 1, 9, 214567890, 219876543);
    
INSERT INTO Ticket (TicketID, Price, PaymentMethod, SessionID, SeatID, Seller, Buyer) 
VALUES (6, 10, 'Cash', 2, 3, 281234567, 223456789);
    
INSERT INTO Ticket (TicketID, Price, PaymentMethod, SessionID, SeatID, Seller, Buyer) 
VALUES (7, 15, 'Card', 2, 6, 281234567, 234567891);

INSERT INTO Ticket (TicketID, Price, PaymentMethod, SessionID, SeatID, Seller, Buyer) 
VALUES (8, 10, 'Cash', 3, 11, 214567890, 241234568);

INSERT INTO Ticket (TicketID, Price, PaymentMethod, SessionID, SeatID, Seller, Buyer) 
VALUES (9, 14, 'Card', 3, 14, 214567890, 252345679);
    
INSERT INTO Ticket (TicketID, Price, PaymentMethod, SessionID, SeatID, Seller, Buyer) 
VALUES (10, 20, 'Card', 3, 16, 214567890, 263456780);

INSERT INTO Ticket (TicketID, Price, PaymentMethod, SessionID, SeatID, Seller, Buyer) 
VALUES (11, 15, 'Card', 4, 4, 281234567, 256123456);

INSERT INTO Ticket (TicketID, Price, PaymentMethod, SessionID, SeatID, Seller, Buyer) 
VALUES (12, 22, 'Card', 4, 7, 281234567, 274567891);

INSERT INTO Ticket (TicketID, Price, PaymentMethod, SessionID, SeatID, Seller, Buyer) 
VALUES (13, 30, 'Cash', 4, 10, 281234567, 201234567);

INSERT INTO Ticket (TicketID, Price, PaymentMethod, SessionID, SeatID, Seller, Buyer) 
VALUES (14, 12, 'Cash', 5, 12, 214567890, 245678901);

INSERT INTO Ticket (TicketID, Price, PaymentMethod, SessionID, SeatID, Seller, Buyer) 
VALUES (15, 18, 'Card', 5, 17, 214567890, 219876543);

INSERT INTO Ticket (TicketID, Price, PaymentMethod, SessionID, SeatID, Seller, Buyer) 
VALUES (16, 10, 'Cash', 6, 19, 281234567, 278901234);

INSERT INTO Ticket (TicketID, Price, PaymentMethod, SessionID, SeatID, Seller, Buyer) 
VALUES (17, 15, 'Card', 6, 21, 281234567, 223456789);

INSERT INTO Ticket (TicketID, Price, PaymentMethod, SessionID, SeatID, Seller, Buyer) 
VALUES (18, 20, 'Card', 7, 8, 214567890, 234567891);

-- Product
INSERT INTO Product (ProductID, Name, Price, Stock) VALUES (1, 'Água Mineral 50cl', 1.50, 120);
INSERT INTO Product (ProductID, Name, Price, Stock) VALUES (2, 'Pipocas Doces Médias', 3.50, 60);
INSERT INTO Product (ProductID, Name, Price, Stock) VALUES (3, 'Café Expresso', 1.00, 200);
INSERT INTO Product (ProductID, Name, Price, Stock) VALUES (4, 'Sumo de Laranja Natural', 2.80, 45);
INSERT INTO Product (ProductID, Name, Price, Stock) VALUES (5, 'Refrigerante Cola 33cl', 3, 85);
INSERT INTO Product (ProductID, Name, Price, Stock) VALUES (6, 'Chá Gelado Limão 33cl', 3, 70);
INSERT INTO Product (ProductID, Name, Price, Stock) VALUES (7, 'Bombons de Chocolate', 5, 0);
INSERT INTO Product (ProductID, Name, Price, Stock) VALUES (8, 'Sandes Mista', 4, 25);

-- BarSale
INSERT INTO BarSale (BarSaleID, Seller, Buyer) VALUES (1, 239876543, 201234567);
INSERT INTO BarSale (BarSaleID, Seller, Buyer) VALUES (2, 239876543, 245678901);
INSERT INTO BarSale (BarSaleID, Seller, Buyer) VALUES (3, 293456789, 267890123);
    
INSERT INTO BarSale (BarSaleID, Seller, Buyer) VALUES (4, 293456789, 219876543);

INSERT INTO BarSale (BarSaleID, Seller, Buyer) VALUES (5, 239876543, 256123456);

INSERT INTO BarSale (BarSaleID, Seller, Buyer) VALUES (6, 293456789, 223456789);

INSERT INTO BarSale (BarSaleID, Seller, Buyer) VALUES (7, 239876543, 274567891);

INSERT INTO BarSale (BarSaleID, Seller, Buyer) VALUES (8, 293456789, 234567891);

-- SaleItem
INSERT INTO SaleItem (BarSaleID, ProductID, Quantity) VALUES (1, 1, 2);
INSERT INTO SaleItem (BarSaleID, ProductID, Quantity) VALUES (1, 2, 1);
INSERT INTO SaleItem (BarSaleID, ProductID, Quantity) VALUES (2, 3, 2);
INSERT INTO SaleItem (BarSaleID, ProductID, Quantity) VALUES (3, 4, 1);
INSERT INTO SaleItem (BarSaleID, ProductID, Quantity) VALUES (3, 2, 2);

INSERT INTO SaleItem (BarSaleID, ProductID, Quantity) VALUES (4, 5, 2);
INSERT INTO SaleItem (BarSaleID, ProductID, Quantity) VALUES (4, 6, 1);
INSERT INTO SaleItem (BarSaleID, ProductID, Quantity) VALUES (4, 7, 1);
INSERT INTO SaleItem (BarSaleID, ProductID, Quantity) VALUES (5, 3, 1);
INSERT INTO SaleItem (BarSaleID, ProductID, Quantity) VALUES (5, 1, 1);
INSERT INTO SaleItem (BarSaleID, ProductID, Quantity) VALUES (6, 2, 3);
INSERT INTO SaleItem (BarSaleID, ProductID, Quantity) VALUES (6, 6, 2);
INSERT INTO SaleItem (BarSaleID, ProductID, Quantity) VALUES (7, 4, 2);
INSERT INTO SaleItem (BarSaleID, ProductID, Quantity) VALUES (8, 1, 2);
INSERT INTO SaleItem (BarSaleID, ProductID, Quantity) VALUES (8, 5, 2);