INSERT INTO Division (DivisionID, Name, Conference)
VALUES
    (1, "Atlantic", "Eastern"),
    (2, "Central", "Eastern"),
    (3, "Southeast", "Eastern"),
    (4, "Northwest", "Western"),
    (5, "Pacific", "Western"),
    (6, "Southwest", "Western");

INSERT INTO Location (LocationID, City, State)
VALUES
    (1, "Sacramento", "California"),
    (2, "Phoenix", "Arizona"),
    (3, "Los Angeles", "California"),
    (4, "San Francisco", "California"),
    (5, "Miami", "Florida"),
    (6, "Princeton", "New Jersey"),
    (7, "Lexington", "Kentucky");

INSERT INTO Arena (ArenaID, LocationID, Name, OpeningYear, MaxSeating)
VALUES
    (1, 1, "Golden 1 Center", 2016-01-01, 17583),
    (2, 2, "Talking Stick Resort Arena", 1992-01-01, 18055),
    (3, 3, "Staples Center", 1999-01-01, 19068),
    (4, 4, "Chase Center", 2019-01-01, 18064),
    (5, 3, "Staples Center", 1999-01-01, 19068);

INSERT INTO Team (TeamID, Name, ArenaID, PPG, APG, RPG, TPG, FG_pct, AT_ratio, FT_pct, BSPG, 3PT_pct, SPG)
VALUES
    (1, "Sacramento Kings", 1, 121.1, 27, 42, 13.7, 49.7, 1.98, 79.4, 3.3, 37.4, 6.8),
    (2, "Phoenix Suns", 2, 113.5, 27, 44, 13.9, 46.8, 1.92, 79.2, 5.1, 37.6, 7.2),
    (3, "Los Angeles Clippers", 3, 112.9,	23,	44,	14.1, 47.3, 1.66, 78.2, 4.4, 37.7, 7.1),
    (4, "Golden State Warriors", 4, 118.5,	30,	44, 16.2, 47.7, 1.82, 79.3, 3.9, 38.2, 7.1),
    (5, "Los Angeles Lakers", 3, 116.5,	25,	46,	14.1, 47.9, 1.78, 77.8, 4.5, 34.1, 6.4);

INSERT INTO School (SchoolID, LocationID, Name)
VALUES
    (1, 6, "Princeton University"),
    (2, 5, "Miami University"),
    (3, 7, "University of Kentucky");

-- insert employees with school
INSERT INTO Employee (EmployeeID, SchoolID, Role, Name, TeamID, StartYear)
VALUES
    (1, 1, "General Manager", "Monte McNair", 1, 2020),
    (2, 2, "General Manager", "James Jones", 2, 2018),
    (3, 2, "General Manager", "Michael Wings", 3, 2017);


-- insert employees without school
INSERT INTO Employee (EmployeeID, Role, Name, TeamID, StartYear)
VALUES
    (4, "Head Coach", "Mike Brown", 1, 2022),
    (5, "Head Coach", "Darvin Ham", 5, 2022),
    (6, "Head Coach", "Monty Williams", 2, 2019);

INSERT INTO Player (PlayerID, SchoolID, TeamID, Name, Position, Birthday, Experience, Number, HeightFeet, HeightInches, Weight)
VALUES
    (1, 2, 5, "Devon Reed", "Center", 1995-06-11, 3, 11, 6, 5, 206),
    (2, 2, 5, "Lonnie Walker IV", "Guard-Forward", 1998-12-14, 4, 4, 6, 4, 204),
    (3, 3, 3, "Brandon Boston Jr.", "Guard", 2001-11-12, 1, 4, 6, 6, 188),
    (4, 3, 1, "De'Aaron Fox", "Guard", 1997-12-20, 5, 5, 6, 3, 185),
    (5, 3, 1, "Malik Monk", "Guard", 1998-02-04, 5, 0, 6, 3, 200);





