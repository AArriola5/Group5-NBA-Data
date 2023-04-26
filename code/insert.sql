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
    (7, "Lexington", "Kentucky"),
    (8, "East Lansing", "Michigan"),
    (9, "Nashville", "Tennessee"),
    (10, "Syracuse", "New York"),
    (11, "Iowa City", "Iowa"),
    (12, "Cincinnati", "Ohio"),
    (13, "Richmond", "Virginia"),
    (14, "Ann Arbor", "Michigan"),
    (15, "Hillside", "New Jersey"),
    (16, "Toledo", "Ohio"),
    (17, "Fayetteville", "Arkansas"),
    (18, "Milwauklee", "Wisconsin"),
    (19, "Memphis", "Tennessee"),
    (20, "Spokane", "Washington"),
    (21, "College Park", "Maryland"),
    (22, "Logan", "Utah"),
    (23, "Tucson", "Arizona"),
    (24, "Croatia", "Croatia"),
    (25, "Durham", "North Carolina"),
    (26, "Austin", "Texas");

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
    (3, 7, "University of Kentucky"),
    (4, 8, "Michigan State University"),
    (5, 9, "Vanderbilt University"),
    (6, 10, "Syracuse University"),
    (7, 11, "University of Iowa"),
    (8, 3, "Pepperdine University"),
    (9, 12, "Princeton High School"),
    (10, 13, "Virginia Commonwealth University"),
    (11, 14, "University of Michigan"),
    (12, 15, "The Patrick School"),
    (13, 16, "University of Toledo"),
    (14, 17, "University of Arkansas"),
    (15, 18, "University of Wisconsin-Milwaukee"),
    (16, 19, "The University of Memphis"),
    (17, 20, "Gonzaga University"),
    (18, 21, "University of Maryland, College Park"),
    (19, 22, "Utah State University"),
    (20, 23, "University of Arizona"),
    (21, 24, "Croatia"),
    (22, 25, "Duke University"),
    (23, 26, "University of Texas at Austin");

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
    (5, 3, 1, "Malik Monk", "Guard", 1998-02-04, 5, 0, 6, 3, 200),
    (6, 4, 5, "Max Christie", "Guard", 2003-02-10, 0, 10, 6, 5, 190),
    (7, 5, 5, "Scotty Pippen Jr.", "Guard", 2000-11-10, 0, 14, 6, 1, 170),
    (8, 6, 5, "Cole Swider", "Forward", 1999-05-08, 0, 20, 6, 9, 220),
    (9, 7, 1, "Keegan Murray", "Forward", 2000-08-19, 0, 13, 6, 8, 225),
    (10, 8, 1, "Kessler Edwards", "Forward", 2000-08-19, 1, 14, 6, 7, 203),
    (11, 9, 2, "Darius Bazley", "Forward", 2000-06-12, 3, 55, 6, 9, 216),
    (12, 3, 3, "Brandon Boston Jr.", "Guard", 2001-11-28, 1, 4, 6, 6, 188),
    (13, 10, 3, "Bones Hyland", "Guard", 2000-09-14, 1, 5, 6, 2, 169),
    (14, 11, 3, "Moussa Diabate", "Forward", 2002-01-21, 0, 25, 6, 10, 210),
    (15, 12, 4, "Jonathan Kuminga", "Forward", 2002-10-06, 4, 0, 6, 7, 225),
    (16, 13, 4, "Ryan Rollins", "Guard", 2002-07-03, 0, 2, 6, 3, 180),
    (17, 14, 4, "Moses Moody", "Guard", 2002-05-31, 1, 4, 6, 5, 211),
    (18, 15, 4, "Patrick Baldwin Jr.", "Forward", 2002-11-18, 0, 7, 6, 9, 220),
    (19, 16, 4, "Lester Quinones", "Guard", 2000-11-16, 0, 25, 6, 4, 208),
    (20, 17, 1, "Domantas Sabonis", "Forward-Center", 1996-05-03, 6, 10, 7, 1, 240),
    (21, 18, 1, "Alex Len", "Center", 1993-06-16, 9, 25, 7, 2, 250),
    (22, 19, 1, "Neemias Queta", "Center", 1999-07-13, 1, 88, 7, 0, 248),
    (23, 20, 2, "Deandre Ayton", "Center", 1998-07-23, 4, 22, 7, 0, 250),
    (24, 21, 3, "Ivica Zubac", "Center", 1997-03-18, 6, 40, 7, 0, 240),
    (25, 22, 3, "Mason Plumlee", "Forward-Center", 1990-03-05, 9, 44, 7, 0, 254),
    (26, 23, 5, "Mo Bamba", "Guard", 1998-05-12, 4, 12, 7, 0, 231);
