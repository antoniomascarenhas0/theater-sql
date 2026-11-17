CREATE TABLE Genre(
    GenreID int, 
    Name char(100),
    PRIMARY KEY(GenreID)

);

CREATE TABLE Play (
    PlayID int, 
    Name char(100), 
    Duration int, 
    Rating int, 
    Synopsis char(1000), 
    DatePremiere DATE, 
    GenreID int,
    PRIMARY KEY(PlayID)
    FOREIGN KEY(GenreID) REFERENCES Genre

);

CREATE TABLE Auditorium(
    AuditoriumID int, 
    Capacity int,
    PRIMARY KEY(AuditoriumID)
    
);
