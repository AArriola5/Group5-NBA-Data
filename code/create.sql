CREATE SCHEMA IF NOT EXISTS groupfive;

SET search_path TO groupfive, public;

-- Creates table for the team divisions
CREATE TABLE Division (
    DivisionID integer,
    Name varchar,
    Conference varchar,
    PRIMARY KEY (DivisionID)
);

-- Creates Location table
CREATE TABLE Location (
    LocationID bigint,
    City varchar,
    State varchar,
    PRIMARY KEY (LocationID)
);

-- Creates Arena Table
CREATE TABLE Arena (
    ArenaID bigint,
    LocationID bigint,
    Name varchar,
    OpeningYear date,
    MaxSeating integer,
    PRIMARY KEY (ArenaID),
    FOREIGN KEY (LocationID) REFERENCES Location(LocationID)
);

-- Creates table of individual teams
CREATE TABLE Team (
    TeamID bigint,
    Name varchar,
    ArenaID bigint,
    PPG decimal(5, 2),
    APG decimal(5, 2),
    RPG decimal(5, 2),
    TPG decimal(5, 2),
    FG_pct decimal(5, 2),
    AT_ratio decimal(5, 2),
    FT_pct decimal(5, 2),
    BSPG decimal(5, 2),
    _3PT_pct decimal(5, 2),
    SPG decimal(5, 2),
    PRIMARY KEY (TeamID),
    FOREIGN KEY (ArenaID) REFERENCES Arena(ArenaID)
);

-- Creates School Table
CREATE TABLE School (
    SchoolID bigint,
    LocationID bigint,
    Name varchar,
    PRIMARY KEY (SchoolID),
    FOREIGN KEY (LocationID) REFERENCES Location(LocationID)
);

-- Creates GM Table
CREATE TABLE Employee (
    EmployeeID bigint,
    SchoolID bigint,
    Role varchar,
    Name varchar,
    TeamID bigint,
    StartYear integer,
    PRIMARY KEY (EmployeeID),
    FOREIGN KEY (SchoolID) REFERENCES School(SchoolID),
    FOREIGN KEY (TeamID) REFERENCES Team(TeamID)
);

-- Creates Player Table
CREATE TABLE Player (
    PlayerID bigint,
    SchoolID bigint,
    TeamID bigint,
    Name varchar,
    Position varchar,
    Birthday date,
    Experience integer,
    Number integer,
    HeightFeet integer,
    HeightInches integer,
    Weight integer,
    PRIMARY KEY (PlayerID),
    FOREIGN KEY (SchoolID) REFERENCES School(SchoolID),
    FOREIGN KEY (TeamID) REFERENCES Team(TeamID)
);