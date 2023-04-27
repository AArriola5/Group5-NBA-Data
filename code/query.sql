SET search_path TO groupfive, public;

-- Query 1
-- The number of players are different than the README, because this only counts some players added, not all NBA players
SELECT Team.Name AS "Pacific Team", COUNT(Player.Name) AS "Player Count"
FROM Team JOIN Player ON Team.TeamID=Player.TeamID
GROUP BY Team.Name;

-- Query 2
-- I wanted to do WHERE by Team.Name, however it did not work so I used the ID for the Laker team
SELECT Player.Name AS "Player Name", Player.Number AS "Player Number", Player.Position AS "Position"
FROM Player
WHERE Player.TeamID = 5  AND Player.Experience = 0
GROUP BY Player.Name, Player.Number, Player.Position;

-- Query 3
-- In order to get the year to work, I had to use EXTRACT. YEAR() and CURDATE() did not want to work
SELECT Player.Name AS "Player Name", 2023 - EXTRACT(YEAR FROM Player.Birthday) AS "Age", Team.Name AS "Team"
FROM Player JOIN Team ON Player.TeamID=Team.TeamID
WHERE EXTRACT(YEAR FROM Player.Birthday) >= 2000
GROUP BY Player.Name, Player.Birthday, Team.Name;

-- Query 4
-- I use concat to connect the player.heightfeet and player.heightinches values.
SELECT Player.Name AS "Player Name", Player.Position AS "Position", CONCAT(Player.HeightFeet, '-', Player.HeightInches) AS "Height", Player.Weight AS "Weight", Team.Name AS "Team"
FROM Player JOIN Team ON Player.TeamID=Team.TeamID
WHERE Player.HeightFeet >= 7
GROUP BY Player.Name, Player.Position, "Height", Player.Weight, Team.Name;

-- Query 8
-- Player name, team name, position, height, and weight of all players over 6'3" tall and under 195 lbs
SELECT Name, Position, CONCAT(HeightFeet, '-', HeightInches) AS "Height", Weight
FROM Player
WHERE (HeightFeet > 6 OR (HeightFeet = 6 AND HeightInches >= 3)) AND Weight < 195;

-- Query 9
-- Get Player name, team name, and date of birth for players born in the same year as the Staples Center arena.
SELECT p.Name, t.Name, p.Birthday
FROM Player p
JOIN Team t ON p.teamID = t.teamID
JOIN Arena a on t.arenaID = a.arenaID
WHERE (EXTRACT(YEAR FROM p.Birthday)) = (
    SELECT EXTRACT(YEAR FROM OpeningYear)
    FROM Arena
    WHERE Name = 'Staples Center'
)

-- Query 10
-- Get average age and experience of each team in pacific division
SELECT t.Name, 
    ROUND(AVG(EXTRACT(YEAR FROM age(current_date, p.Birthday))), 2) AS avgAge, 
    ROUND(AVG(p.experience), 2) AS avgExp
FROM Team t
JOIN Player p ON p.teamID = t.teamID
JOIN Division d ON d.DivisionID = t.DivisionID
WHERE d.Name = 'Pacific'
GROUP BY t.Name;
