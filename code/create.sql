CREATE SCHEMA IF NOT EXISTS groupfive;

SET search_path TO groupfive, public;

-- Creates table for the team divisions
CREATE TABLE Division (
    DivisionID integer NOT NULL,
    Name varchar,
    Conference varchar,
    PRIMARY KEY (DivisionID)
);

-- Creates Location table
CREATE TABLE Location (
    LocationID bigint NOT NULL,
    City varchar,
    State varchar,
    PRIMARY KEY (LocationID)
);

-- Creates Arena Table
CREATE TABLE Arena (
    ArenaID bigint NOT NULL,
    LocationID bigint,
    Name varchar,
    OpeningYear year,
    MaxSeating integer,
    PRIMARY KEY (ArenaID),
    FOREIGN KEY (LocationID) REFERENCES Location(LocationID)
);

-- Creates table of individual teams
CREATE TABLE Team (
    TeamID bigint NOT NULL,
    Division varchar,
    ArenaName varchar,
    PointPerGame decimal (10,2),
    AssistsPerGame integer,
    ReboundsPerGame integer,
    TurnoversPerGame decimal (10,2),
    FieldGoalPercent decimal (10,2),
    AssistTurnoverRatio decimal (10,2),
    FreeThrowPercent decimal (10,2),
    BlockedShotsPerGame decimal (10,2),
    ThreePointPercent decimal (10,2),
    StealsPerGame decimal (10,2),
    PRIMARY KEY (TeamID),
    FOREIGN KEY (ArenaName) REFERENCES Arena(Name)
);

-- Creates School Table
CREATE TABLE School (
    SchoolID bigint NOT NULL,
    LocationID bigint,
    Name varchar,
    PRIMARY KEY (SchoolID),
    FOREIGN KEY (LocationID) REFERENCES Location(LocationID)
);

-- Creates GM Table
CREATE TABLE Employee (
    EmployeeID bigint NOT NULL,
    SchoolID bigint,
    TeamID bigint,
    Role varchar,
    Name varchar,
    Team varchar,
    YearsHired integer,
    PRIMARY KEY (EmployeeID),
    FOREIGN KEY (SchoolID) REFERENCES School(SchoolID)
);

-- Creates Player Table
CREATE TABLE Player (
    PlayerID bigint NOT NULL,
    SchoolID bigint,
    TeamID bigint,
    Name varchar,
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
