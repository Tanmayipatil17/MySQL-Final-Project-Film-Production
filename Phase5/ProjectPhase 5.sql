-- 100 SQL Queries for Film Production Database

-- 1. -- CREATE TABLE: FilmActors (DDL)
CREATE TABLE FilmActors (
  FilmID INT,
  ActorID INT,
  RoleName VARCHAR(100),
  BillingOrder INT,
  PRIMARY KEY (FilmID, ActorID),
  FOREIGN KEY (FilmID) REFERENCES Films(FilmID) ON DELETE CASCADE,
  FOREIGN KEY (ActorID) REFERENCES Actors(ActorID) ON DELETE CASCADE
);


-- 2. -- CREATE TABLE: FilmCrew (DDL)
CREATE TABLE FilmCrew (
  FilmID INT,
  CrewID INT,
  Role VARCHAR(100),
  PRIMARY KEY (FilmID, CrewID),
  FOREIGN KEY (FilmID) REFERENCES Films(FilmID) ON DELETE CASCADE,
  FOREIGN KEY (CrewID) REFERENCES CrewMembers(CrewID) ON DELETE CASCADE
);


-- 3. -- CREATE TABLE: StudioBookings (DDL)
CREATE TABLE StudioBookings (
  BookingID INT PRIMARY KEY,
  StudioID INT,
  FilmID INT,
  StartDate DATE,
  EndDate DATE,
  Status VARCHAR(20),
  FOREIGN KEY (StudioID) REFERENCES Studios(StudioID),
  FOREIGN KEY (FilmID) REFERENCES Films(FilmID)
);


-- 4. -- ALTER TABLE: add column to Films (DDL)
ALTER TABLE Films ADD COLUMN Country VARCHAR(50) DEFAULT 'India';


-- 5. -- ALTER TABLE: modify column (DDL)
ALTER TABLE Directors MODIFY Email VARCHAR(150) NULL;


-- 6. -- CREATE INDEX (DDL)
CREATE INDEX idx_films_genre_release ON Films(Genre, ReleaseDate);


-- 7. -- CREATE VIEW placeholder (DDL)
CREATE VIEW ActiveStudios AS
SELECT StudioID, Name, Location FROM Studios WHERE AvailabilityStatus = 'Available';

-- 8. -- CREATE TABLE: BoxOffice (DDL)
CREATE TABLE BoxOffice (
  FilmID INT PRIMARY KEY,
  WorldwideGross DECIMAL(15,2),
  DomesticGross DECIMAL(15,2),
  OverseasGross DECIMAL(15,2),
  UpdatedAt DATETIME DEFAULT NOW(),
  FOREIGN KEY (FilmID) REFERENCES Films(FilmID) ON DELETE CASCADE
);


-- 9. DROP INDEX (DDL)
DROP INDEX idx_films_genre_release ON Films;


-- 10. -- DROP TABLE IF EXISTS (DDL)
DROP TABLE IF EXISTS TempCasting;


-- 11. -- INSERT single film (DML)
INSERT INTO Films (FilmID, Title, Genre, ReleaseDate, Budget, Language, DurationMinutes, Rating, ProductionStatus, ProductionCompany, Country)
VALUES (21, 'New Dawn', 'Drama', '2025-11-15', 150000000.00, 'Hindi', 145, 'UA', 'Post-Production', 'Silver Screen Studios', 'India');


-- 12. -- INSERT multiple actors (DML)
INSERT INTO Actors (ActorID, Name, Gender, DateOfBirth, Nationality, Email, Phone, DebutYear, Agency, AwardsWon)
VALUES
(21,'Tara Sharma','Female','1990-02-10','Indian','tara@example.com','9812345670',2012,'TS Talent',2),
(22,'Arjun Dev','Male','1988-07-20','Indian','arjun@example.com','9812345671',2010,'AD Management',1);


-- 13. -- UPDATE film budget (DML)
UPDATE Films SET Budget = Budget * 1.10 WHERE FilmID = 3; -- increase Jawan budget by 10%


-- 14. -- DELETE a crew member (DML)
DELETE FROM CrewMembers WHERE CrewID = 20;


-- 15. -- INSERT INTO join table (DML)
INSERT INTO FilmActors (FilmID, ActorID, RoleName, BillingOrder)
VALUES (1, 1, 'Lead', 1), (3, 4, 'Antagonist', 2);


-- 16. -- UPDATE with JOIN (DML)
UPDATE Studios s
JOIN StudioBookings sb ON s.StudioID = sb.StudioID
SET s.AvailabilityStatus = 'Booked'
WHERE sb.StartDate <= CURDATE() AND sb.EndDate >= CURDATE();


-- 17. -- DELETE with subquery (DML)
DELETE FROM StudioBookings WHERE FilmID IN (SELECT FilmID FROM Films WHERE ProductionStatus = 'Cancelled');


-- 18. -- INSERT from SELECT (DML)
INSERT INTO TempCasting (FilmID, ActorID)
SELECT FilmID, ActorID FROM FilmActors WHERE BillingOrder <= 3;


-- 19. -- TRUNCATE helper table (DML)
TRUNCATE TABLE TempCasting;


-- 20. -- UPSERT (MySQL) (DML)
INSERT INTO BoxOffice (FilmID, WorldwideGross, DomesticGross, OverseasGross)
VALUES (1, 1200000000.00, 800000000.00, 400000000.00)
ON DUPLICATE KEY UPDATE WorldwideGross = VALUES(WorldwideGross), UpdatedAt = NOW();


## DQL — SELECT / Reporting (10 queries)

-- 21. -- Simple SELECT (DQL)
SELECT FilmID, Title, Genre FROM Films WHERE ProductionStatus = 'Released';

-- 22. -- SELECT with WHERE and ORDER BY (DQL)
SELECT Title, ReleaseDate FROM Films WHERE Language = 'Hindi' ORDER BY ReleaseDate DESC;


-- 23. -- SELECT with JOIN (DQL)
SELECT f.Title, d.Name AS DirectorName
FROM Films f
JOIN FilmDirectors fd ON f.FilmID = fd.FilmID
JOIN Directors d ON fd.DirectorID = d.DirectorID;


-- 24. -- Aggregation with GROUP BY (DQL)
SELECT Genre, COUNT(*) AS FilmCount, AVG(Budget) AS AvgBudget
FROM Films GROUP BY Genre HAVING COUNT(*) > 1;


-- 25. -- COUNT and DISTINCT (DQL)
SELECT COUNT(DISTINCT ProductionCompany) AS DistinctProducers FROM Films;

-- 26. -- LIMIT / TOP (DQL)
SELECT Title, Budget FROM Films ORDER BY Budget DESC LIMIT 5;


-- 27. -- SELECT with LIKE (DQL)
SELECT ActorID, Name FROM Actors WHERE Email LIKE '%@example.com';


-- 28. -- BETWEEN (DQL)
SELECT FilmID, Title FROM Films WHERE ReleaseDate BETWEEN '2022-01-01' AND '2023-12-31';


-- 29. -- Subquery in SELECT list (DQL)
SELECT f.Title,
  (SELECT COUNT(*) FROM FilmActors fa WHERE fa.FilmID = f.FilmID) AS CastCount
FROM Films f;


-- 30. -- CASE expression (DQL)
SELECT Title, Budget,
  CASE WHEN Budget > 1000000000 THEN 'Big' WHEN Budget BETWEEN 500000000 AND 1000000000 THEN 'Medium' ELSE 'Small' END AS BudgetCategory
FROM Films;


-- 31. -- WHERE with AND/OR/NOT (Clauses)
SELECT * FROM Films WHERE (Genre = 'Action' OR Genre = 'Action Thriller') AND ProductionStatus = 'Released' AND NOT Language = 'English';


-- 32. -- IN operator (Clauses)
SELECT Title FROM Films WHERE Rating IN ('A','UA');


-- 33. -- EXISTS (Clauses)
SELECT d.DirectorID, d.Name FROM Directors d WHERE EXISTS (SELECT 1 FROM FilmDirectors fd WHERE fd.DirectorID = d.DirectorID);


-- 34. -- ANY / ALL (Clauses)
SELECT Title FROM Films WHERE Budget > ALL (SELECT AVG(Budget) FROM Films GROUP BY Genre);


-- 35. -- LIKE wildcard (Clauses)
SELECT Title FROM Films WHERE Title LIKE '%The%';


-- 36. -- IS NULL / IS NOT NULL (Clauses)
SELECT * FROM Films WHERE ReleaseDate IS NULL;

-- 37. -- BETWEEN for dates (Clauses)
SELECT * FROM StudioBookings WHERE StartDate BETWEEN '2025-01-01' AND '2025-12-31';


-- 38. -- REGEXP (MySQL) / ~ (Postgres) (Clauses)
SELECT Name FROM Actors WHERE Name REGEXP '^(A|S|D)';

-- 39. -- ORDER BY multiple columns (Clauses)
SELECT Title, Genre FROM Films ORDER BY Genre ASC, Budget DESC;

-- 40. -- GROUP BY with ROLLUP (Clauses)
SELECT Language, COUNT(*) AS cnt, SUM(Budget) AS total_budget FROM Films GROUP BY Language WITH ROLLUP;

## Constraints & Cascades (10 queries)

-- 41. -- Add UNIQUE constraint (Constraints)
ALTER TABLE Actors ADD CONSTRAINT uq_actor_email UNIQUE (Email);

-- 42. -- Add CHECK constraint (Constraints)
ALTER TABLE Films ADD CONSTRAINT chk_duration_positive CHECK (DurationMinutes > 0);


-- 43. -- Add FOREIGN KEY with ON DELETE CASCADE (Constraints)
ALTER TABLE FilmCrew ADD CONSTRAINT fk_filmcrew_film FOREIGN KEY (FilmID) REFERENCES Films(FilmID) ON DELETE CASCADE;


-- 44. -- Composite primary key example (Constraints)
-- Already created FilmActors with composite PK; recreate example for Awards
CREATE TABLE Awards (
  AwardID INT,
  FilmID INT,
  Category VARCHAR(100),
  Year INT,
  PRIMARY KEY (AwardID)
);


-- 45. -- Drop foreign key constraint (Constraints)
ALTER TABLE FilmCrew DROP FOREIGN KEY fk_filmcrew_film;


-- 46. Rename constraint (MySQL version)
-- Step 1: Drop the existing constraint
ALTER TABLE Actors
DROP INDEX uq_actor_email;

-- Step 2: Recreate it with the new name
ALTER TABLE Actors
ADD CONSTRAINT uq_actor_email_new UNIQUE (Email);


-- 47. Disable all foreign key checks (MySQL)
SET FOREIGN_KEY_CHECKS = 0;

-- Perform your operations here (e.g., insert/update that may violate constraints)
-- Re-enable checks after operations
SET FOREIGN_KEY_CHECKS = 1;


-- 48. Add DEFAULT constraint (MySQL version)
ALTER TABLE Studios
ALTER COLUMN AvailabilityStatus SET DEFAULT 'Available';


-- 49. -- Enforce NOT NULL (Constraints)
ALTER TABLE Directors MODIFY Name VARCHAR(100) NOT NULL;


-- 50. -- Create FK with ON UPDATE CASCADE (Constraints)
ALTER TABLE FilmDirectors ADD CONSTRAINT fk_filmdirector_director FOREIGN KEY (DirectorID) REFERENCES Directors(DirectorID) ON UPDATE CASCADE;


-- 51. -- INNER JOIN (Joins)
SELECT f.Title, a.Name FROM Films f
INNER JOIN FilmActors fa ON f.FilmID = fa.FilmID
INNER JOIN Actors a ON fa.ActorID = a.ActorID;


-- 52. -- LEFT JOIN (Joins)
SELECT f.Title, sb.StartDate, sb.EndDate FROM Films f
LEFT JOIN StudioBookings sb ON f.FilmID = sb.FilmID;


-- 53. -- RIGHT JOIN (Joins)
SELECT s.Name AS Studio, sb.FilmID FROM StudioBookings sb
RIGHT JOIN Studios s ON sb.StudioID = s.StudioID;


-- 54. FULL OUTER JOIN simulation in MySQL
SELECT f.Title, bo.WorldwideGross
FROM Films f
LEFT JOIN BoxOffice bo ON f.FilmID = bo.FilmID

UNION

SELECT f.Title, bo.WorldwideGross
FROM Films f
RIGHT JOIN BoxOffice bo ON f.FilmID = bo.FilmID;


-- 55. -- SELF JOIN (Joins)
SELECT c1.CrewID AS Senior, c2.CrewID AS Junior, c1.Name, c2.Name FROM CrewMembers c1
JOIN CrewMembers c2 ON c1.Department = c2.Department AND c1.ExperienceYears > c2.ExperienceYears;


-- 56. -- CROSS JOIN (Joins)
SELECT f.Title, s.Name FROM Films f CROSS JOIN Studios s LIMIT 10;


-- 57. -- JOIN USING (Joins)
-- If both tables share 'FilmID'
SELECT fa.FilmID, f.Title, COUNT(fa.ActorID) AS CastSize FROM FilmActors fa
JOIN Films f USING (FilmID)
GROUP BY fa.FilmID, f.Title;


-- 58. -- MULTI-TABLE JOIN with filters (Joins)
SELECT f.Title, d.Name AS Director, s.Name AS Studio FROM Films f
JOIN FilmDirectors fd ON f.FilmID = fd.FilmID
JOIN Directors d ON fd.DirectorID = d.DirectorID
JOIN StudioBookings sb ON sb.FilmID = f.FilmID
JOIN Studios s ON sb.StudioID = s.StudioID
WHERE sb.Status = 'Confirmed';


-- 59. -- LEFT JOIN with aggregate (Joins)
SELECT f.Title, COALESCE(SUM(bo.DomesticGross),0) AS DomesticGross FROM Films f
LEFT JOIN BoxOffice bo ON f.FilmID = bo.FilmID
GROUP BY f.Title;


-- 60. -- JOIN with window function (Joins)
SELECT f.Title, a.Name, ROW_NUMBER() OVER (PARTITION BY f.FilmID ORDER BY fa.BillingOrder) AS billing_rank
FROM Films f
JOIN FilmActors fa ON f.FilmID = fa.FilmID
JOIN Actors a ON fa.ActorID = a.ActorID;


-- 61. -- Correlated subquery (Subqueries)
SELECT a.Name, a.AwardsWon FROM Actors a
WHERE a.AwardsWon > (SELECT AVG(AwardsWon) FROM Actors WHERE Nationality = a.Nationality);


-- 62. -- Subquery in FROM (derived table) (Subqueries)
SELECT t.Language, t.num_films FROM (
  SELECT Language, COUNT(*) AS num_films FROM Films GROUP BY Language
) t WHERE t.num_films > 2;


-- 63. -- EXISTS correlated (Subqueries)
SELECT Title FROM Films f WHERE EXISTS (SELECT 1 FROM FilmActors fa WHERE fa.FilmID = f.FilmID AND fa.ActorID = 1);


-- 64. -- IN with subquery (Subqueries)
SELECT * FROM Directors WHERE DirectorID IN (SELECT DirectorID FROM FilmDirectors WHERE FilmID = 2);


-- 65. -- ANY in subquery (Subqueries)
SELECT Title FROM Films WHERE Budget > ANY (SELECT Budget FROM Films WHERE Genre = 'Action');


-- 66. -- Subquery returning scalar (Subqueries)
SELECT Title, (SELECT COUNT(*) FROM FilmActors fa WHERE fa.FilmID = f.FilmID) AS CastCount FROM Films f;


-- 67. -- NOT EXISTS subquery (Subqueries)
SELECT Name FROM Directors d WHERE NOT EXISTS (SELECT 1 FROM FilmDirectors fd WHERE fd.DirectorID = d.DirectorID);


-- 68. -- Nested subqueries (Subqueries)
SELECT Title FROM Films WHERE FilmID = (SELECT FilmID FROM BoxOffice WHERE WorldwideGross = (SELECT MAX(WorldwideGross) FROM BoxOffice));


-- 69. -- DELETE using subquery (Subqueries)
DELETE FROM FilmActors WHERE ActorID IN (SELECT ActorID FROM Actors WHERE AwardsWon = 0);

-- 70. -- UPDATE using subquery (Subqueries)
UPDATE Films SET ProductionStatus = 'Archived' WHERE FilmID IN (SELECT FilmID FROM BoxOffice WHERE WorldwideGross < 1000000);


-- 71. -- Aggregate SUM / AVG / COUNT (Functions)
SELECT Genre, COUNT(*) AS num, AVG(Budget) AS avg_budget FROM Films GROUP BY Genre;


-- 72. -- String functions (UPPER, LOWER, CONCAT) (Functions)
SELECT UPPER(Title) AS UpTitle, CONCAT(Title, ' (', Language, ')') AS Label FROM Films;

-- 73. -- Date functions (DATEDIFF, DATE_ADD) (Functions)
SELECT Title, DATEDIFF(CURDATE(), ReleaseDate) AS DaysSinceRelease FROM Films WHERE ReleaseDate IS NOT NULL;


-- 74. -- COALESCE / NULLIF (Functions)
SELECT Title, COALESCE(ProductionCompany, 'Independent') AS Producer FROM Films;


-- 75. -- User-defined scalar function (pseudo example) (Functions)
CREATE FUNCTION is_blockbuster(gross DECIMAL(15,2)) RETURNS BOOLEAN
RETURN gross > 1000000000;


-- 76. -- Using function in SELECT (Functions)
SELECT f.Title FROM Films f JOIN BoxOffice b ON f.FilmID = b.FilmID WHERE is_blockbuster(b.WorldwideGross) = TRUE;


-- 77. -- ROUND, FLOOR numeric (Functions)
SELECT Title, ROUND(Budget/10000000,2) AS BudgetCrores FROM Films;


-- 78. -- JSON functions (if supported) (Functions)
-- Example: JSON column storing languages
SELECT JSON_EXTRACT(extra_info, '$.subtitles') FROM Films WHERE FilmID = 1;


-- 79. -- Mathematical aggregate (SUM) (Functions)
SELECT SUM(WorldwideGross) AS TotalGross FROM BoxOffice;


-- 80. -- Using built-in LENGTH / CHAR_LENGTH (Functions)
SELECT Title, CHAR_LENGTH(Title) AS title_len FROM Films;


-- 81. -- CREATE VIEW (Views)
CREATE VIEW FilmSummary AS
SELECT f.FilmID, f.Title, f.Genre, COALESCE(b.WorldwideGross,0) AS WorldwideGross
FROM Films f LEFT JOIN BoxOffice b ON f.FilmID = b.FilmID;


-- 82. -- USE VIEW (Views)
SELECT * FROM FilmSummary WHERE WorldwideGross > 500000000;


-- 83. -- Simple CTE (WITH) (CTE)
WITH TopGrossers AS (
  SELECT FilmID FROM BoxOffice ORDER BY WorldwideGross DESC LIMIT 5
)
SELECT f.Title, b.WorldwideGross FROM Films f JOIN BoxOffice b USING (FilmID) WHERE f.FilmID IN (SELECT FilmID FROM TopGrossers);


-- 84. -- Recursive CTE (CTE)
-- Example: hypothetical mentorship chain among crew (assumes MentorID column)
WITH RECURSIVE Mentors AS (
  SELECT CrewID, Name, MentorID, 1 AS lvl FROM CrewMembers WHERE CrewID = 13
  UNION ALL
  SELECT c.CrewID, c.Name, c.MentorID, m.lvl + 1 FROM CrewMembers c JOIN Mentors m ON c.CrewID = m.MentorID
)
SELECT * FROM Mentors;


-- 85. -- CTE with aggregates (CTE)
WITH GenreStats AS (
  SELECT Genre, COUNT(*) AS num, AVG(Budget) AS avg_budget FROM Films GROUP BY Genre
)
SELECT * FROM GenreStats WHERE num > 2;

-- 86. -- Create a table to store materialized results
CREATE TABLE mv_top_studios AS
SELECT 
    s.StudioID,
    s.Name,
    COUNT(sb.BookingID) AS bookings
FROM Studios s
JOIN StudioBookings sb ON s.StudioID = sb.StudioID
GROUP BY s.StudioID;


-- 87. -- DROP VIEW (Views)
DROP VIEW IF EXISTS FilmSummary;


-- 88. -- ALTER VIEW (Views)
CREATE OR REPLACE VIEW FilmSummary AS
SELECT f.FilmID ;

-- 89. DDL: Add a new column to Films table
ALTER TABLE Films
ADD COLUMN BoxOfficeCollection DECIMAL(12,2) DEFAULT 0.00 NOT NULL; 

-- 90. DML: Update Budget for a specific film
UPDATE Films SET Budget = 3500000000.00 WHERE Title = 'Jawan'; 

-- 91. DQL: Select top 5 highest-budget films
SELECT Title, Budget FROM Films ORDER BY Budget DESC LIMIT 5;

-- 92. Clause & Operator: Select films released between 2022-01-01 and 2023-12-31
SELECT Title, ReleaseDate FROM Films WHERE ReleaseDate BETWEEN '2022-01-01' AND '2023-12-31';

-- 93. Constraint & Cascade: Add foreign key from Films to Directors
ALTER TABLE Films ADD CONSTRAINT FK_Director FOREIGN KEY (FilmID) REFERENCES Directors(DirectorID) ON DELETE CASCADE;

-- 94. Join: Get film title and director name
SELECT F.Title, D.Name AS DirectorName
FROM Films F
INNER JOIN Directors D ON F.FilmID = D.DirectorID;

-- 95. Subquery: Select actors who debuted after the oldest director’s debut
SELECT Name, DebutYear FROM Actors
WHERE DebutYear > (SELECT MIN(DebutYear) FROM Directors);

-- 96. Aggregate Function: Get average film budget by genre
SELECT Genre, AVG(Budget) AS AvgBudget
FROM Films
GROUP BY Genre;

-- 97. View: Create a view of action films
CREATE VIEW ActionFilms AS
SELECT Title, Genre, ReleaseDate
FROM Films
WHERE Genre LIKE '%Action%';

-- 98. CTE: Get directors with more than 10 awards
WITH AwardedDirectors AS (
    SELECT Name, AwardsWon FROM Directors WHERE AwardsWon > 10
)
SELECT * FROM AwardedDirectors;

-- 99. Stored Procedure: Insert a new actor
DELIMITER $$

CREATE PROCEDURE AddActor(
    IN actorName VARCHAR(100),
    IN gender VARCHAR(10),
    IN dob DATE,
    IN nationality VARCHAR(50),
    IN email VARCHAR(100)
)
BEGIN
    INSERT INTO Actors (Name, Gender, DateOfBirth, Nationality, Email)
    VALUES (actorName, gender, dob, nationality, email);
END $$

DELIMITER ;

-- 100. Transaction: Transfer budget between films
START TRANSACTION;
UPDATE Films SET Budget = Budget - 50000000 WHERE Title = 'RRR';
UPDATE Films SET Budget = Budget + 50000000 WHERE Title = 'Pathaan';
COMMIT;