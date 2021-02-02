-- 1. List the names of all NFL teams'
select * from teams;
List of 32 teams.

-- 2. List the stadium name and head coach of all NFC teams
select stadium, head_coach from teams;
List of 32 stadiums and head coaches.

-- 3. List the head coaches of the AFC South
select head_coach from teams where conference = 'AFC';
List of 16 coaches.
-- 4. The total number of players in the NFL
select count(*) from players;
1532

-- "COMMIT: NFL - queried some NFL stuff"


-- 5. The team names and head coaches of the NFC North and AFC East
select name, head_coach from teams 
	where division = 'East' and conference = 'AFC'
	or
	division = 'North' and conference = 'NFC';
"Buffalo Bills"	"Doug Marrone"
"Miami Dolphins"	"Joe Philbin"
"New England Patriots"	"Bill Belichick"
"New York Jets"	"Rex Ryan"
"Chicago Bears"	"Marc Trestman"
"Detroit Lions"	"Jim Caldwell"
"Green Bay Packers"	"Mike McCarthy"
"Minnesota Vikings"	"Mike Zimmer"

-- 6. The 50 players with the highest salaries
select name, salary from players order by salary desc limit 50;

-- 7. The average salary of all NFL players
select avg(salary)::numeric(10,2) from players;
1579692.54
-- 8. The names and positions of players with a salary above 10_000_000
SELECT name, position FROM players where salary > 10000000;
List of 21 positions and player names

-- "COMMIT: NFL - wow there's a lot of nfl data"

-- HUNGRY FOR MORE!!!!!!!

-- 9. The player with the highest salary in the NFL

-- 10. The name and position of the first 100 players with the lowest salaries

-- 11. The average salary for a DE in the nfl

-- 12. The names of all the players on the Buffalo Bills

-- 13. The total salary of all players on the New York Giants

-- 14. The player with the lowest salary on the Green Bay Packers
