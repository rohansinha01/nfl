-- Queries
-- Some queries may require more than one command (i.e. you may need to get information about a team before you can complete a query for players). Test each command in PSQL to make sure it is correct.

-- List the names of all NFL teams
SELECT * FROM teams;
-- List the stadium name and head coach of all NFC teams
SELECT head_coach, stadium FROM teams;
-- List the head coaches of the AFC South
SELECT head_coach FROM teams WHERE division = 'South' AND conference='AFC';
-- The total number of players in the NFL
SELECT COUNT(players) FROM players

-- The team names and head coaches of the NFC North and AFC East
SELECT head_coach, name FROM teams WHERE division = 'North' AND conference = 'NFC' OR division = 'East' AND conference = 'AFC';
-- The 50 players with the highest salaries
SELECT players FROM players ORDER BY salary DESC limit 50
-- The average salary of all NFL players
SELECT avg(salary) FROM players;
-- The names and positions of players with a salary above 10_000_000
SELECT players, position FROM players WHERE salary > 10000000;
-- The player with the highest salary in the NFL
SELECT players FROM players ORDER BY salary DESC Limit 1;
-- The name and position of the first 100 players with the lowest salaries
SELECT players FROM players ORDER BY salary ASC limit 100;
-- The average salary for a DE in the nfl
SELECT avg(salary) FROM players WHERE position = 'DE';