-- --------------------------------------------------- Analysis of Database ----------------------------------------------------------------------------------------------------------------
/*
Database Name --> Film_Production_Company;

Tables -->

1.Films ( FilmID ,Title ,Genre ,ReleaseDate, Budget ,Language ,DurationMinutes ,Rating ,ProductionStatus ,ProductionCompany )
2.Directors ( DirectorID ,Name ,ExperienceYears ,Nationality ,Email ,Phone ,Specialization ,DebutYear ,NotableFilms ,AwardsWon)
3.Actors ( ActorID ,Name ,Gender ,DateOfBirth ,Nationality ,Email ,Phone ,DebutYear ,Agency ,AwardsWon )
4.Studios ( StudioID ,Name ,Location ,AreaSqFt ,Capacity ,ContactPerson ,Email ,Phone ,Facilities ,AvailabilityStatus)
5.CrewMembers ( CrewID ,Name ,Role ,Gender ,Phone ,Email ,ExperienceYears ,Department ,JoiningDate , Status )
6.ProductionCompanies ( CompanyID ,Name ,FoundedYear ,CEO VARCHAR ,Headquarters ,Email ,Phone ,TotalFilmsProduced ,GenreSpecialization ,Status )
7.FilmGenres (GenreID ,Name ,Description ,PopularityRank ,SuitableForKids ,AverageDuration ,TypicalBudgetRange ,LanguageOrigin ,FirstAppearedYear ,ActiveStatus )
8.Distributors (DistributorID ,Name ,Country ,Email ,Phone ,YearsActive ,TotalDeals ,PlatformType ,DistributionRegions ,ContractStatus )
9.Soundtracks (TrackID ,Title ,Composer ,DurationSeconds ,Genre ,FilmID ,ReleaseDate ,Language ,Rating ,Publisher )
10.Awards (AwardID ,Name ,Category ,Year ,WinnerName ,FilmID ,PresentedBy ,Country ,PrizeAmount ,Level )
11.Shootinglocation (locationid,filmid,coutry,state,city,sitename,dayspent,indooroutdoor,localcontact),
12.Filmbudget (budgetid,filmid,preproductioncost,postproductioncost,marketingcost,distributioncost,miscellaneouscost,totalbudget,currency),
13.Filreview (reviewid,filmid,reviewersname,platform,reviewdate,reviewtitel,reviewtext,likes),
14.Filmscript (scriptid,filmid,scripttitle,writename,language,versionnumber,submissiondate,genre),
15.Boxoffice (boxooficeid,filmid,relesedate,openingweekendcollection,totaldomesticcollection,totalscreen,currency,totalrevenue,profitorloss),
16.Castingcalls (callid,filmid,roletitle,genderrequired,agerenge,auditiondate,location,countemail,status,remarks),
17.Distributionpartner (partnerid,partnername,country,contactperson,email,phonenumber,contractstart,contractend,numberofscreen,revenuesharepercent),
18.Censorshipcertificates (certificateid,filmid,certificatetype,issuingcountry,issuedate,validuntil,remarks,censorboard,language,certificatenumber),
19.Streamingrights (rightid,filmid,platformname,country,language,startdate,enddate,amountpaid,licensetype,isexclusive),
20.Sponsershipdeals (dealid,filmid,spomsorname,sponsortype,amount,startdate,enddate,dealstatus,contactemail),
21.Productionschedule (schehduleid,filmid,location,startdate,enddate,shootinghoursperday,equipmentused,crewcount,supervisorname,status),
22.Scriptversion (versionid,filmid,drftnumber,writename,submitdate,approvedby,versionstatus,changingsummary,filepath,notes),
23.Legalclerances (clearanceid,filmid,clerancetype,issueby,validtill,approvalstatus,documnetpath,contactperson,remarks),
24.Postproduction (postid,filmid,editorname,vfxstudioo,soundengineer,colourgradingvideo,startdate,enddate,status,remarks),
25.Audiencesurveys (surveyid,filmid,surveydate,agegroup,gender,region,rating,feedback,conductedby,responsecount)
*/


-- ---------------------------------------- Database queries ---------------------------------------------------------

-- create a database Film_Production_Company;
CREATE DATABASE Film_Production_Company;

-- to work on database, you need to use it first
USE Film_Production_Company;

-- --------------------------------------------------------- Table Queries ----------------------------------------------

-- Table 1: Films
CREATE TABLE Films (
    FilmID INT PRIMARY KEY,
    Title VARCHAR(100),
    Genre VARCHAR(50),
    ReleaseDate DATE,
    Budget DECIMAL(12,2),
    Language VARCHAR(50),
    DurationMinutes INT,
    Rating VARCHAR(10),
    ProductionStatus VARCHAR(20),
    ProductionCompany VARCHAR(100)
);

-- Insert 20 sample records
INSERT INTO Films  ( FilmID ,Title ,Genre ,ReleaseDate, Budget ,Language ,DurationMinutes ,Rating ,ProductionStatus ,ProductionCompany ) VALUES
(1, 'Pathaan', 'Action', '2023-01-25', 2500000000.00, 'Hindi', 146, 'UA', 'Released', 'Yash Raj Films'),
(2, 'RRR', 'Action Drama', '2022-03-25', 5500000000.00, 'Telugu', 182, 'UA', 'Released', 'DVV Entertainment'),
(3, 'Jawan', 'Thriller', '2023-09-07', 3000000000.00, 'Hindi', 169, 'UA', 'Released', 'Red Chillies Entertainment'),
(4, 'Pushpa: The Rise', 'Action', '2021-12-17', 2500000000.00, 'Telugu', 179, 'A', 'Released', 'Mythri Movie Makers'),
(5, 'Gadar 2', 'Action Drama', '2023-08-11', 1000000000.00, 'Hindi', 170, 'UA', 'Released', 'Zee Studios'),
(6, 'Baahubali 2', 'Epic', '2017-04-28', 4300000000.00, 'Telugu', 171, 'UA', 'Released', 'Arka Media Works'),
(7, 'Dangal', 'Biopic', '2016-12-23', 700000000.00, 'Hindi', 161, 'UA', 'Released', 'Aamir Khan Productions'),
(8, '3 Idiots', 'Comedy Drama', '2009-12-25', 550000000.00, 'Hindi', 170, 'UA', 'Released', 'Vinod Chopra Films'),
(9, 'Kantara', 'Action Thriller', '2022-09-30', 160000000.00, 'Kannada', 147, 'UA', 'Released', 'Hombale Films'),
(10, 'KGF: Chapter 2', 'Action', '2022-04-14', 1000000000.00, 'Kannada', 168, 'UA', 'Released', 'Hombale Films'),
(11, 'Drishyam 2', 'Mystery Thriller', '2022-11-18', 500000000.00, 'Hindi', 140, 'UA', 'Released', 'Panorama Studios'),
(12, 'Sita Ramam', 'Romantic Drama', '2022-08-05', 300000000.00, 'Telugu', 163, 'UA', 'Released', 'Vyjayanthi Movies'),
(13, 'Vikram', 'Action Thriller', '2022-06-03', 1200000000.00, 'Tamil', 175, 'A', 'Released', 'Raaj Kamal Films'),
(14, 'Ponniyin Selvan: I', 'Historical', '2022-09-30', 500000000.00, 'Tamil', 167, 'UA', 'Released', 'Lyca Productions'),
(15, 'Jailer', 'Action Comedy', '2023-08-10', 800000000.00, 'Tamil', 168, 'UA', 'Released', 'Sun Pictures'),
(16, 'The Kashmir Files', 'Drama', '2022-03-11', 200000000.00, 'Hindi', 170, 'A', 'Released', 'Zee Studios'),
(17, 'Brahmastra', 'Fantasy', '2022-09-09', 4100000000.00, 'Hindi', 167, 'UA', 'Released', 'Dharma Productions'),
(18, 'Shershaah', 'War Drama', '2021-08-12', 500000000.00, 'Hindi', 135, 'UA', 'Released', 'Dharma Productions'),
(19, 'Mimi', 'Drama', '2021-07-26', 300000000.00, 'Hindi', 132, 'UA', 'Released', 'Maddock Films'),
(20, 'Article 15', 'Crime Drama', '2019-06-28', 300000000.00, 'Hindi', 130, 'UA', 'Released', 'Zee Studios');

-- to display table data
SELECT * FROM Films;

-- to remove complete records from table
TRUNCATE TABLE Films;

-- to remove complete records and attributes from table
DROP TABLE Films;

-- 1. View to show all released films
CREATE OR REPLACE VIEW ReleasedFilms AS
SELECT FilmID, Title, ReleaseDate, Budget, Language
FROM Films
WHERE ProductionStatus = 'Released';

-- 2. View to show films with Budget > 1 Billion
CREATE OR REPLACE VIEW HighBudgetFilms AS
SELECT Title, Budget, ProductionCompany
FROM Films
WHERE Budget > 1000000000;

-- 3. View for Hindi language films
CREATE OR REPLACE VIEW HindiFilms AS
SELECT FilmID, Title, Genre
FROM Films
WHERE Language = 'Hindi';

-- 4. View to get films by Genre
CREATE OR REPLACE VIEW ActionFilms AS
SELECT FilmID, Title, Genre
FROM Films
WHERE Genre LIKE '%Action%';

-- 5. View for films longer than 160 minutes
CREATE OR REPLACE VIEW LongFilms AS
SELECT Title, DurationMinutes, Genre
FROM Films
WHERE DurationMinutes > 160;

-- 6. View showing Tamil films with their Production Company
CREATE OR REPLACE VIEW TamilFilms AS
SELECT Title, ProductionCompany, ReleaseDate
FROM Films
WHERE Language = 'Tamil';

-- 7. View for recently released films (2022-2023)
CREATE OR REPLACE VIEW RecentFilms AS
SELECT Title, ReleaseDate, Language
FROM Films
WHERE ReleaseDate BETWEEN '2022-01-01' AND '2023-12-31';

-- 8. View to get films with UA rating
CREATE OR REPLACE VIEW UAFilms AS
SELECT Title, Rating, Genre
FROM Films
WHERE Rating = 'UA';

-- 9. View for films of a specific Production Company
CREATE OR REPLACE VIEW ZeeFilms AS
SELECT Title, Language, Genre
FROM Films
WHERE ProductionCompany = 'Zee Studios';

-- 10. View to get short films (< 150 minutes)
CREATE OR REPLACE VIEW ShortFilms AS
SELECT Title, DurationMinutes, Genre
FROM Films
WHERE DurationMinutes < 150;

-- 11. CTE: Top 5 highest budget films
WITH TopBudgetFilms AS (
    SELECT Title, Budget
    FROM Films
    ORDER BY Budget DESC
    LIMIT 5
)
SELECT * FROM TopBudgetFilms;

-- 12. CTE: Count of films per Genre
WITH GenreCount AS (
    SELECT Genre, COUNT(*) AS TotalFilms
    FROM Films
    GROUP BY Genre
)
SELECT * FROM GenreCount;

-- 13. CTE: Recent releases in 2023
WITH RecentReleases AS (
    SELECT Title, ReleaseDate
    FROM Films
    WHERE YEAR(ReleaseDate) = 2023
)
SELECT * FROM RecentReleases;

-- 14. CTE: Average duration per Genre
WITH AvgDuration AS (
    SELECT Genre, AVG(DurationMinutes) AS AvgDuration
    FROM Films
    GROUP BY Genre
)
SELECT * FROM AvgDuration;

-- 15. CTE: Films with high budget (> 1B) and long duration (>160)
WITH HighBudgetLongFilms AS (
    SELECT Title, Budget, DurationMinutes
    FROM Films
    WHERE Budget > 1000000000 AND DurationMinutes > 160
)
SELECT * FROM HighBudgetLongFilms;
3. Stored Procedures (5 queries)
sql
Copy code
-- 16. Procedure: Get films by Language
DELIMITER $$
CREATE PROCEDURE GetFilmsByLanguage(IN lang VARCHAR(50))
BEGIN
    SELECT Title, Genre, ReleaseDate
    FROM Films
    WHERE Language = lang;
END $$
DELIMITER ;

-- 17. Procedure: Update Budget of a film
DELIMITER $$
CREATE PROCEDURE UpdateFilmBudget(IN fid INT, IN newBudget DECIMAL(12,2))
BEGIN
    UPDATE Films SET Budget = newBudget WHERE FilmID = fid;
END $$
DELIMITER ;

-- 18. Procedure: Count films by Rating
DELIMITER $$
CREATE PROCEDURE CountFilmsByRating(IN rating VARCHAR(10))
BEGIN
    SELECT COUNT(*) AS TotalFilms
    FROM Films
    WHERE Rating = rating;
END $$
DELIMITER ;

-- 19. Procedure: Delete a film by ID
DELIMITER $$
CREATE PROCEDURE DeleteFilm(IN fid INT)
BEGIN
    DELETE FROM Films WHERE FilmID = fid;
END $$
DELIMITER ;

-- 20. Procedure: Get films within a budget range
DELIMITER $$
CREATE PROCEDURE FilmsByBudget(IN minBudget DECIMAL(12,2), IN maxBudget DECIMAL(12,2))
BEGIN
    SELECT Title, Budget, ProductionCompany
    FROM Films
    WHERE Budget BETWEEN minBudget AND maxBudget;
END $$
DELIMITER ;

-- 21. Rank films by Budget
SELECT Title, Budget,
       RANK() OVER (ORDER BY Budget DESC) AS BudgetRank
FROM Films;

-- 22. Dense rank by Duration
SELECT Title, DurationMinutes,
       DENSE_RANK() OVER (ORDER BY DurationMinutes DESC) AS DurationRank
FROM Films;

-- 23. Row number by Release Date
SELECT Title, ReleaseDate,
       ROW_NUMBER() OVER (ORDER BY ReleaseDate DESC) AS RowNum
FROM Films;

-- 24. Average Budget per ProductionCompany
SELECT ProductionCompany, Budget,
       AVG(Budget) OVER (PARTITION BY ProductionCompany) AS AvgBudget
FROM Films;

-- 25. Cumulative sum of budgets
SELECT Title, Budget,
       SUM(Budget) OVER (ORDER BY ReleaseDate) AS CumulativeBudget
FROM Films;

-- 26. Grant select privilege to user
GRANT SELECT ON Films TO 'testuser'@'localhost';

-- 27. Revoke privilege
REVOKE SELECT ON Films FROM 'testuser'@'localhost';

-- 28. Commit a transaction
START TRANSACTION;
UPDATE Films SET Budget = Budget + 100000 WHERE FilmID = 1;
COMMIT;

-- 29. Rollback example
START TRANSACTION;
UPDATE Films SET Budget = Budget - 100000 WHERE FilmID = 2;
ROLLBACK;

-- 30. Savepoint example
START TRANSACTION;
SAVEPOINT BeforeUpdate;
UPDATE Films SET DurationMinutes = DurationMinutes + 5 WHERE FilmID = 3;
ROLLBACK TO SAVEPOINT BeforeUpdate;
COMMIT;

-- 31. Trigger before insert to set default rating if NULL
DELIMITER $$
CREATE TRIGGER BeforeFilmInsert
BEFORE INSERT ON Films
FOR EACH ROW
BEGIN
    IF NEW.Rating IS NULL THEN
        SET NEW.Rating = 'UA';
    END IF;
END $$
DELIMITER ;

-- 32. Trigger after insert to log film addition
DELIMITER $$
CREATE TRIGGER AfterFilmInsert
AFTER INSERT ON Films
FOR EACH ROW
BEGIN
    INSERT INTO FilmLogs(FilmID, Action, ActionDate)
    VALUES (NEW.FilmID, 'Inserted', NOW());
END $$
DELIMITER ;

-- 33. Trigger before update to track budget change
DELIMITER $$
CREATE TRIGGER BeforeBudgetUpdate
BEFORE UPDATE ON Films
FOR EACH ROW
BEGIN
    IF OLD.Budget <> NEW.Budget THEN
        INSERT INTO BudgetLogs(FilmID, OldBudget, NewBudget, ChangeDate)
        VALUES (OLD.FilmID, OLD.Budget, NEW.Budget, NOW());
    END IF;
END $$
DELIMITER ;

-- 34. Trigger after delete to log deletion
DELIMITER $$
CREATE TRIGGER AfterFilmDelete
AFTER DELETE ON Films
FOR EACH ROW
BEGIN
    INSERT INTO FilmLogs(FilmID, Action, ActionDate)
    VALUES (OLD.FilmID, 'Deleted', NOW());
END $$
DELIMITER ;

-- 35. Trigger before update to prevent negative budget
DELIMITER $$
CREATE TRIGGER PreventNegativeBudget
BEFORE UPDATE ON Films
FOR EACH ROW
BEGIN
    IF NEW.Budget < 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Budget cannot be negative';
    END IF;
END $$
DELIMITER ;

-- 36. Inner Join with AudienceSurveys (average rating per film)
SELECT f.Title, AVG(a.Rating) AS AvgRating
FROM Films f
INNER JOIN AudienceSurveys a ON f.FilmID = a.FilmID
GROUP BY f.Title;

-- 37. Left Join: Films and ScriptVersions (show all films even if no script version)
SELECT f.Title, s.WriterName, s.VersionStatus
FROM Films f
LEFT JOIN ScriptVersions s ON f.FilmID = s.FilmID;

-- 38. Right Join: Films and LegalClearances (show all clearances)
SELECT f.Title, l.ClearanceType, l.ApprovalStatus
FROM Films f
RIGHT JOIN LegalClearances l ON f.FilmID = l.FilmID;

-- 39. Self Join: Films to find similar genre films
SELECT f1.Title AS Film1, f2.Title AS Film2, f1.Genre
FROM Films f1
INNER JOIN Films f2 ON f1.Genre = f2.Genre AND f1.FilmID <> f2.FilmID;

-- 40. Subquery: Films with budget higher than average
SELECT Title, Budget
FROM Films
WHERE Budget > (SELECT AVG(Budget) FROM Films);

-- 41. Subquery: Highest budget film
SELECT Title, Budget
FROM Films
WHERE Budget = (SELECT MAX(Budget) FROM Films);

-- 42. Correlated Subquery: Films with higher duration than average of same genre
SELECT f1.Title, f1.Genre, f1.DurationMinutes
FROM Films f1
WHERE f1.DurationMinutes > (
    SELECT AVG(f2.DurationMinutes)
    FROM Films f2
    WHERE f2.Genre = f1.Genre
);

-- 43. Subquery: Count of films per production company
SELECT ProductionCompany,
       (SELECT COUNT(*) FROM Films f2 WHERE f2.ProductionCompany = f1.ProductionCompany) AS TotalFilms
FROM Films f1
GROUP BY ProductionCompany;

-- 44. Films not in a specific genre using NOT IN
SELECT Title, Genre
FROM Films
WHERE Genre NOT IN ('Action');

-- 45. Nested Subquery: Films released after the earliest release date
SELECT Title, ReleaseDate
FROM Films
WHERE ReleaseDate > (SELECT MIN(ReleaseDate) FROM Films);

-- 46. Join with PostProduction to get VFX studio for each film
SELECT f.Title, p.VFXStudio
FROM Films f
LEFT JOIN PostProduction p ON f.FilmID = p.FilmID;

-- 47. Join with AudienceSurveys to get total response count per film
SELECT f.Title, SUM(a.ResponseCount) AS TotalResponses
FROM Films f
LEFT JOIN AudienceSurveys a ON f.FilmID = a.FilmID
GROUP BY f.Title;

-- 48. Join with ScriptVersions to find films with multiple drafts
SELECT f.Title, COUNT(s.VersionID) AS DraftCount
FROM Films f
INNER JOIN ScriptVersions s ON f.FilmID = s.FilmID
GROUP BY f.Title
HAVING DraftCount > 1;

-- 49. Window Function: Rank films by Duration per Genre
SELECT Title, Genre, DurationMinutes,
       RANK() OVER (PARTITION BY Genre ORDER BY DurationMinutes DESC) AS GenreDurationRank
FROM Films;

-- 50. Stored Procedure: Get top-rated films based on AudienceSurveys
DELIMITER $$
CREATE PROCEDURE TopRatedFilms()
BEGIN
    SELECT f.Title, AVG(a.Rating) AS AvgRating
    FROM Films f
    INNER JOIN AudienceSurveys a ON f.FilmID = a.FilmID
    GROUP BY f.Title
    ORDER BY AvgRating DESC
    LIMIT 10;
END $$
DELIMITER ;


-- Table 2: Directors
CREATE TABLE Directors (
    DirectorID INT PRIMARY KEY,
    Name VARCHAR(100),
    ExperienceYears INT,
    Nationality VARCHAR(50),
    Email VARCHAR(100),
    Phone VARCHAR(20),
    Specialization VARCHAR(50),
    DebutYear INT,
    NotableFilms TEXT,
    AwardsWon INT
);

-- Insert 20 sample records
INSERT INTO Directors ( DirectorID ,Name ,ExperienceYears ,Nationality ,Email ,Phone ,Specialization ,DebutYear ,NotableFilms ,AwardsWon)  VALUES
(1, 'S. S. Rajamouli', 22, 'Indian', 'ss.rajamouli@example.com', '9876543210', 'Action/Epic', 2001, 'Baahubali, RRR', 15),
(2, 'Sanjay Leela Bhansali', 26, 'Indian', 'sl.bhansali@example.com', '9876543211', 'Historical Drama', 1996, 'Padmaavat, Bajirao Mastani', 20),
(3, 'Rajkumar Hirani', 20, 'Indian', 'r.hirani@example.com', '9876543212', 'Comedy/Drama', 2003, '3 Idiots, PK', 12),
(4, 'Karan Johar', 25, 'Indian', 'karan.johar@example.com', '9876543213', 'Romance/Drama', 1998, 'Kabhi Khushi Kabhie Gham', 10),
(5, 'Zoya Akhtar', 15, 'Indian', 'z.akhtar@example.com', '9876543214', 'Drama', 2009, 'Zindagi Na Milegi Dobara', 7),
(6, 'Anurag Kashyap', 21, 'Indian', 'a.kashyap@example.com', '9876543215', 'Thriller/Realism', 2002, 'Gangs of Wasseypur', 8),
(7, 'Meghna Gulzar', 18, 'Indian', 'm.gulzar@example.com', '9876543216', 'Biopic/Drama', 2002, 'Raazi, Chhapaak', 6),
(8, 'Shoojit Sircar', 19, 'Indian', 's.sircar@example.com', '9876543217', 'Drama/Realistic', 2005, 'Vicky Donor, Piku', 9),
(9, 'Farah Khan', 20, 'Indian', 'farah.khan@example.com', '9876543218', 'Musical/Comedy', 2004, 'Main Hoon Na, Om Shanti Om', 5),
(10, 'Imtiaz Ali', 17, 'Indian', 'imtiaz.ali@example.com', '9876543219', 'Romantic Drama', 2005, 'Jab We Met, Tamasha', 4),
(11, 'Ashutosh Gowariker', 23, 'Indian', 'a.gowariker@example.com', '9876543220', 'Historical Drama', 1993, 'Lagaan, Jodhaa Akbar', 11),
(12, 'Vishal Bhardwaj', 22, 'Indian', 'v.bhardwaj@example.com', '9876543221', 'Shakespearean Drama', 2002, 'Haider, Omkara', 9),
(13, 'Nitesh Tiwari', 11, 'Indian', 'n.tiwari@example.com', '9876543222', 'Biopic/Drama', 2011, 'Dangal, Chhichhore', 6),
(14, 'Rohit Shetty', 17, 'Indian', 'r.shetty@example.com', '9876543223', 'Action/Comedy', 2003, 'Singham, Golmaal', 8),
(15, 'R. Balki', 14, 'Indian', 'r.balki@example.com', '9876543224', 'Drama', 2007, 'Paa, Pad Man', 5),
(16, 'Anubhav Sinha', 21, 'Indian', 'a.sinha@example.com', '9876543225', 'Social/Drama', 2001, 'Article 15, Thappad', 7),
(17, 'Mani Ratnam', 35, 'Indian', 'mani.ratnam@example.com', '9876543226', 'Drama/Romance', 1983, 'Roja, Bombay, PS1', 18),
(18, 'Neeraj Pandey', 15, 'Indian', 'n.pandey@example.com', '9876543227', 'Thriller', 2008, 'A Wednesday, Special 26', 4),
(19, 'Kabir Khan', 13, 'Indian', 'k.khan@example.com', '9876543228', 'Drama/Biopic', 2006, 'Bajrangi Bhaijaan, 83', 6),
(20, 'Reema Kagti', 12, 'Indian', 'r.kagti@example.com', '9876543229', 'Drama/Thriller', 2007, 'Talaash, Gold', 4);

-- to display table data
SELECT * FROM Directors;

-- to remove complete records from table
TRUNCATE TABLE Directors;

-- to remove complete records and attributes from table
DROP TABLE Directors;

-- 1. View: Directors with more than 10 awards
CREATE VIEW TopDirectors AS
SELECT Name, AwardsWon
FROM Directors
WHERE AwardsWon > 10;

-- 2. View: Directors with more than 20 years experience
CREATE VIEW ExperiencedDirectors AS
SELECT Name, ExperienceYears, Specialization
FROM Directors
WHERE ExperienceYears > 20;

-- 3. View: Directors debuted before 2000
CREATE VIEW EarlyDirectors AS
SELECT Name, DebutYear, NotableFilms
FROM Directors
WHERE DebutYear < 2000;

-- 4. View: Indian Directors only
CREATE VIEW IndianDirectors AS
SELECT Name, Nationality, Email
FROM Directors
WHERE Nationality = 'Indian';

-- 5. View: Directors specialized in Drama
CREATE VIEW DramaDirectors AS
SELECT Name, Specialization, AwardsWon
FROM Directors
WHERE Specialization LIKE '%Drama%';

-- 6. CTE: Directors with awards > 10
WITH Awarded AS (
    SELECT Name, AwardsWon
    FROM Directors
    WHERE AwardsWon > 10
)
SELECT * FROM Awarded;

-- 7. CTE: Directors with experience >= 20 years
WITH Experienced AS (
    SELECT Name, ExperienceYears
    FROM Directors
    WHERE ExperienceYears >= 20
)
SELECT * FROM Experienced;

-- 8. CTE: Directors debuted after 2000
WITH ModernDirectors AS (
    SELECT Name, DebutYear
    FROM Directors
    WHERE DebutYear > 2000
)
SELECT * FROM ModernDirectors;

-- 9. CTE: Count directors by specialization
WITH SpecCount AS (
    SELECT Specialization, COUNT(*) AS TotalDirectors
    FROM Directors
    GROUP BY Specialization
)
SELECT * FROM SpecCount;

-- 10. CTE: Average awards by decade of debut
WITH DebutDecade AS (
    SELECT CONCAT(FLOOR(DebutYear/10)*10,'s') AS Decade, AVG(AwardsWon) AS AvgAwards
    FROM Directors
    GROUP BY Decade
)
SELECT * FROM DebutDecade;

-- 11. Procedure: Get director by name
DELIMITER $$
CREATE PROCEDURE GetDirector(IN dName VARCHAR(100))
BEGIN
    SELECT * FROM Directors WHERE Name = dName;
END$$
DELIMITER ;

-- 12. Procedure: Directors with awards >= N
DELIMITER $$
CREATE PROCEDURE DirectorsByAwards(IN minAwards INT)
BEGIN
    SELECT Name, AwardsWon, Specialization
    FROM Directors
    WHERE AwardsWon >= minAwards;
END$$
DELIMITER ;

-- 13. Procedure: Update awards for a director
DELIMITER $$
CREATE PROCEDURE UpdateDirectorAwards(IN dID INT, IN newAwards INT)
BEGIN
    UPDATE Directors SET AwardsWon = newAwards WHERE DirectorID = dID;
END$$
DELIMITER ;

-- 14. Procedure: Delete director by ID
DELIMITER $$
CREATE PROCEDURE DeleteDirector(IN dID INT)
BEGIN
    DELETE FROM Directors WHERE DirectorID = dID;
END$$
DELIMITER ;

-- 15. Procedure: Get directors by specialization
DELIMITER $$
CREATE PROCEDURE DirectorsBySpecialization(IN spec VARCHAR(50))
BEGIN
    SELECT Name, Specialization, AwardsWon
    FROM Directors
    WHERE Specialization LIKE CONCAT('%', spec, '%');
END$$
DELIMITER ;

-- 16. Rank directors by awards
SELECT Name, AwardsWon,
       RANK() OVER (ORDER BY AwardsWon DESC) AS AwardRank
FROM Directors;

-- 17. Dense rank by debut year
SELECT Name, DebutYear,
       DENSE_RANK() OVER (ORDER BY DebutYear ASC) AS DebutRank
FROM Directors;

-- 18. Row number by experience
SELECT Name, ExperienceYears,
       ROW_NUMBER() OVER (ORDER BY ExperienceYears DESC) AS ExperienceRank
FROM Directors;

-- 19. Cumulative awards
SELECT Name, AwardsWon,
       SUM(AwardsWon) OVER (ORDER BY DebutYear ASC) AS CumAwards
FROM Directors;

-- 20. Average awards by specialization
SELECT Name, Specialization, AwardsWon,
       AVG(AwardsWon) OVER (PARTITION BY Specialization) AS AvgAwardsSpec
FROM Directors;

-- 21. Grant SELECT privilege to reader
GRANT SELECT ON Directors TO 'reader'@'localhost';

-- 22. Grant INSERT privilege to editor
GRANT INSERT ON Directors TO 'editor'@'localhost';

-- 23. Grant UPDATE privilege to editor
GRANT UPDATE ON Directors TO 'editor'@'localhost';

-- 24. Revoke DELETE privilege from editor
REVOKE DELETE ON Directors FROM 'editor'@'localhost';

-- 25. Revoke INSERT privilege from editor
REVOKE INSERT ON Directors FROM 'editor'@'localhost';

-- 26. Transaction: update awards with commit
START TRANSACTION;
UPDATE Directors SET AwardsWon = AwardsWon + 1 WHERE DirectorID = 1;
COMMIT;

-- 27. Transaction: update awards with rollback
START TRANSACTION;
UPDATE Directors SET AwardsWon = AwardsWon + 5 WHERE DirectorID = 2;
ROLLBACK;

-- 28. Savepoint example
START TRANSACTION;
UPDATE Directors SET AwardsWon = AwardsWon + 2 WHERE DirectorID = 3;
SAVEPOINT sp1;
UPDATE Directors SET AwardsWon = AwardsWon + 3 WHERE DirectorID = 4;
ROLLBACK TO sp1;
COMMIT;

-- 29. Insert new director with rollback
START TRANSACTION;
INSERT INTO Directors(Name, Specialization, DebutYear, AwardsWon) VALUES('Test Director', 'Drama', 2025, 0);
ROLLBACK;

-- 30. Multiple updates in transaction
START TRANSACTION;
UPDATE Directors SET AwardsWon = AwardsWon + 1 WHERE DirectorID IN (1,2,3);
COMMIT;

-- 31. Before insert: default AwardsWon = 0 if NULL
DELIMITER $$
CREATE TRIGGER trg_before_insert_directors
BEFORE INSERT ON Directors
FOR EACH ROW
BEGIN
    IF NEW.AwardsWon IS NULL THEN
        SET NEW.AwardsWon = 0;
    END IF;
END$$
DELIMITER ;

-- 32. After insert: log director added
DELIMITER $$
CREATE TRIGGER trg_after_insert_directors
AFTER INSERT ON Directors
FOR EACH ROW
BEGIN
    INSERT INTO DirectorLogs(DirectorID, ActionType, ActionDate)
    VALUES (NEW.DirectorID, 'INSERT', NOW());
END$$
DELIMITER ;

-- 33. Before update: track awards change
DELIMITER $$
CREATE TRIGGER trg_before_update_directors
BEFORE UPDATE ON Directors
FOR EACH ROW
BEGIN
    IF NEW.AwardsWon <> OLD.AwardsWon THEN
        INSERT INTO DirectorLogs(DirectorID, ActionType, OldAwards, NewAwards, ActionDate)
        VALUES (OLD.DirectorID, 'UPDATE', OLD.AwardsWon, NEW.AwardsWon, NOW());
    END IF;
END$$
DELIMITER ;

-- 34. After delete: log deleted director
DELIMITER $$
CREATE TRIGGER trg_after_delete_directors
AFTER DELETE ON Directors
FOR EACH ROW
BEGIN
    INSERT INTO DirectorLogs(DirectorID, ActionType, ActionDate)
    VALUES (OLD.DirectorID, 'DELETE', NOW());
END$$
DELIMITER ;

-- 35. Before insert: validate DebutYear >= 1900
DELIMITER $$
CREATE TRIGGER trg_validate_debutyear_directors
BEFORE INSERT ON Directors
FOR EACH ROW
BEGIN
    IF NEW.DebutYear < 1900 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'DebutYear cannot be before 1900';
    END IF;
END$$
DELIMITER ;

-- 36. Count directors by specialization
SELECT Specialization, COUNT(*) AS TotalDirectors
FROM Directors
GROUP BY Specialization;

-- 37. Max awards won
SELECT Name, MAX(AwardsWon) AS MaxAwards FROM Directors;

-- 38. Directors with awards > 10
SELECT Name, AwardsWon FROM Directors WHERE AwardsWon > 10;

-- 39. Directors debuted before 2000
SELECT Name, DebutYear FROM Directors WHERE DebutYear < 2000;

-- 40. Directors with email domain example.com
SELECT Name, Email FROM Directors WHERE Email LIKE '%@example.com';

-- 41. Order by DebutYear descending
SELECT Name, DebutYear FROM Directors ORDER BY DebutYear DESC;

-- 42. Average awards
SELECT AVG(AwardsWon) AS AvgAwards FROM Directors;

-- 43. Directors debuted after 2005
SELECT Name, DebutYear FROM Directors WHERE DebutYear > 2005;

-- 44. Directors with awards above average
SELECT Name, AwardsWon
FROM Directors
WHERE AwardsWon > (SELECT AVG(AwardsWon) FROM Directors);

-- 45. Count directors per specialization
SELECT Specialization, COUNT(*) AS CountDirectors FROM Directors GROUP BY Specialization;

-- 46. Director experience calculation
SELECT Name, ExperienceYears FROM Directors;

-- 47. Directors with name starting with 'S'
SELECT Name FROM Directors WHERE Name LIKE 'S%';

-- 48. Directors with awards between 5 and 15
SELECT Name, AwardsWon FROM Directors WHERE AwardsWon BETWEEN 5 AND 15;

-- 49. Directors debut decade
SELECT Name, CONCAT(FLOOR(DebutYear/10)*10,'s') AS DebutDecade FROM Directors;

-- 50. Top 5 directors by awards
SELECT Name, AwardsWon FROM Directors ORDER BY AwardsWon DESC LIMIT 5;


-- Table 3. Actors
CREATE TABLE Actors (
    ActorID INT PRIMARY KEY,
    Name VARCHAR(100),
    Gender VARCHAR(10),
    DateOfBirth DATE,
    Nationality VARCHAR(50),
    Email VARCHAR(100),
    Phone VARCHAR(20),
    DebutYear INT,
    Agency VARCHAR(100),
    AwardsWon INT
);

-- Insert 20 sample records
INSERT INTO Actors ( ActorID ,Name ,Gender ,DateOfBirth ,Nationality ,Email ,Phone ,DebutYear ,Agency ,AwardsWon )  VALUES
(1, 'Shah Rukh Khan', 'Male', '1965-11-02', 'Indian', 'srk@example.com', '9876543001', 1992, 'Red Chillies Talent', 20),
(2, 'Amitabh Bachchan', 'Male', '1942-10-11', 'Indian', 'bigb@example.com', '9876543002', 1969, 'AB Corp', 25),
(3, 'Deepika Padukone', 'Female', '1986-01-05', 'Indian', 'deepika@example.com', '9876543003', 2006, 'Ka Productions', 15),
(4, 'Ranveer Singh', 'Male', '1985-07-06', 'Indian', 'ranveer@example.com', '9876543004', 2010, 'YRF Talent', 10),
(5, 'Alia Bhatt', 'Female', '1993-03-15', 'Indian', 'alia@example.com', '9876543005', 2012, 'Dharma Talent', 12),
(6, 'Akshay Kumar', 'Male', '1967-09-09', 'Indian', 'akshay@example.com', '9876543006', 1991, 'Hari Om Entertainment', 20),
(7, 'Kangana Ranaut', 'Female', '1987-03-23', 'Indian', 'kangana@example.com', '9876543007', 2006, 'Manikarnika Films', 11),
(8, 'Aamir Khan', 'Male', '1965-03-14', 'Indian', 'aamir@example.com', '9876543008', 1988, 'Aamir Khan Productions', 18),
(9, 'Priyanka Chopra', 'Female', '1982-07-18', 'Indian', 'priyanka@example.com', '9876543009', 2003, 'Purple Pebble Pictures', 14),
(10, 'Hrithik Roshan', 'Male', '1974-01-10', 'Indian', 'hrithik@example.com', '9876543010', 2000, 'HRX Talent', 13),
(11, 'Kareena Kapoor Khan', 'Female', '1980-09-21', 'Indian', 'kareena@example.com', '9876543011', 2000, 'Bebo Talent', 10),
(12, 'Rajkummar Rao', 'Male', '1984-08-31', 'Indian', 'rajkummar@example.com', '9876543012', 2010, 'Talent Monk', 9),
(13, 'Vidya Balan', 'Female', '1979-01-01', 'Indian', 'vidya@example.com', '9876543013', 2005, 'VBA Talent', 12),
(14, 'Nawazuddin Siddiqui', 'Male', '1974-05-19', 'Indian', 'nawaz@example.com', '9876543014', 2007, 'NS Management', 11),
(15, 'Taapsee Pannu', 'Female', '1987-08-01', 'Indian', 'taapsee@example.com', '9876543015', 2013, 'The Script Room', 7),
(16, 'Vicky Kaushal', 'Male', '1988-05-16', 'Indian', 'vicky@example.com', '9876543016', 2015, 'Dharma Talent', 8),
(17, 'Radhika Apte', 'Female', '1985-09-07', 'Indian', 'radhika@example.com', '9876543017', 2011, 'RA Management', 6),
(18, 'Samantha Ruth Prabhu', 'Female', '1987-04-28', 'Indian', 'samantha@example.com', '9876543018', 2010, 'IamSamantha Agency', 9),
(19, 'Allu Arjun', 'Male', '1982-04-08', 'Indian', 'allu@example.com', '9876543019', 2003, 'Geetha Arts Talent', 12),
(20, 'Nayanthara', 'Female', '1984-11-18', 'Indian', 'nayanthara@example.com', '9876543020', 2003, 'Rowdy Pictures', 10);

-- to display table data
SELECT * FROM Actors;

-- to remove complete records and attributes from table
DROP TABLE Actors;

-- to remove complete records from table
TRUNCATE TABLE Actors;

-- 1. View: Actors with more than 15 awards
CREATE VIEW TopActors AS
SELECT Name, AwardsWon
FROM Actors
WHERE AwardsWon > 15;

-- 2. View: Male Actors only
CREATE VIEW MaleActors AS
SELECT Name, Gender, DebutYear
FROM Actors
WHERE Gender = 'Male';

-- 3. View: Female Actors only
CREATE VIEW FemaleActors AS
SELECT Name, Gender, DebutYear
FROM Actors
WHERE Gender = 'Female';

-- 4. View: Actors debuted before 2000
CREATE VIEW VeteranActors AS
SELECT Name, DebutYear, Agency
FROM Actors
WHERE DebutYear < 2000;

-- 5. View: Actors from India
CREATE VIEW IndianActors AS
SELECT Name, Nationality, AwardsWon
FROM Actors
WHERE Nationality = 'Indian';

-- 6. CTE: Actors with awards > 10
WITH Awarded AS (
    SELECT Name, AwardsWon
    FROM Actors
    WHERE AwardsWon > 10
)
SELECT * FROM Awarded;

-- 7. CTE: Actors debuted after 2010
WITH ModernActors AS (
    SELECT Name, DebutYear
    FROM Actors
    WHERE DebutYear > 2010
)
SELECT * FROM ModernActors;

-- 8. CTE: Count actors by gender
WITH GenderCount AS (
    SELECT Gender, COUNT(*) AS TotalActors
    FROM Actors
    GROUP BY Gender
)
SELECT * FROM GenderCount;

-- 9. CTE: Average awards by agency
WITH AgencyAwards AS (
    SELECT Agency, AVG(AwardsWon) AS AvgAwards
    FROM Actors
    GROUP BY Agency
)
SELECT * FROM AgencyAwards;

-- 10. CTE: Actors with age calculation (assuming current year 2025)
WITH ActorAge AS (
    SELECT Name, YEAR(CURDATE()) - YEAR(DateOfBirth) AS Age
    FROM Actors
)
SELECT * FROM ActorAge;

-- 11. Procedure: Get actor by name
DELIMITER $$
CREATE PROCEDURE GetActor(IN aName VARCHAR(100))
BEGIN
    SELECT * FROM Actors WHERE Name = aName;
END$$
DELIMITER ;

-- 12. Procedure: Actors with awards >= N
DELIMITER $$
CREATE PROCEDURE ActorsByAwards(IN minAwards INT)
BEGIN
    SELECT Name, AwardsWon, Agency
    FROM Actors
    WHERE AwardsWon >= minAwards;
END$$
DELIMITER ;

-- 13. Procedure: Update awards for an actor
DELIMITER $$
CREATE PROCEDURE UpdateActorAwards(IN aID INT, IN newAwards INT)
BEGIN
    UPDATE Actors SET AwardsWon = newAwards WHERE ActorID = aID;
END$$
DELIMITER ;

-- 14. Procedure: Delete actor by ID
DELIMITER $$
CREATE PROCEDURE DeleteActor(IN aID INT)
BEGIN
    DELETE FROM Actors WHERE ActorID = aID;
END$$
DELIMITER ;

-- 15. Procedure: Get actors by agency
DELIMITER $$
CREATE PROCEDURE ActorsByAgency(IN agencyName VARCHAR(100))
BEGIN
    SELECT Name, Agency, AwardsWon
    FROM Actors
    WHERE Agency LIKE CONCAT('%', agencyName, '%');
END$$
DELIMITER ;

-- 16. Rank actors by awards
SELECT Name, AwardsWon,
       RANK() OVER (ORDER BY AwardsWon DESC) AS AwardRank
FROM Actors;

-- 17. Dense rank by debut year
SELECT Name, DebutYear,
       DENSE_RANK() OVER (ORDER BY DebutYear ASC) AS DebutRank
FROM Actors;

-- 18. Row number by awards
SELECT Name, AwardsWon,
       ROW_NUMBER() OVER (ORDER BY AwardsWon DESC) AS RowNum
FROM Actors;

-- 19. Cumulative awards
SELECT Name, AwardsWon,
       SUM(AwardsWon) OVER (ORDER BY DebutYear ASC) AS CumAwards
FROM Actors;

-- 20. Average awards by agency
SELECT Name, Agency, AwardsWon,
       AVG(AwardsWon) OVER (PARTITION BY Agency) AS AvgAgencyAwards
FROM Actors;

-- 21. Grant SELECT privilege to reader
GRANT SELECT ON Actors TO 'reader'@'localhost';

-- 22. Grant INSERT privilege to editor
GRANT INSERT ON Actors TO 'editor'@'localhost';

-- 23. Grant UPDATE privilege to editor
GRANT UPDATE ON Actors TO 'editor'@'localhost';

-- 24. Revoke DELETE privilege from editor
REVOKE DELETE ON Actors FROM 'editor'@'localhost';

-- 25. Revoke INSERT privilege from editor
REVOKE INSERT ON Actors FROM 'editor'@'localhost';

-- 26. Transaction: update awards with commit
START TRANSACTION;
UPDATE Actors SET AwardsWon = AwardsWon + 1 WHERE ActorID = 1;
COMMIT;

-- 27. Transaction: update awards with rollback
START TRANSACTION;
UPDATE Actors SET AwardsWon = AwardsWon + 5 WHERE ActorID = 2;
ROLLBACK;

-- 28. Savepoint example
START TRANSACTION;
UPDATE Actors SET AwardsWon = AwardsWon + 2 WHERE ActorID = 3;
SAVEPOINT sp1;
UPDATE Actors SET AwardsWon = AwardsWon + 3 WHERE ActorID = 4;
ROLLBACK TO sp1;
COMMIT;

-- 29. Insert new actor with rollback
START TRANSACTION;
INSERT INTO Actors(Name, DebutYear, AwardsWon) VALUES('Test Actor', 2025, 0);
ROLLBACK;

-- 30. Multiple updates in transaction
START TRANSACTION;
UPDATE Actors SET AwardsWon = AwardsWon + 1 WHERE ActorID IN (1,2,3);
COMMIT;

-- 31. Before insert: default AwardsWon = 0 if NULL
DELIMITER $$
CREATE TRIGGER trg_before_insert_actors
BEFORE INSERT ON Actors
FOR EACH ROW
BEGIN
    IF NEW.AwardsWon IS NULL THEN
        SET NEW.AwardsWon = 0;
    END IF;
END$$
DELIMITER ;

-- 32. After insert: log actor added
DELIMITER $$
CREATE TRIGGER trg_after_insert_actors
AFTER INSERT ON Actors
FOR EACH ROW
BEGIN
    INSERT INTO ActorLogs(ActorID, ActionType, ActionDate)
    VALUES (NEW.ActorID, 'INSERT', NOW());
END$$
DELIMITER ;

-- 33. Before update: track awards change
DELIMITER $$
CREATE TRIGGER trg_before_update_actors
BEFORE UPDATE ON Actors
FOR EACH ROW
BEGIN
    IF NEW.AwardsWon <> OLD.AwardsWon THEN
        INSERT INTO ActorLogs(ActorID, ActionType, OldAwards, NewAwards, ActionDate)
        VALUES (OLD.ActorID, 'UPDATE', OLD.AwardsWon, NEW.AwardsWon, NOW());
    END IF;
END$$
DELIMITER ;

-- 34. After delete: log deleted actor
DELIMITER $$
CREATE TRIGGER trg_after_delete_actors
AFTER DELETE ON Actors
FOR EACH ROW
BEGIN
    INSERT INTO ActorLogs(ActorID, ActionType, ActionDate)
    VALUES (OLD.ActorID, 'DELETE', NOW());
END$$
DELIMITER ;

-- 35. Before insert: validate DebutYear >= 1900
DELIMITER $$
CREATE TRIGGER trg_validate_debutyear_actors
BEFORE INSERT ON Actors
FOR EACH ROW
BEGIN
    IF NEW.DebutYear < 1900 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'DebutYear cannot be before 1900';
    END IF;
END$$
DELIMITER ;

-- 36. Count actors by gender
SELECT Gender, COUNT(*) AS TotalActors
FROM Actors
GROUP BY Gender;

-- 37. Max awards won
SELECT Name, MAX(AwardsWon) AS MaxAwards FROM Actors;

-- 38. Actors with awards > 15
SELECT Name, AwardsWon FROM Actors WHERE AwardsWon > 15;

-- 39. Actors debuted before 2000
SELECT Name, DebutYear FROM Actors WHERE DebutYear < 2000;

-- 40. Actors with email domain example.com
SELECT Name, Email FROM Actors WHERE Email LIKE '%@example.com';

-- 41. Order by DebutYear descending
SELECT Name, DebutYear FROM Actors ORDER BY DebutYear DESC;

-- 42. Average awards
SELECT AVG(AwardsWon) AS AvgAwards FROM Actors;

-- 43. Actors debuted after 2010
SELECT Name, DebutYear FROM Actors WHERE DebutYear > 2010;

-- 44. Actors with awards above average
SELECT Name, AwardsWon
FROM Actors
WHERE AwardsWon > (SELECT AVG(AwardsWon) FROM Actors);

-- 45. Count actors per agency
SELECT Agency, COUNT(*) AS CountActors FROM Actors GROUP BY Agency;

-- 46. Actors experience calculation
SELECT Name, YEAR(CURDATE()) - DebutYear AS ExperienceYears FROM Actors;

-- 47. Actors with name starting with 'S'
SELECT Name FROM Actors WHERE Name LIKE 'S%';

-- 48. Actors with awards between 5 and 15
SELECT Name, AwardsWon FROM Actors WHERE AwardsWon BETWEEN 5 AND 15;

-- 49. Actors debut decade
SELECT Name, CONCAT(FLOOR(DebutYear/10)*10,'s') AS DebutDecade FROM Actors;

-- 50. Top 5 actors by awards
SELECT Name, AwardsWon FROM Actors ORDER BY AwardsWon DESC LIMIT 5;


-- Table 4. Studios
CREATE TABLE Studios (
    StudioID INT PRIMARY KEY,
    Name VARCHAR(100),
    Location VARCHAR(100),
    AreaSqFt INT,
    Capacity INT,
    ContactPerson VARCHAR(100),
    Email VARCHAR(100),
    Phone VARCHAR(20),
    Facilities TEXT,
    AvailabilityStatus VARCHAR(20)
);

-- Insert 20 sample records
INSERT INTO Studios  ( StudioID ,Name ,Location ,AreaSqFt ,Capacity ,ContactPerson ,Email ,Phone ,Facilities ,AvailabilityStatus) VALUES
(1, 'Yash Raj Studios', 'Mumbai, Maharashtra', 50000, 300, 'Rohit Khanna', 'contact@yashrajfilms.com', '9820000001', 'Soundproof stages, editing suites, makeup rooms', 'Available'),
(2, 'Ramoji Film City', 'Hyderabad, Telangana', 2000000, 1000, 'Vikram Reddy', 'info@ramojifilmcity.com', '9820000002', 'Outdoor sets, hotels, post-production', 'Booked'),
(3, 'Mehboob Studios', 'Bandra, Mumbai', 80000, 250, 'Karan Mehta', 'booking@mehboobstudios.com', '9820000003', 'Indoor sets, cafeteria, dressing rooms', 'Available'),
(4, 'Film City Goregaon', 'Mumbai, Maharashtra', 520000, 600, 'Suresh Bhatia', 'info@filmcitymumbai.in', '9820000004', 'Open grounds, forest area, studios', 'Available'),
(5, 'Annapurna Studios', 'Hyderabad, Telangana', 450000, 400, 'Ravi Krishna', 'services@annapurnastudios.com', '9820000005', 'Sound stages, AV units, workshops', 'Booked'),
(6, 'AVM Studios', 'Chennai, Tamil Nadu', 100000, 350, 'Sathya Prakash', 'admin@avmstudios.com', '9820000006', 'Sound stages, editing bays, restrooms', 'Available'),
(7, 'Prasad Studios', 'Chennai, Tamil Nadu', 85000, 200, 'N. Balaji', 'bookings@prasadgroup.org', '9820000007', 'Editing, DI, sound mixing', 'Under Maintenance'),
(8, 'MGR Film City', 'Chennai, Tamil Nadu', 300000, 500, 'Rajendran Murthy', 'info@mgrfilmcity.in', '9820000008', 'Props, sets, post-production', 'Booked'),
(9, 'Lotus Studio', 'Andheri West, Mumbai', 60000, 220, 'Anjali Deshmukh', 'lotus@studios.com', '9820000009', 'Chroma rooms, vanity vans, generators', 'Available'),
(10, 'FutureWorks Studio', 'Lower Parel, Mumbai', 40000, 150, 'Imran Sheikh', 'support@futureworks.in', '9820000010', 'VFX, sound studio, lighting rigs', 'Available'),
(11, 'Whistling Woods Studio', 'Film City, Mumbai', 100000, 200, 'Nandini Rao', 'contact@whistlingwoods.com', '9820000011', 'Training, studio, editing lab', 'Available'),
(12, 'Balaji Telefilms Studio', 'Mumbai, Maharashtra', 75000, 280, 'Kavita Bansal', 'studios@balajitelefilms.com', '9820000012', 'Multi-cam setup, live recording', 'Booked'),
(13, 'Cinevista Studios', 'Kanjurmarg, Mumbai', 50000, 180, 'Manish Tiwari', 'contact@cinevistastudios.com', '9820000013', 'Set construction, power backup', 'Available'),
(14, 'Purple Pebble Studio', 'Juhu, Mumbai', 35000, 120, 'Sneha Joshi', 'admin@purplepebble.com', '9820000014', 'Green screen, voice recording', 'Booked'),
(15, 'Dharma Studios', 'Versova, Mumbai', 45000, 160, 'Nikhil Anand', 'info@dharmaproductions.com', '9820000015', 'Sound stages, dressing rooms', 'Available'),
(16, 'Phantom Studios', 'Mumbai, Maharashtra', 30000, 100, 'Vishal Patil', 'bookings@phantomfilms.in', '9820000016', 'Set lighting, camera support', 'Available'),
(17, 'Excel Studios', 'Bandra East, Mumbai', 42000, 140, 'Reena Shah', 'studio@excelmovies.com', '9820000017', 'Projection room, editing desk', 'Booked'),
(18, 'T-Series Studio', 'Noida, Uttar Pradesh', 90000, 350, 'Sameer Mehta', 'shoot@tseries.in', '9820000018', 'Sound recording, video studio', 'Available'),
(19, 'Sun Pictures Studio', 'Chennai, Tamil Nadu', 60000, 300, 'Arun Nair', 'studio@sunpictures.com', '9820000019', 'Editing, dubbing, outdoor units', 'Booked'),
(20, 'Hombale Studios', 'Bangalore, Karnataka', 55000, 250, 'Lakshmi V.', 'info@hombalefilms.com', '9820000020', 'Lighting rigs, post-production', 'Available');

-- to display table data
SELECT * FROM Studios;

-- to remove complete records and attributes from table
DROP TABLE Studios;

-- to remove complete records from table
TRUNCATE TABLE Studios;

-- 1. View: Studios that are Available
CREATE VIEW AvailableStudios AS
SELECT Name, Location, Capacity, AvailabilityStatus
FROM Studios
WHERE AvailabilityStatus = 'Available';

-- 2. View: Studios with large capacity (>300)
CREATE VIEW LargeStudios AS
SELECT Name, Capacity, AreaSqFt
FROM Studios
WHERE Capacity > 300;

-- 3. View: Studios in Mumbai
CREATE VIEW MumbaiStudios AS
SELECT Name, Location, ContactPerson
FROM Studios
WHERE Location LIKE '%Mumbai%';

-- 4. View: Studios with special facilities
CREATE VIEW StudiosWithFacilities AS
SELECT Name, Facilities
FROM Studios
WHERE Facilities IS NOT NULL;

-- 5. View: Studios under maintenance or booked
CREATE VIEW OccupiedStudios AS
SELECT Name, AvailabilityStatus
FROM Studios
WHERE AvailabilityStatus IN ('Booked', 'Under Maintenance');

-- 6. CTE: Studios with capacity > 250
WITH LargeCapacity AS (
    SELECT Name, Capacity
    FROM Studios
    WHERE Capacity > 250
)
SELECT * FROM LargeCapacity;

-- 7. CTE: Studios in Mumbai or Chennai
WITH MetroStudios AS (
    SELECT Name, Location
    FROM Studios
    WHERE Location LIKE '%Mumbai%' OR Location LIKE '%Chennai%'
)
SELECT * FROM MetroStudios;

-- 8. CTE: Average area by availability status
WITH AvgArea AS (
    SELECT AvailabilityStatus, AVG(AreaSqFt) AS AvgArea
    FROM Studios
    GROUP BY AvailabilityStatus
)
SELECT * FROM AvgArea;

-- 9. CTE: Studios with email domain
WITH EmailDomain AS (
    SELECT Name, Email
    FROM Studios
    WHERE Email LIKE '%@yashrajfilms.com%'
)
SELECT * FROM EmailDomain;

-- 10. CTE: Studios sorted by capacity
WITH StudioRank AS (
    SELECT Name, Capacity
    FROM Studios
    ORDER BY Capacity DESC
)
SELECT * FROM StudioRank;

-- 11. Procedure: Get studio by name
DELIMITER $$
CREATE PROCEDURE GetStudio(IN sName VARCHAR(100))
BEGIN
    SELECT * FROM Studios WHERE Name = sName;
END$$
DELIMITER ;

-- 12. Procedure: Get studios by availability
DELIMITER $$
CREATE PROCEDURE StudiosByStatus(IN status VARCHAR(20))
BEGIN
    SELECT Name, AvailabilityStatus, Capacity
    FROM Studios
    WHERE AvailabilityStatus = status;
END$$
DELIMITER ;

-- 13. Procedure: Update studio availability
DELIMITER $$
CREATE PROCEDURE UpdateAvailability(IN sID INT, IN newStatus VARCHAR(20))
BEGIN
    UPDATE Studios SET AvailabilityStatus = newStatus WHERE StudioID = sID;
END$$
DELIMITER ;

-- 14. Procedure: Delete studio by ID
DELIMITER $$
CREATE PROCEDURE DeleteStudio(IN sID INT)
BEGIN
    DELETE FROM Studios WHERE StudioID = sID;
END$$
DELIMITER ;

-- 15. Procedure: Get studios by minimum capacity
DELIMITER $$
CREATE PROCEDURE StudiosByCapacity(IN minCap INT)
BEGIN
    SELECT Name, Capacity, Location
    FROM Studios
    WHERE Capacity >= minCap;
END$$
DELIMITER ;

-- 16. Rank studios by capacity
SELECT Name, Capacity,
       RANK() OVER (ORDER BY Capacity DESC) AS CapacityRank
FROM Studios;

-- 17. Dense rank by area
SELECT Name, AreaSqFt,
       DENSE_RANK() OVER (ORDER BY AreaSqFt DESC) AS AreaRank
FROM Studios;

-- 18. Row number by capacity
SELECT Name, Capacity,
       ROW_NUMBER() OVER (ORDER BY Capacity DESC) AS RowNum
FROM Studios;

-- 19. Cumulative capacity
SELECT Name, Capacity,
       SUM(Capacity) OVER (ORDER BY AreaSqFt ASC) AS CumulativeCapacity
FROM Studios;

-- 20. Average capacity by AvailabilityStatus
SELECT Name, AvailabilityStatus, Capacity,
       AVG(Capacity) OVER (PARTITION BY AvailabilityStatus) AS AvgCapacity
FROM Studios;

-- 21. Grant SELECT privilege
GRANT SELECT ON Studios TO 'viewer'@'localhost';

-- 22. Grant INSERT privilege
GRANT INSERT ON Studios TO 'manager'@'localhost';

-- 23. Grant UPDATE privilege
GRANT UPDATE ON Studios TO 'manager'@'localhost';

-- 24. Revoke DELETE privilege
REVOKE DELETE ON Studios FROM 'manager'@'localhost';

-- 25. Revoke INSERT privilege
REVOKE INSERT ON Studios FROM 'manager'@'localhost';

-- 26. Transaction: Update availability with commit
START TRANSACTION;
UPDATE Studios SET AvailabilityStatus='Booked' WHERE StudioID=1;
COMMIT;

-- 27. Transaction: Update availability with rollback
START TRANSACTION;
UPDATE Studios SET AvailabilityStatus='Available' WHERE StudioID=2;
ROLLBACK;

-- 28. Savepoint example
START TRANSACTION;
UPDATE Studios SET Capacity=350 WHERE StudioID=3;
SAVEPOINT sp1;
UPDATE Studios SET Capacity=360 WHERE StudioID=4;
ROLLBACK TO sp1;
COMMIT;

-- 29. Insert new studio with rollback
START TRANSACTION;
INSERT INTO Studios(Name, Location, Capacity) VALUES('Test Studio','Test City',100);
ROLLBACK;

-- 30. Multiple updates in transaction
START TRANSACTION;
UPDATE Studios SET Capacity=Capacity+10 WHERE StudioID IN (5,6,7);
COMMIT;

-- 31. Before insert: default AvailabilityStatus
DELIMITER $$
CREATE TRIGGER trg_before_insert_studios
BEFORE INSERT ON Studios
FOR EACH ROW
BEGIN
    IF NEW.AvailabilityStatus IS NULL THEN
        SET NEW.AvailabilityStatus = 'Available';
    END IF;
END$$
DELIMITER ;

-- 32. After insert: log new studio
DELIMITER $$
CREATE TRIGGER trg_after_insert_studios
AFTER INSERT ON Studios
FOR EACH ROW
BEGIN
    INSERT INTO StudioLogs(StudioID, ActionType, ActionDate)
    VALUES (NEW.StudioID, 'INSERT', NOW());
END$$
DELIMITER ;

-- 33. Before update: log availability changes
DELIMITER $$
CREATE TRIGGER trg_before_update_studios
BEFORE UPDATE ON Studios
FOR EACH ROW
BEGIN
    IF NEW.AvailabilityStatus <> OLD.AvailabilityStatus THEN
        INSERT INTO StudioLogs(StudioID, ActionType, OldStatus, NewStatus, ActionDate)
        VALUES (OLD.StudioID, 'UPDATE', OLD.AvailabilityStatus, NEW.AvailabilityStatus, NOW());
    END IF;
END$$
DELIMITER ;

-- 34. After delete: log deleted studio
DELIMITER $$
CREATE TRIGGER trg_after_delete_studios
AFTER DELETE ON Studios
FOR EACH ROW
BEGIN
    INSERT INTO StudioLogs(StudioID, ActionType, ActionDate)
    VALUES (OLD.StudioID, 'DELETE', NOW());
END$$
DELIMITER ;

-- 35. Before insert: validate Capacity > 0
DELIMITER $$
CREATE TRIGGER trg_validate_capacity
BEFORE INSERT ON Studios
FOR EACH ROW
BEGIN
    IF NEW.Capacity <= 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Capacity must be greater than 0';
    END IF;
END$$
DELIMITER ;

-- 36. Count studios by availability
SELECT AvailabilityStatus, COUNT(*) AS TotalStudios
FROM Studios
GROUP BY AvailabilityStatus;

-- 37. Max capacity studio
SELECT Name, MAX(Capacity) AS MaxCapacity FROM Studios;

-- 38. Studios with capacity > 300
SELECT Name, Capacity FROM Studios WHERE Capacity > 300;

-- 39. Studios in Hyderabad
SELECT Name, Location FROM Studios WHERE Location LIKE '%Hyderabad%';

-- 40. Studios with email domain @yashrajfilms.com
SELECT Name, Email FROM Studios WHERE Email LIKE '%@yashrajfilms.com';

-- 41. Order studios by AreaSqFt descending
SELECT Name, AreaSqFt FROM Studios ORDER BY AreaSqFt DESC;

-- 42. Average studio capacity
SELECT AVG(Capacity) AS AvgCapacity FROM Studios;

-- 43. Studios with AvailabilityStatus = 'Booked'
SELECT Name, AvailabilityStatus FROM Studios WHERE AvailabilityStatus='Booked';

-- 44. Studios with capacity above average
SELECT Name, Capacity
FROM Studios
WHERE Capacity > (SELECT AVG(Capacity) FROM Studios);

-- 45. Count studios per location
SELECT Location, COUNT(*) AS CountStudios FROM Studios GROUP BY Location;

-- 46. Studios with large area (>100000 SqFt)
SELECT Name, AreaSqFt FROM Studios WHERE AreaSqFt > 100000;

-- 47. Studios name starting with 'A'
SELECT Name FROM Studios WHERE Name LIKE 'A%';

-- 48. Studios with capacity between 150 and 300
SELECT Name, Capacity FROM Studios WHERE Capacity BETWEEN 150 AND 300;

-- 49. Studios by decade of establishment (assuming ID represents order)
SELECT Name, CONCAT(FLOOR(StudioID/10)*10,'s') AS Decade FROM Studios;

-- 50. Top 5 largest studios by AreaSqFt
SELECT Name, AreaSqFt FROM Studios ORDER BY AreaSqFt DESC LIMIT 5;


-- Table 5. CrewMembers
CREATE TABLE CrewMembers (
    CrewID INT PRIMARY KEY,
    Name VARCHAR(100),
    Role VARCHAR(50),
    Gender VARCHAR(10),
    Phone VARCHAR(20),
    Email VARCHAR(100),
    ExperienceYears INT,
    Department VARCHAR(50),
    JoiningDate DATE,
    Status VARCHAR(20)
);

-- Insert 20 sample records
INSERT INTO CrewMembers  ( CrewID ,Name ,Role ,Gender ,Phone ,Email ,ExperienceYears ,Department ,JoiningDate , Status ) VALUES
(1, 'Rajesh Kumar', 'Cinematographer', 'Male', '9810000001', 'rajesh.cine@example.com', 12, 'Camera', '2011-06-15', 'Active'),
(2, 'Anita Desai', 'Makeup Artist', 'Female', '9810000002', 'anita.makeup@example.com', 8, 'Makeup', '2015-09-10', 'Active'),
(3, 'Rohit Sharma', 'Sound Designer', 'Male', '9810000003', 'rohit.sound@example.com', 10, 'Sound', '2013-02-05', 'Active'),
(4, 'Neha Mehra', 'Costume Designer', 'Female', '9810000004', 'neha.costume@example.com', 6, 'Costume', '2018-11-20', 'Active'),
(5, 'Amit Verma', 'Assistant Director', 'Male', '9810000005', 'amit.ad@example.com', 7, 'Direction', '2016-03-25', 'Active'),
(6, 'Pooja Rani', 'Art Director', 'Female', '9810000006', 'pooja.art@example.com', 9, 'Art', '2014-07-18', 'Active'),
(7, 'Suresh Iyer', 'Editor', 'Male', '9810000007', 'suresh.edit@example.com', 11, 'Editing', '2012-10-22', 'Active'),
(8, 'Tanvi Joshi', 'Production Assistant', 'Female', '9810000008', 'tanvi.prod@example.com', 4, 'Production', '2020-01-15', 'Active'),
(9, 'Dev Anand', 'Lighting Technician', 'Male', '9810000009', 'dev.lighting@example.com', 5, 'Lighting', '2019-04-10', 'Active'),
(10, 'Ritika Kapoor', 'Set Designer', 'Female', '9810000010', 'ritika.sets@example.com', 6, 'Set Design', '2018-06-01', 'Active'),
(11, 'Manish Tiwari', 'Location Manager', 'Male', '9810000011', 'manish.loc@example.com', 7, 'Location', '2016-09-12', 'Active'),
(12, 'Kiran Rao', 'Script Supervisor', 'Female', '9810000012', 'kiran.script@example.com', 10, 'Script', '2013-08-05', 'Active'),
(13, 'Prakash Singh', 'Stunt Coordinator', 'Male', '9810000013', 'prakash.stunts@example.com', 14, 'Action', '2009-12-20', 'Active'),
(14, 'Swati Patil', 'Hair Stylist', 'Female', '9810000014', 'swati.hair@example.com', 5, 'Makeup', '2019-03-10', 'Active'),
(15, 'Ajay Khanna', 'Boom Operator', 'Male', '9810000015', 'ajay.boom@example.com', 6, 'Sound', '2018-05-15', 'Active'),
(16, 'Meena Deshpande', 'Choreographer', 'Female', '9810000016', 'meena.dance@example.com', 13, 'Dance', '2010-07-25', 'Active'),
(17, 'Varun Shah', 'Gaffer', 'Male', '9810000017', 'varun.gaffer@example.com', 9, 'Lighting', '2015-10-30', 'Active'),
(18, 'Priya Nair', 'Wardrobe Assistant', 'Female', '9810000018', 'priya.wardrobe@example.com', 4, 'Costume', '2020-02-14', 'Active'),
(19, 'Ravi Menon', 'VFX Supervisor', 'Male', '9810000019', 'ravi.vfx@example.com', 11, 'VFX', '2012-11-11', 'Active'),
(20, 'Sana Ali', 'Still Photographer', 'Female', '9810000020', 'sana.photo@example.com', 7, 'Photography', '2016-06-06', 'Active');

-- to display table data
SELECT * FROM CrewMembers;

-- to remove complete records and attributes from table
DROP TABLE CrewMembers;

-- to remove complete records from table
TRUNCATE TABLE CrewMembers;

-- 1. View: All Active Crew Members
CREATE VIEW ActiveCrew AS
SELECT Name, Role, Department, Status
FROM CrewMembers
WHERE Status = 'Active';

-- 2. View: Crew Members in Camera Department
CREATE VIEW CameraCrew AS
SELECT Name, Role, ExperienceYears
FROM CrewMembers
WHERE Department = 'Camera';

-- 3. View: Female Crew Members
CREATE VIEW FemaleCrew AS
SELECT Name, Role, Department
FROM CrewMembers
WHERE Gender = 'Female';

-- 4. View: Experienced Crew Members (>10 years)
CREATE VIEW ExperiencedCrew AS
SELECT Name, Role, ExperienceYears
FROM CrewMembers
WHERE ExperienceYears > 10;

-- 5. View: Crew Members by Joining Date (recent first)
CREATE VIEW RecentJoiners AS
SELECT Name, Role, JoiningDate
FROM CrewMembers
ORDER BY JoiningDate DESC;

-- 6. CTE: Crew Members with Experience > 8 years
WITH Experienced AS (
    SELECT Name, Role, ExperienceYears
    FROM CrewMembers
    WHERE ExperienceYears > 8
)
SELECT * FROM Experienced;

-- 7. CTE: Crew Members by Department 'Sound' or 'Lighting'
WITH SoundLighting AS (
    SELECT Name, Role, Department
    FROM CrewMembers
    WHERE Department IN ('Sound', 'Lighting')
)
SELECT * FROM SoundLighting;

-- 8. CTE: Average experience by Department
WITH DeptAvg AS (
    SELECT Department, AVG(ExperienceYears) AS AvgExp
    FROM CrewMembers
    GROUP BY Department
)
SELECT * FROM DeptAvg;

-- 9. CTE: Crew Members joined after 2015
WITH RecentCrew AS (
    SELECT Name, Role, JoiningDate
    FROM CrewMembers
    WHERE JoiningDate > '2015-01-01'
)
SELECT * FROM RecentCrew;

-- 10. CTE: Rank Crew Members by Experience
WITH CrewRank AS (
    SELECT Name, Role, ExperienceYears
    FROM CrewMembers
    ORDER BY ExperienceYears DESC
)
SELECT * FROM CrewRank;
11–15: Stored Procedures
sql
Copy code
-- 11. Procedure: Get crew by name
DELIMITER $$
CREATE PROCEDURE GetCrew(IN cName VARCHAR(100))
BEGIN
    SELECT * FROM CrewMembers WHERE Name = cName;
END$$
DELIMITER ;

-- 12. Procedure: Get crew by department
DELIMITER $$
CREATE PROCEDURE CrewByDept(IN dept VARCHAR(50))
BEGIN
    SELECT Name, Role, ExperienceYears
    FROM CrewMembers
    WHERE Department = dept;
END$$
DELIMITER ;

-- 13. Procedure: Update crew status
DELIMITER $$
CREATE PROCEDURE UpdateStatus(IN cID INT, IN newStatus VARCHAR(20))
BEGIN
    UPDATE CrewMembers SET Status = newStatus WHERE CrewID = cID;
END$$
DELIMITER ;

-- 14. Procedure: Delete crew member by ID
DELIMITER $$
CREATE PROCEDURE DeleteCrew(IN cID INT)
BEGIN
    DELETE FROM CrewMembers WHERE CrewID = cID;
END$$
DELIMITER ;

-- 15. Procedure: Get crew with minimum experience
DELIMITER $$
CREATE PROCEDURE CrewByMinExperience(IN minExp INT)
BEGIN
    SELECT Name, Role, ExperienceYears
    FROM CrewMembers
    WHERE ExperienceYears >= minExp;
END$$
DELIMITER ;

-- 16. Rank crew by experience
SELECT Name, Role, ExperienceYears,
       RANK() OVER (ORDER BY ExperienceYears DESC) AS ExpRank
FROM CrewMembers;

-- 17. Dense rank crew by Department and Experience
SELECT Name, Department, ExperienceYears,
       DENSE_RANK() OVER (PARTITION BY Department ORDER BY ExperienceYears DESC) AS DeptRank
FROM CrewMembers;

-- 18. Row number by joining date
SELECT Name, JoiningDate,
       ROW_NUMBER() OVER (ORDER BY JoiningDate DESC) AS RowNum
FROM CrewMembers;

-- 19. Cumulative experience by department
SELECT Name, Department, ExperienceYears,
       SUM(ExperienceYears) OVER (PARTITION BY Department ORDER BY JoiningDate) AS CumulativeExp
FROM CrewMembers;

-- 20. Average experience per Department
SELECT Name, Department, ExperienceYears,
       AVG(ExperienceYears) OVER (PARTITION BY Department) AS AvgDeptExp
FROM CrewMembers;

-- 21. Grant SELECT privilege
GRANT SELECT ON CrewMembers TO 'viewer'@'localhost';

-- 22. Grant INSERT privilege
GRANT INSERT ON CrewMembers TO 'manager'@'localhost';

-- 23. Grant UPDATE privilege
GRANT UPDATE ON CrewMembers TO 'manager'@'localhost';

-- 24. Revoke DELETE privilege
REVOKE DELETE ON CrewMembers FROM 'manager'@'localhost';

-- 25. Revoke INSERT privilege
REVOKE INSERT ON CrewMembers FROM 'manager'@'localhost';

-- 26. Transaction: Update status with commit
START TRANSACTION;
UPDATE CrewMembers SET Status='Inactive' WHERE CrewID=1;
COMMIT;

-- 27. Transaction: Update status with rollback
START TRANSACTION;
UPDATE CrewMembers SET Status='Active' WHERE CrewID=2;
ROLLBACK;

-- 28. Transaction with savepoint
START TRANSACTION;
UPDATE CrewMembers SET ExperienceYears=ExperienceYears+1 WHERE CrewID=3;
SAVEPOINT sp1;
UPDATE CrewMembers SET ExperienceYears=ExperienceYears+2 WHERE CrewID=4;
ROLLBACK TO sp1;
COMMIT;

-- 29. Insert new crew with rollback
START TRANSACTION;
INSERT INTO CrewMembers(Name, Role, Department) VALUES('Test Crew','Assistant','Production');
ROLLBACK;

-- 30. Multiple updates in transaction
START TRANSACTION;
UPDATE CrewMembers SET ExperienceYears=ExperienceYears+1 WHERE CrewID IN (5,6,7);
COMMIT;

-- 31. Before insert: default Status
DELIMITER $$
CREATE TRIGGER trg_before_insert_crew
BEFORE INSERT ON CrewMembers
FOR EACH ROW
BEGIN
    IF NEW.Status IS NULL THEN
        SET NEW.Status = 'Active';
    END IF;
END$$
DELIMITER ;

-- 32. After insert: log new crew
DELIMITER $$
CREATE TRIGGER trg_after_insert_crew
AFTER INSERT ON CrewMembers
FOR EACH ROW
BEGIN
    INSERT INTO CrewLogs(CrewID, ActionType, ActionDate)
    VALUES (NEW.CrewID, 'INSERT', NOW());
END$$
DELIMITER ;

-- 33. Before update: log status changes
DELIMITER $$
CREATE TRIGGER trg_before_update_crew
BEFORE UPDATE ON CrewMembers
FOR EACH ROW
BEGIN
    IF NEW.Status <> OLD.Status THEN
        INSERT INTO CrewLogs(CrewID, ActionType, OldStatus, NewStatus, ActionDate)
        VALUES (OLD.CrewID, 'UPDATE', OLD.Status, NEW.Status, NOW());
    END IF;
END$$
DELIMITER ;

-- 34. After delete: log deleted crew
DELIMITER $$
CREATE TRIGGER trg_after_delete_crew
AFTER DELETE ON CrewMembers
FOR EACH ROW
BEGIN
    INSERT INTO CrewLogs(CrewID, ActionType, ActionDate)
    VALUES (OLD.CrewID, 'DELETE', NOW());
END$$
DELIMITER ;

-- 35. Before insert: validate ExperienceYears > 0
DELIMITER $$
CREATE TRIGGER trg_validate_experience
BEFORE INSERT ON CrewMembers
FOR EACH ROW
BEGIN
    IF NEW.ExperienceYears <= 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'ExperienceYears must be greater than 0';
    END IF;
END$$
DELIMITER ;

-- 36. Count crew members by department
SELECT Department, COUNT(*) AS TotalCrew
FROM CrewMembers
GROUP BY Department;

-- 37. Max experience crew
SELECT Name, MAX(ExperienceYears) AS MaxExperience FROM CrewMembers;

-- 38. Crew members with ExperienceYears > 10
SELECT Name, Role, ExperienceYears FROM CrewMembers WHERE ExperienceYears > 10;

-- 39. Female crew in Makeup department
SELECT Name, Role FROM CrewMembers WHERE Gender='Female' AND Department='Makeup';

-- 40. Crew joined after 2015
SELECT Name, JoiningDate FROM CrewMembers WHERE JoiningDate > '2015-01-01';

-- 41. Order crew by ExperienceYears descending
SELECT Name, ExperienceYears FROM CrewMembers ORDER BY ExperienceYears DESC;

-- 42. Average experience of all crew members
SELECT AVG(ExperienceYears) AS AvgExperience FROM CrewMembers;

-- 43. Active crew members count
SELECT COUNT(*) AS ActiveCrew FROM CrewMembers WHERE Status='Active';

-- 44. Crew with experience above average
SELECT Name, ExperienceYears
FROM CrewMembers
WHERE ExperienceYears > (SELECT AVG(ExperienceYears) FROM CrewMembers);

-- 45. Count crew per gender
SELECT Gender, COUNT(*) AS CountCrew FROM CrewMembers GROUP BY Gender;

-- 46. Crew with role containing 'Director'
SELECT Name, Role FROM CrewMembers WHERE Role LIKE '%Director%';

-- 47. Crew name starting with 'R'
SELECT Name FROM CrewMembers WHERE Name LIKE 'R%';

-- 48. Crew with ExperienceYears between 5 and 10
SELECT Name, ExperienceYears FROM CrewMembers WHERE ExperienceYears BETWEEN 5 AND 10;

-- 49. Crew joined by year
SELECT Name, YEAR(JoiningDate) AS JoinYear FROM CrewMembers;

-- 50. Top 5 most experienced crew members
SELECT Name, ExperienceYears FROM CrewMembers ORDER BY ExperienceYears DESC LIMIT 5;



-- Table 6. ProductionCompanies
CREATE TABLE ProductionCompanies (
    CompanyID INT PRIMARY KEY,
    Name VARCHAR(100),
    FoundedYear INT,
    CEO VARCHAR(100),
    Headquarters VARCHAR(100),
    Email VARCHAR(100),
    Phone VARCHAR(20),
    TotalFilmsProduced INT,
    GenreSpecialization VARCHAR(50),
    Status VARCHAR(20)
);

-- Insert 20 sample records
INSERT INTO ProductionCompanies ( CompanyID ,Name ,FoundedYear ,CEO ,Headquarters ,Email ,Phone ,TotalFilmsProduced ,GenreSpecialization ,Status )  VALUES
(1, 'Dharma Productions', 1979, 'Karan Johar', 'Mumbai', 'contact@dharma.in', '022-23456789', 85, 'Romance', 'Active'),
(2, 'Yash Raj Films', 1970, 'Aditya Chopra', 'Mumbai', 'info@yashrajfilms.com', '022-12345678', 110, 'Drama', 'Active'),
(3, 'Red Chillies Entertainment', 2002, 'Shah Rukh Khan', 'Mumbai', 'info@redchillies.com', '022-87654321', 40, 'Action', 'Active'),
(4, 'Balaji Motion Pictures', 2001, 'Ekta Kapoor', 'Mumbai', 'info@balajimotion.com', '022-56781234', 65, 'Thriller', 'Active'),
(5, 'Eros International', 1977, 'Sunil Lulla', 'Mumbai', 'contact@erosintl.com', '022-34567890', 95, 'Mythology', 'Active'),
(6, 'Viacom18 Studios', 2006, 'Ajit Andhare', 'Mumbai', 'info@viacom18.in', '022-65478903', 70, 'Comedy', 'Active'),
(7, 'Reliance Entertainment', 2005, 'Shibashish Sarkar', 'Mumbai', 'contact@relianceentertainment.com', '022-34523456', 80, 'Drama', 'Active'),
(8, 'UTV Motion Pictures', 1996, 'Ronnie Screwvala', 'Mumbai', 'utv@disney.in', '022-98765432', 75, 'Adventure', 'Inactive'),
(9, 'Excel Entertainment', 1999, 'Ritesh Sidhwani', 'Mumbai', 'info@excelmovies.com', '022-45612378', 45, 'Youth', 'Active'),
(10, 'Phantom Films', 2011, 'Madhu Mantena', 'Mumbai', 'hello@phantom.in', '022-90817263', 30, 'Crime', 'Inactive'),
(11, 'Sri Venkateswara Creations', 2003, 'Dil Raju', 'Hyderabad', 'svc@filmproduction.com', '040-22334455', 60, 'Family', 'Active'),
(12, 'Geetha Arts', 1972, 'Allu Aravind', 'Hyderabad', 'contact@geethaarts.in', '040-55667788', 90, 'Masala', 'Active'),
(13, 'Lyca Productions', 2014, 'Subaskaran Allirajah', 'Chennai', 'info@lycaproductions.in', '044-33445566', 25, 'Sci-Fi', 'Active'),
(14, 'Sun Pictures', 2008, 'Kalanithi Maran', 'Chennai', 'sunpictures@sun.in', '044-22336655', 50, 'Action', 'Active'),
(15, 'AVM Productions', 1945, 'M. Saravanan', 'Chennai', 'avm@avm.in', '044-26123456', 100, 'Drama', 'Active'),
(16, 'Rajkamal Films International', 1981, 'Kamal Haasan', 'Chennai', 'info@rajkamalfilms.com', '044-23456789', 45, 'Experimental', 'Active'),
(17, 'Suresh Productions', 1964, 'Daggubati Suresh Babu', 'Hyderabad', 'contact@sureshprod.in', '040-22332211', 110, 'Family', 'Active'),
(18, 'Annapurna Studios', 1975, 'Nagarjuna Akkineni', 'Hyderabad', 'info@annapurna.in', '040-99887766', 85, 'Drama', 'Active'),
(19, 'Rajshri Productions', 1947, 'Sooraj Barjatya', 'Mumbai', 'rajshri@films.in', '022-44556677', 95, 'Family', 'Active'),
(20, 'Pen Studios', 1987, 'Jayantilal Gada', 'Mumbai', 'info@penstudios.in', '022-66778899', 60, 'Historical', 'Active');

-- to display table data
SELECT * FROM ProductionCompanies;

-- to remove complete records and attributes from table
DROP TABLE ProductionCompanies;

-- to remove complete records from table
TRUNCATE TABLE ProductionCompanies;

-- 1. View: All Active Production Companies
CREATE VIEW ActiveCompanies AS
SELECT Name, CEO, Headquarters, Status
FROM ProductionCompanies
WHERE Status = 'Active';

-- 2. View: Companies founded before 2000
CREATE VIEW OldCompanies AS
SELECT Name, FoundedYear, CEO
FROM ProductionCompanies
WHERE FoundedYear < 2000;

-- 3. View: Companies specializing in Action genre
CREATE VIEW ActionCompanies AS
SELECT Name, GenreSpecialization, TotalFilmsProduced
FROM ProductionCompanies
WHERE GenreSpecialization = 'Action';

-- 4. View: Companies in Hyderabad
CREATE VIEW HyderabadCompanies AS
SELECT Name, CEO, Headquarters
FROM ProductionCompanies
WHERE Headquarters LIKE '%Hyderabad%';

-- 5. View: Companies producing more than 80 films
CREATE VIEW TopProducers AS
SELECT Name, TotalFilmsProduced, GenreSpecialization
FROM ProductionCompanies
WHERE TotalFilmsProduced > 80;

-- 6. CTE: Active companies founded after 2000
WITH RecentActive AS (
    SELECT Name, FoundedYear, CEO
    FROM ProductionCompanies
    WHERE Status='Active' AND FoundedYear > 2000
)
SELECT * FROM RecentActive;

-- 7. CTE: Companies grouped by genre with more than 50 films
WITH GenreBig AS (
    SELECT Name, GenreSpecialization, TotalFilmsProduced
    FROM ProductionCompanies
    WHERE TotalFilmsProduced > 50
)
SELECT * FROM GenreBig;

-- 8. CTE: Average films produced by headquarters city
WITH CityAvg AS (
    SELECT Headquarters, AVG(TotalFilmsProduced) AS AvgFilms
    FROM ProductionCompanies
    GROUP BY Headquarters
)
SELECT * FROM CityAvg;

-- 9. CTE: Companies with names starting with 'R'
WITH RCompanies AS (
    SELECT Name, CEO
    FROM ProductionCompanies
    WHERE Name LIKE 'R%'
)
SELECT * FROM RCompanies;

-- 10. CTE: Rank companies by TotalFilmsProduced
WITH CompanyRank AS (
    SELECT Name, TotalFilmsProduced
    FROM ProductionCompanies
    ORDER BY TotalFilmsProduced DESC
)
SELECT * FROM CompanyRank;

-- 11. Procedure: Get company by name
DELIMITER $$
CREATE PROCEDURE GetCompany(IN cName VARCHAR(100))
BEGIN
    SELECT * FROM ProductionCompanies WHERE Name = cName;
END$$
DELIMITER ;

-- 12. Procedure: Get companies by status
DELIMITER $$
CREATE PROCEDURE CompaniesByStatus(IN cStatus VARCHAR(20))
BEGIN
    SELECT Name, CEO, Status FROM ProductionCompanies WHERE Status = cStatus;
END$$
DELIMITER ;

-- 13. Procedure: Update TotalFilmsProduced
DELIMITER $$
CREATE PROCEDURE UpdateFilms(IN cID INT, IN films INT)
BEGIN
    UPDATE ProductionCompanies SET TotalFilmsProduced = films WHERE CompanyID = cID;
END$$
DELIMITER ;

-- 14. Procedure: Delete company by ID
DELIMITER $$
CREATE PROCEDURE DeleteCompany(IN cID INT)
BEGIN
    DELETE FROM ProductionCompanies WHERE CompanyID = cID;
END$$
DELIMITER ;

-- 15. Procedure: Get companies with TotalFilmsProduced > X
DELIMITER $$
CREATE PROCEDURE CompaniesByFilms(IN minFilms INT)
BEGIN
    SELECT Name, TotalFilmsProduced, GenreSpecialization
    FROM ProductionCompanies
    WHERE TotalFilmsProduced >= minFilms;
END$$
DELIMITER ;

-- 16. Rank companies by TotalFilmsProduced
SELECT Name, TotalFilmsProduced,
       RANK() OVER (ORDER BY TotalFilmsProduced DESC) AS FilmRank
FROM ProductionCompanies;

-- 17. Dense rank companies by Headquarters
SELECT Name, Headquarters, TotalFilmsProduced,
       DENSE_RANK() OVER (PARTITION BY Headquarters ORDER BY TotalFilmsProduced DESC) AS CityRank
FROM ProductionCompanies;

-- 18. Row number by FoundedYear
SELECT Name, FoundedYear,
       ROW_NUMBER() OVER (ORDER BY FoundedYear ASC) AS RowNum
FROM ProductionCompanies;

-- 19. Cumulative films produced by headquarters
SELECT Name, Headquarters, TotalFilmsProduced,
       SUM(TotalFilmsProduced) OVER (PARTITION BY Headquarters ORDER BY FoundedYear) AS CumFilms
FROM ProductionCompanies;

-- 20. Average films per headquarters
SELECT Name, Headquarters, TotalFilmsProduced,
       AVG(TotalFilmsProduced) OVER (PARTITION BY Headquarters) AS AvgCityFilms
FROM ProductionCompanies;

-- 21. Grant SELECT privilege
GRANT SELECT ON ProductionCompanies TO 'viewer'@'localhost';

-- 22. Grant INSERT privilege
GRANT INSERT ON ProductionCompanies TO 'manager'@'localhost';

-- 23. Grant UPDATE privilege
GRANT UPDATE ON ProductionCompanies TO 'manager'@'localhost';

-- 24. Revoke DELETE privilege
REVOKE DELETE ON ProductionCompanies FROM 'manager'@'localhost';

-- 25. Revoke INSERT privilege
REVOKE INSERT ON ProductionCompanies FROM 'manager'@'localhost';

-- 26. Transaction: Update status with commit
START TRANSACTION;
UPDATE ProductionCompanies SET Status='Inactive' WHERE CompanyID=1;
COMMIT;

-- 27. Transaction: Update status with rollback
START TRANSACTION;
UPDATE ProductionCompanies SET Status='Active' WHERE CompanyID=2;
ROLLBACK;

-- 28. Transaction with savepoint
START TRANSACTION;
UPDATE ProductionCompanies SET TotalFilmsProduced=TotalFilmsProduced+5 WHERE CompanyID=3;
SAVEPOINT sp1;
UPDATE ProductionCompanies SET TotalFilmsProduced=TotalFilmsProduced+10 WHERE CompanyID=4;
ROLLBACK TO sp1;
COMMIT;

-- 29. Insert new company with rollback
START TRANSACTION;
INSERT INTO ProductionCompanies(Name, CEO, Headquarters, Status) VALUES('Test Prod','John Doe','Mumbai','Active');
ROLLBACK;

-- 30. Multiple updates in transaction
START TRANSACTION;
UPDATE ProductionCompanies SET TotalFilmsProduced=TotalFilmsProduced+1 WHERE CompanyID IN (5,6,7);
COMMIT;

-- 31. Before insert: default Status
DELIMITER $$
CREATE TRIGGER trg_before_insert_company
BEFORE INSERT ON ProductionCompanies
FOR EACH ROW
BEGIN
    IF NEW.Status IS NULL THEN
        SET NEW.Status = 'Active';
    END IF;
END$$
DELIMITER ;

-- 32. After insert: log new company
DELIMITER $$
CREATE TRIGGER trg_after_insert_company
AFTER INSERT ON ProductionCompanies
FOR EACH ROW
BEGIN
    INSERT INTO CompanyLogs(CompanyID, ActionType, ActionDate)
    VALUES (NEW.CompanyID, 'INSERT', NOW());
END$$
DELIMITER ;

-- 33. Before update: log status changes
DELIMITER $$
CREATE TRIGGER trg_before_update_company
BEFORE UPDATE ON ProductionCompanies
FOR EACH ROW
BEGIN
    IF NEW.Status <> OLD.Status THEN
        INSERT INTO CompanyLogs(CompanyID, ActionType, OldStatus, NewStatus, ActionDate)
        VALUES (OLD.CompanyID, 'UPDATE', OLD.Status, NEW.Status, NOW());
    END IF;
END$$
DELIMITER ;

-- 34. After delete: log deleted company
DELIMITER $$
CREATE TRIGGER trg_after_delete_company
AFTER DELETE ON ProductionCompanies
FOR EACH ROW
BEGIN
    INSERT INTO CompanyLogs(CompanyID, ActionType, ActionDate)
    VALUES (OLD.CompanyID, 'DELETE', NOW());
END$$
DELIMITER ;

-- 35. Before insert: validate TotalFilmsProduced > 0
DELIMITER $$
CREATE TRIGGER trg_validate_films
BEFORE INSERT ON ProductionCompanies
FOR EACH ROW
BEGIN
    IF NEW.TotalFilmsProduced < 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'TotalFilmsProduced must be >= 0';
    END IF;
END$$
DELIMITER ;

-- 36. Count companies by Headquarters
SELECT Headquarters, COUNT(*) AS TotalCompanies FROM ProductionCompanies GROUP BY Headquarters;

-- 37. Max films produced company
SELECT Name, MAX(TotalFilmsProduced) AS MaxFilms FROM ProductionCompanies;

-- 38. Companies with more than 80 films
SELECT Name, TotalFilmsProduced FROM ProductionCompanies WHERE TotalFilmsProduced > 80;

-- 39. Active companies in Chennai
SELECT Name, CEO FROM ProductionCompanies WHERE Headquarters='Chennai' AND Status='Active';

-- 40. Companies founded after 2000
SELECT Name, FoundedYear FROM ProductionCompanies WHERE FoundedYear > 2000;

-- 41. Order companies by TotalFilmsProduced descending
SELECT Name, TotalFilmsProduced FROM ProductionCompanies ORDER BY TotalFilmsProduced DESC;

-- 42. Average films produced
SELECT AVG(TotalFilmsProduced) AS AvgFilms FROM ProductionCompanies;

-- 43. Active companies count
SELECT COUNT(*) AS ActiveCompanies FROM ProductionCompanies WHERE Status='Active';

-- 44. Companies with films above average
SELECT Name, TotalFilmsProduced FROM ProductionCompanies
WHERE TotalFilmsProduced > (SELECT AVG(TotalFilmsProduced) FROM ProductionCompanies);

-- 45. Count companies per Status
SELECT Status, COUNT(*) AS CountCompanies FROM ProductionCompanies GROUP BY Status;

-- 46. Companies with 'Productions' in Name
SELECT Name, CEO FROM ProductionCompanies WHERE Name LIKE '%Productions%';

-- 47. Companies starting with 'S'
SELECT Name FROM ProductionCompanies WHERE Name LIKE 'S%';

-- 48. Companies producing 50–100 films
SELECT Name, TotalFilmsProduced FROM ProductionCompanies WHERE TotalFilmsProduced BETWEEN 50 AND 100;

-- 49. Companies founded by decade
SELECT Name, FLOOR(FoundedYear/10)*10 AS Decade FROM ProductionCompanies;

-- 50. Top 5 most productive companies
SELECT Name, TotalFilmsProduced FROM ProductionCompanies ORDER BY TotalFilmsProduced DESC LIMIT 5;


-- Table 7. FilmGenres
CREATE TABLE FilmGenres (
    GenreID INT PRIMARY KEY,
    Name VARCHAR(50),
    Description TEXT,
    PopularityRank INT,
    SuitableForKids BOOLEAN,
    AverageDuration INT,
    TypicalBudgetRange VARCHAR(50),
    LanguageOrigin VARCHAR(50),
    FirstAppearedYear INT,
    ActiveStatus VARCHAR(20)
);

-- Insert 20 sample records
INSERT INTO FilmGenres   (GenreID ,Name ,Description ,PopularityRank ,SuitableForKids ,AverageDuration ,TypicalBudgetRange ,LanguageOrigin ,FirstAppearedYear ,ActiveStatus ) VALUES
(1, 'Drama', 'Emotionally intense stories focused on relationships and life struggles.', 1, TRUE, 140, '5-20 Crore', 'Hindi', 1930, 'Active'),
(2, 'Comedy', 'Light-hearted and humorous films meant to entertain.', 2, TRUE, 130, '3-15 Crore', 'Hindi', 1935, 'Active'),
(3, 'Action', 'High-paced sequences involving fights, stunts, and heroism.', 3, FALSE, 150, '10-100 Crore', 'Hindi', 1950, 'Active'),
(4, 'Romance', 'Love-centered stories exploring relationships and emotions.', 4, TRUE, 135, '5-25 Crore', 'Hindi', 1940, 'Active'),
(5, 'Thriller', 'Suspenseful and tension-filled narratives with twists.', 5, FALSE, 120, '8-30 Crore', 'Hindi', 1970, 'Active'),
(6, 'Mythological', 'Based on Hindu epics like Ramayana and Mahabharata.', 6, TRUE, 160, '10-50 Crore', 'Sanskrit/Hindi', 1932, 'Active'),
(7, 'Horror', 'Scary and supernatural themes to frighten the audience.', 7, FALSE, 110, '2-10 Crore', 'Hindi', 1960, 'Active'),
(8, 'Musical', 'Film heavily driven by songs and dances.', 8, TRUE, 140, '6-25 Crore', 'Hindi', 1950, 'Active'),
(9, 'Biopic', 'Films based on real lives of notable Indian figures.', 9, TRUE, 150, '15-60 Crore', 'Hindi', 1990, 'Active'),
(10, 'Crime', 'Deals with underworld, police, and criminal investigations.', 10, FALSE, 130, '8-40 Crore', 'Hindi', 1975, 'Active'),
(11, 'Fantasy', 'Fictional worlds with imaginative settings and magic.', 11, TRUE, 145, '20-100 Crore', 'Hindi', 2000, 'Active'),
(12, 'Sci-Fi', 'Science and futuristic concepts like time travel, AI.', 12, FALSE, 140, '15-80 Crore', 'Hindi', 2008, 'Active'),
(13, 'Historical', 'Based on historical events or characters in India.', 13, TRUE, 155, '25-150 Crore', 'Hindi', 1965, 'Active'),
(14, 'Devotional', 'Religious themes focused on gods and spiritual values.', 14, TRUE, 120, '2-10 Crore', 'Hindi', 1931, 'Active'),
(15, 'Political', 'Films exploring Indian political system and ideologies.', 15, FALSE, 135, '8-35 Crore', 'Hindi', 1980, 'Active'),
(16, 'Animation', 'Cartoon-based or computer-animated films.', 16, TRUE, 100, '5-30 Crore', 'Hindi', 2005, 'Active'),
(17, 'Masala', 'Mixed genre with action, comedy, romance, and drama.', 17, TRUE, 150, '10-70 Crore', 'Hindi', 1980, 'Active'),
(18, 'War', 'Depictions of Indian army and historical battles.', 18, FALSE, 160, '30-150 Crore', 'Hindi', 1962, 'Active'),
(19, 'Documentary', 'Non-fictional presentation of facts and real stories.', 19, TRUE, 90, '1-5 Crore', 'Hindi', 1985, 'Active'),
(20, 'Art House', 'Offbeat and experimental Indian cinema.', 20, FALSE, 120, '2-8 Crore', 'Hindi', 1970, 'Active');

-- to display table data
SELECT * FROM FilmGenres;

-- to remove complete records and attributes from table
DROP TABLE FilmGenres;

-- to remove complete records from table
TRUNCATE TABLE FilmGenres;

-- 1. View: All active genres
CREATE VIEW ActiveGenres AS
SELECT Name, PopularityRank, SuitableForKids, ActiveStatus
FROM FilmGenres
WHERE ActiveStatus = 'Active';

-- 2. View: Genres suitable for kids
CREATE VIEW KidsFriendlyGenres AS
SELECT Name, AverageDuration, TypicalBudgetRange
FROM FilmGenres
WHERE SuitableForKids = TRUE;

-- 3. View: High budget genres
CREATE VIEW HighBudgetGenres AS
SELECT Name, TypicalBudgetRange
FROM FilmGenres
WHERE TypicalBudgetRange LIKE '2-%' OR TypicalBudgetRange LIKE '10-%';

-- 4. View: Genres introduced before 1950
CREATE VIEW ClassicGenres AS
SELECT Name, FirstAppearedYear
FROM FilmGenres
WHERE FirstAppearedYear < 1950;

-- 5. View: Popular genres (Rank 1–5)
CREATE VIEW TopGenres AS
SELECT Name, PopularityRank
FROM FilmGenres
WHERE PopularityRank <= 5;

-- 6. CTE: Genres with average duration > 140 mins
WITH LongDuration AS (
    SELECT Name, AverageDuration, TypicalBudgetRange
    FROM FilmGenres
    WHERE AverageDuration > 140
)
SELECT * FROM LongDuration;

-- 7. CTE: Genres ranked by PopularityRank
WITH RankedGenres AS (
    SELECT Name, PopularityRank
    FROM FilmGenres
    ORDER BY PopularityRank ASC
)
SELECT * FROM RankedGenres;

-- 8. CTE: Genres suitable for kids grouped by decade
WITH KidsGenres AS (
    SELECT Name, FirstAppearedYear, FLOOR(FirstAppearedYear/10)*10 AS Decade
    FROM FilmGenres
    WHERE SuitableForKids = TRUE
)
SELECT Decade, COUNT(*) AS TotalGenres FROM KidsGenres GROUP BY Decade;

-- 9. CTE: Genres with average budget > 50 Crore (approx parsing)
WITH HighBudget AS (
    SELECT Name, TypicalBudgetRange
    FROM FilmGenres
    WHERE TypicalBudgetRange REGEXP '^[5-9]|[1-9][0-9]'
)
SELECT * FROM HighBudget;

-- 10. CTE: Latest genres (first appeared after 2000)
WITH RecentGenres AS (
    SELECT Name, FirstAppearedYear
    FROM FilmGenres
    WHERE FirstAppearedYear > 2000
)
SELECT * FROM RecentGenres;

-- 11. Procedure: Get genre by name
DELIMITER $$
CREATE PROCEDURE GetGenre(IN gName VARCHAR(50))
BEGIN
    SELECT * FROM FilmGenres WHERE Name = gName;
END$$
DELIMITER ;

-- 12. Procedure: Genres suitable for kids
DELIMITER $$
CREATE PROCEDURE KidsGenresList()
BEGIN
    SELECT Name, AverageDuration, TypicalBudgetRange FROM FilmGenres WHERE SuitableForKids = TRUE;
END$$
DELIMITER ;

-- 13. Procedure: Update PopularityRank
DELIMITER $$
CREATE PROCEDURE UpdateGenreRank(IN gID INT, IN newRank INT)
BEGIN
    UPDATE FilmGenres SET PopularityRank = newRank WHERE GenreID = gID;
END$$
DELIMITER ;

-- 14. Procedure: Deactivate genre
DELIMITER $$
CREATE PROCEDURE DeactivateGenre(IN gID INT)
BEGIN
    UPDATE FilmGenres SET ActiveStatus='Inactive' WHERE GenreID = gID;
END$$
DELIMITER ;

-- 15. Procedure: Get genres by budget pattern
DELIMITER $$
CREATE PROCEDURE GenresByBudget(IN pattern VARCHAR(50))
BEGIN
    SELECT Name, TypicalBudgetRange FROM FilmGenres WHERE TypicalBudgetRange LIKE pattern;
END$$
DELIMITER ;

-- 16. Rank genres by PopularityRank
SELECT Name, PopularityRank,
       RANK() OVER (ORDER BY PopularityRank ASC) AS GenreRank
FROM FilmGenres;

-- 17. Dense rank by AverageDuration
SELECT Name, AverageDuration,
       DENSE_RANK() OVER (ORDER BY AverageDuration DESC) AS DurationRank
FROM FilmGenres;

-- 18. Row number by FirstAppearedYear
SELECT Name, FirstAppearedYear,
       ROW_NUMBER() OVER (ORDER BY FirstAppearedYear ASC) AS RowNum
FROM FilmGenres;

-- 19. Cumulative duration by SuitableForKids
SELECT Name, AverageDuration, SuitableForKids,
       SUM(AverageDuration) OVER (PARTITION BY SuitableForKids ORDER BY PopularityRank) AS CumDuration
FROM FilmGenres;

-- 20. Average duration by SuitableForKids
SELECT Name, AverageDuration, SuitableForKids,
       AVG(AverageDuration) OVER (PARTITION BY SuitableForKids) AS AvgDuration
FROM FilmGenres;

-- 21. Grant SELECT privilege
GRANT SELECT ON FilmGenres TO 'viewer'@'localhost';

-- 22. Grant INSERT privilege
GRANT INSERT ON FilmGenres TO 'editor'@'localhost';

-- 23. Grant UPDATE privilege
GRANT UPDATE ON FilmGenres TO 'editor'@'localhost';

-- 24. Revoke DELETE privilege
REVOKE DELETE ON FilmGenres FROM 'editor'@'localhost';

-- 25. Revoke INSERT privilege
REVOKE INSERT ON FilmGenres FROM 'editor'@'localhost';

-- 26. Update PopularityRank with commit
START TRANSACTION;
UPDATE FilmGenres SET PopularityRank = 1 WHERE GenreID = 2;
COMMIT;

-- 27. Update PopularityRank with rollback
START TRANSACTION;
UPDATE FilmGenres SET PopularityRank = 10 WHERE GenreID = 3;
ROLLBACK;

-- 28. Multiple updates with savepoint
START TRANSACTION;
UPDATE FilmGenres SET AverageDuration = AverageDuration + 10 WHERE GenreID IN (1,2);
SAVEPOINT sp1;
UPDATE FilmGenres SET AverageDuration = AverageDuration + 5 WHERE GenreID = 3;
ROLLBACK TO sp1;
COMMIT;

-- 29. Insert genre with rollback
START TRANSACTION;
INSERT INTO FilmGenres(Name, ActiveStatus) VALUES('Experimental', 'Active');
ROLLBACK;

-- 30. Update ActiveStatus for multiple genres
START TRANSACTION;
UPDATE FilmGenres SET ActiveStatus='Inactive' WHERE GenreID IN (7,12,15);
COMMIT;

-- 31. Before insert: default ActiveStatus
DELIMITER $$
CREATE TRIGGER trg_before_insert_genre
BEFORE INSERT ON FilmGenres
FOR EACH ROW
BEGIN
    IF NEW.ActiveStatus IS NULL THEN
        SET NEW.ActiveStatus = 'Active';
    END IF;
END$$
DELIMITER ;

-- 32. After insert: log new genre
DELIMITER $$
CREATE TRIGGER trg_after_insert_genre
AFTER INSERT ON FilmGenres
FOR EACH ROW
BEGIN
    INSERT INTO GenreLogs(GenreID, ActionType, ActionDate)
    VALUES (NEW.GenreID, 'INSERT', NOW());
END$$
DELIMITER ;

-- 33. Before update: log changes in ActiveStatus
DELIMITER $$
CREATE TRIGGER trg_before_update_genre
BEFORE UPDATE ON FilmGenres
FOR EACH ROW
BEGIN
    IF NEW.ActiveStatus <> OLD.ActiveStatus THEN
        INSERT INTO GenreLogs(GenreID, ActionType, OldStatus, NewStatus, ActionDate)
        VALUES (OLD.GenreID, 'UPDATE', OLD.ActiveStatus, NEW.ActiveStatus, NOW());
    END IF;
END$$
DELIMITER ;

-- 34. After delete: log deleted genre
DELIMITER $$
CREATE TRIGGER trg_after_delete_genre
AFTER DELETE ON FilmGenres
FOR EACH ROW
BEGIN
    INSERT INTO GenreLogs(GenreID, ActionType, ActionDate)
    VALUES (OLD.GenreID, 'DELETE', NOW());
END$$
DELIMITER ;

-- 35. Before insert: validate AverageDuration > 0
DELIMITER $$
CREATE TRIGGER trg_validate_duration
BEFORE INSERT ON FilmGenres
FOR EACH ROW
BEGIN
    IF NEW.AverageDuration <= 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'AverageDuration must be > 0';
    END IF;
END$$
DELIMITER ;

-- 36. Count genres by ActiveStatus
SELECT ActiveStatus, COUNT(*) AS TotalGenres FROM FilmGenres GROUP BY ActiveStatus;

-- 37. Max AverageDuration
SELECT Name, MAX(AverageDuration) AS MaxDuration FROM FilmGenres;

-- 38. Genres suitable for kids with duration > 140
SELECT Name, AverageDuration FROM FilmGenres WHERE SuitableForKids = TRUE AND AverageDuration > 140;

-- 39. Active genres with popularity rank <= 5
SELECT Name, PopularityRank FROM FilmGenres WHERE ActiveStatus='Active' AND PopularityRank <=5;

-- 40. Genres first appeared after 2000
SELECT Name, FirstAppearedYear FROM FilmGenres WHERE FirstAppearedYear > 2000;

-- 41. Order genres by PopularityRank ascending
SELECT Name, PopularityRank FROM FilmGenres ORDER BY PopularityRank ASC;

-- 42. Average duration of all genres
SELECT AVG(AverageDuration) AS AvgDuration FROM FilmGenres;

-- 43. Count genres suitable for kids
SELECT COUNT(*) AS KidsGenres FROM FilmGenres WHERE SuitableForKids = TRUE;

-- 44. Genres with duration above average
SELECT Name, AverageDuration FROM FilmGenres
WHERE AverageDuration > (SELECT AVG(AverageDuration) FROM FilmGenres);

-- 45. Genre with earliest appearance
SELECT Name, MIN(FirstAppearedYear) AS EarliestYear FROM FilmGenres;

-- 46. Top 3 popular genres
SELECT Name, PopularityRank FROM FilmGenres ORDER BY PopularityRank ASC LIMIT 3;

-- 47. Genres containing 'Action'
SELECT Name FROM FilmGenres WHERE Name LIKE '%Action%';

-- 48. Count genres by SuitableForKids
SELECT SuitableForKids, COUNT(*) AS CountGenres FROM FilmGenres GROUP BY SuitableForKids;

-- 49. Genres by language origin
SELECT LanguageOrigin, COUNT(*) AS TotalGenres FROM FilmGenres GROUP BY LanguageOrigin;

-- 50. Average budget range (approx parsing first value)
SELECT Name, SUBSTRING_INDEX(TypicalBudgetRange,'-',1) AS MinBudget FROM FilmGenres;


-- Table 8. Distributors
CREATE TABLE Distributors (
    DistributorID INT PRIMARY KEY,
    Name VARCHAR(100),
    Country VARCHAR(50),
    Email VARCHAR(100),
    Phone VARCHAR(20),
    YearsActive INT,
    TotalDeals INT,
    PlatformType VARCHAR(50),
    DistributionRegions TEXT,
    ContractStatus VARCHAR(20)
);

-- Insert 20 sample records
INSERT INTO Distributors (DistributorID ,Name ,Country ,Email ,Phone ,YearsActive ,TotalDeals ,PlatformType ,DistributionRegions ,ContractStatus ) VALUES
(1, 'Pen Marudhar Entertainment', 'India', 'info@penmarudhar.com', '022-66543210', 15, 120, 'Theatrical', 'Pan India', 'Active'),
(2, 'Yash Raj Films Distribution', 'India', 'distribution@yashrajfilms.com', '022-12345678', 25, 300, 'Theatrical', 'India, UAE, UK', 'Active'),
(3, 'AA Films', 'India', 'contact@aafilms.in', '022-98765432', 20, 250, 'Theatrical', 'North India', 'Active'),
(4, 'Reliance Entertainment Distribution', 'India', 'reldist@reliance.in', '022-65478901', 18, 200, 'Theatrical/OTT', 'Pan India', 'Active'),
(5, 'Zee Studios Distribution', 'India', 'distribution@zeestudios.com', '022-88997766', 10, 180, 'Theatrical/OTT', 'India, USA', 'Active'),
(6, 'Phars Film India', 'India', 'info@pharsfilm.in', '022-44556677', 12, 150, 'Theatrical', 'India, Gulf', 'Active'),
(7, 'PVR Pictures', 'India', 'contact@pvrpictures.com', '022-55443322', 14, 130, 'Theatrical', 'Urban India', 'Active'),
(8, 'UFO Moviez India Ltd', 'India', 'info@ufomoviez.com', '022-33445566', 16, 100, 'Digital Cinema', 'Tier-2/3 Cities', 'Active'),
(9, 'Sri Venkateswara Creations Distribution', 'India', 'svc@filmproduction.com', '040-22334455', 22, 90, 'Theatrical', 'Andhra Pradesh, Telangana', 'Active'),
(10, 'Geetha Film Distribution', 'India', 'geetha@distributors.in', '040-77665544', 20, 110, 'Theatrical', 'South India', 'Active'),
(11, 'Sun TV Distribution', 'India', 'distribution@suntv.in', '044-55667788', 17, 170, 'Satellite', 'Tamil Nadu, Kerala', 'Active'),
(12, 'Anil Thadani Distributors', 'India', 'contact@atfilms.in', '022-99887766', 19, 140, 'Theatrical', 'India, UAE', 'Active'),
(13, 'Fox Star Studios India', 'India', 'foxstar@disney.in', '022-66778899', 11, 160, 'Theatrical/OTT', 'India, US', 'Active'),
(14, 'Shemaroo Entertainment', 'India', 'distribution@shemaroo.com', '022-44332211', 30, 300, 'Digital/Satellite', 'Pan India', 'Active'),
(15, 'Viacom18 Motion Pictures', 'India', 'viacom@distribution.in', '022-55667788', 13, 185, 'Theatrical/OTT', 'India, Canada', 'Active'),
(16, 'Rajshri Media', 'India', 'rajshri@media.in', '022-22114455', 28, 210, 'YouTube/Digital', 'Pan India', 'Active'),
(17, 'Eros International Distribution', 'India', 'distribution@eros.in', '022-33441122', 21, 230, 'Theatrical/OTT', 'India, UK, USA', 'Active'),
(18, 'Sony Pictures Networks India', 'India', 'sony@pictures.in', '022-99991111', 10, 120, 'TV/Satellite', 'India', 'Active'),
(19, 'Balaji Telefilms Distribution', 'India', 'contact@balajitele.in', '022-66667777', 8, 95, 'OTT/AltBalaji', 'Urban & Tier-1 Cities', 'Active'),
(20, 'Jio Studios Distribution', 'India', 'jiostudios@jio.in', '022-77889900', 7, 80, 'JioCinema/OTT', 'India', 'Active');

-- to display table data
SELECT * FROM Distributors;

-- to remove complete records and attributes from table
DROP TABLE Distributors;

-- to remove complete records from table
TRUNCATE TABLE Distributors;

-- 1. View: All active distributors
CREATE VIEW ActiveDistributors AS
SELECT Name, Country, PlatformType, ContractStatus
FROM Distributors
WHERE ContractStatus = 'Active';

-- 2. View: Distributors with more than 200 deals
CREATE VIEW TopDealDistributors AS
SELECT Name, TotalDeals
FROM Distributors
WHERE TotalDeals > 200;

-- 3. View: Distributors operating on OTT platforms
CREATE VIEW OTTDistributors AS
SELECT Name, PlatformType, DistributionRegions
FROM Distributors
WHERE PlatformType LIKE '%OTT%';

-- 4. View: Distributors by Country
CREATE VIEW CountryDistributors AS
SELECT Country, COUNT(*) AS TotalDistributors
FROM Distributors
GROUP BY Country;

-- 5. View: Distributors with years active > 20
CREATE VIEW ExperiencedDistributors AS
SELECT Name, YearsActive, TotalDeals
FROM Distributors
WHERE YearsActive > 20;

-- 6. CTE: Top 5 distributors by total deals
WITH TopDistributors AS (
    SELECT Name, TotalDeals
    FROM Distributors
    ORDER BY TotalDeals DESC
    LIMIT 5
)
SELECT * FROM TopDistributors;

-- 7. CTE: Distributors with OTT presence
WITH OTTPresence AS (
    SELECT Name, PlatformType
    FROM Distributors
    WHERE PlatformType LIKE '%OTT%'
)
SELECT * FROM OTTPresence;

-- 8. CTE: Active distributors with contracts in multiple regions
WITH MultiRegion AS (
    SELECT Name, DistributionRegions
    FROM Distributors
    WHERE DistributionRegions LIKE '%,%'
)
SELECT * FROM MultiRegion;

-- 9. CTE: Distributors by experience
WITH Experienced AS (
    SELECT Name, YearsActive
    FROM Distributors
    WHERE YearsActive >= 15
)
SELECT * FROM Experienced ORDER BY YearsActive DESC;

-- 10. CTE: Distributors with fewer than 100 deals
WITH LowDealDistributors AS (
    SELECT Name, TotalDeals
    FROM Distributors
    WHERE TotalDeals < 100
)
SELECT * FROM LowDealDistributors;

-- 11. Procedure: Get distributor by ID
DELIMITER $$
CREATE PROCEDURE GetDistributor(IN dID INT)
BEGIN
    SELECT * FROM Distributors WHERE DistributorID = dID;
END$$
DELIMITER ;

-- 12. Procedure: List distributors by contract status
DELIMITER $$
CREATE PROCEDURE DistributorsByStatus(IN status VARCHAR(20))
BEGIN
    SELECT Name, PlatformType, ContractStatus FROM Distributors WHERE ContractStatus = status;
END$$
DELIMITER ;

-- 13. Procedure: Update total deals
DELIMITER $$
CREATE PROCEDURE UpdateTotalDeals(IN dID INT, IN deals INT)
BEGIN
    UPDATE Distributors SET TotalDeals = deals WHERE DistributorID = dID;
END$$
DELIMITER ;

-- 14. Procedure: Activate distributor
DELIMITER $$
CREATE PROCEDURE ActivateDistributor(IN dID INT)
BEGIN
    UPDATE Distributors SET ContractStatus='Active' WHERE DistributorID = dID;
END$$
DELIMITER ;

-- 15. Procedure: Deactivate distributor
DELIMITER $$
CREATE PROCEDURE DeactivateDistributor(IN dID INT)
BEGIN
    UPDATE Distributors SET ContractStatus='Inactive' WHERE DistributorID = dID;
END$$
DELIMITER ;

-- 16. Rank distributors by TotalDeals
SELECT Name, TotalDeals,
       RANK() OVER (ORDER BY TotalDeals DESC) AS DealRank
FROM Distributors;

-- 17. Dense rank by YearsActive
SELECT Name, YearsActive,
       DENSE_RANK() OVER (ORDER BY YearsActive DESC) AS ExperienceRank
FROM Distributors;

-- 18. Row number for each distributor
SELECT Name, DistributorID,
       ROW_NUMBER() OVER (ORDER BY TotalDeals DESC) AS RowNum
FROM Distributors;

-- 19. Cumulative deals
SELECT Name, TotalDeals,
       SUM(TotalDeals) OVER (ORDER BY TotalDeals DESC) AS CumulativeDeals
FROM Distributors;

-- 20. Average deals per platform type
SELECT Name, PlatformType,
       AVG(TotalDeals) OVER (PARTITION BY PlatformType) AS AvgDeals
FROM Distributors;

-- 21. Grant SELECT privilege
GRANT SELECT ON Distributors TO 'viewer'@'localhost';

-- 22. Grant INSERT privilege
GRANT INSERT ON Distributors TO 'editor'@'localhost';

-- 23. Grant UPDATE privilege
GRANT UPDATE ON Distributors TO 'editor'@'localhost';

-- 24. Revoke DELETE privilege
REVOKE DELETE ON Distributors FROM 'editor'@'localhost';

-- 25. Revoke INSERT privilege
REVOKE INSERT ON Distributors FROM 'editor'@'localhost';

-- 26. Update TotalDeals with COMMIT
START TRANSACTION;
UPDATE Distributors SET TotalDeals = 350 WHERE DistributorID = 2;
COMMIT;

-- 27. Update TotalDeals with ROLLBACK
START TRANSACTION;
UPDATE Distributors SET TotalDeals = 50 WHERE DistributorID = 20;
ROLLBACK;

-- 28. Multiple updates with savepoint
START TRANSACTION;
UPDATE Distributors SET YearsActive = YearsActive + 1 WHERE DistributorID IN (1,3);
SAVEPOINT sp1;
UPDATE Distributors SET TotalDeals = TotalDeals + 10 WHERE DistributorID = 5;
ROLLBACK TO sp1;
COMMIT;

-- 29. Insert distributor with rollback
START TRANSACTION;
INSERT INTO Distributors(Name, Country) VALUES('Test Distributor', 'India');
ROLLBACK;

-- 30. Update ContractStatus for multiple distributors
START TRANSACTION;
UPDATE Distributors SET ContractStatus='Inactive' WHERE YearsActive < 10;
COMMIT;

-- 31. Before insert: default ContractStatus
DELIMITER $$
CREATE TRIGGER trg_before_insert_distributor
BEFORE INSERT ON Distributors
FOR EACH ROW
BEGIN
    IF NEW.ContractStatus IS NULL THEN
        SET NEW.ContractStatus = 'Active';
    END IF;
END$$
DELIMITER ;

-- 32. After insert: log new distributor
DELIMITER $$
CREATE TRIGGER trg_after_insert_distributor
AFTER INSERT ON Distributors
FOR EACH ROW
BEGIN
    INSERT INTO DistributorLogs(DistributorID, ActionType, ActionDate)
    VALUES (NEW.DistributorID, 'INSERT', NOW());
END$$
DELIMITER ;

-- 33. Before update: log ContractStatus change
DELIMITER $$
CREATE TRIGGER trg_before_update_distributor
BEFORE UPDATE ON Distributors
FOR EACH ROW
BEGIN
    IF NEW.ContractStatus <> OLD.ContractStatus THEN
        INSERT INTO DistributorLogs(DistributorID, ActionType, OldStatus, NewStatus, ActionDate)
        VALUES (OLD.DistributorID, 'UPDATE', OLD.ContractStatus, NEW.ContractStatus, NOW());
    END IF;
END$$
DELIMITER ;

-- 34. After delete: log deleted distributor
DELIMITER $$
CREATE TRIGGER trg_after_delete_distributor
AFTER DELETE ON Distributors
FOR EACH ROW
BEGIN
    INSERT INTO DistributorLogs(DistributorID, ActionType, ActionDate)
    VALUES (OLD.DistributorID, 'DELETE', NOW());
END$$
DELIMITER ;

-- 35. Before insert: validate TotalDeals >= 0
DELIMITER $$
CREATE TRIGGER trg_validate_totaldeals
BEFORE INSERT ON Distributors
FOR EACH ROW
BEGIN
    IF NEW.TotalDeals < 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'TotalDeals cannot be negative';
    END IF;
END$$
DELIMITER ;

-- 36. Count distributors by ContractStatus
SELECT ContractStatus, COUNT(*) AS TotalDistributors FROM Distributors GROUP BY ContractStatus;

-- 37. Max TotalDeals
SELECT Name, MAX(TotalDeals) AS MaxDeals FROM Distributors;

-- 38. Distributors active more than 20 years
SELECT Name, YearsActive FROM Distributors WHERE YearsActive > 20;

-- 39. Distributors with platform including OTT
SELECT Name, PlatformType FROM Distributors WHERE PlatformType LIKE '%OTT%';

-- 40. Order distributors by TotalDeals descending
SELECT Name, TotalDeals FROM Distributors ORDER BY TotalDeals DESC;

-- 41. Average TotalDeals
SELECT AVG(TotalDeals) AS AvgDeals FROM Distributors;

-- 42. Count distributors by PlatformType
SELECT PlatformType, COUNT(*) AS TotalDistributors FROM Distributors GROUP BY PlatformType;

-- 43. Distributors with multiple distribution regions
SELECT Name, DistributionRegions FROM Distributors WHERE DistributionRegions LIKE '%,%';

-- 44. Distributors with less than 100 deals
SELECT Name, TotalDeals FROM Distributors WHERE TotalDeals < 100;

-- 45. Distributor with maximum deals
SELECT Name, TotalDeals FROM Distributors ORDER BY TotalDeals DESC LIMIT 1;

-- 46. Top 3 most experienced distributors
SELECT Name, YearsActive FROM Distributors ORDER BY YearsActive DESC LIMIT 3;

-- 47. Distributors in India only
SELECT Name, Country FROM Distributors WHERE Country='India';

-- 48. Count of distributors per country
SELECT Country, COUNT(*) AS TotalDistributors FROM Distributors GROUP BY Country;

-- 49. Average deals by platform type
SELECT PlatformType, AVG(TotalDeals) AS AvgDeals FROM Distributors GROUP BY PlatformType;

-- 50. Sum of TotalDeals for active distributors
SELECT SUM(TotalDeals) AS SumDeals FROM Distributors WHERE ContractStatus='Active';


-- Table 9. Soundtracks
CREATE TABLE Soundtracks (
    TrackID INT PRIMARY KEY,
    Title VARCHAR(100),
    Composer VARCHAR(100),
    DurationSeconds INT,
    Genre VARCHAR(50),
    FilmID INT,
    ReleaseDate DATE,
    Language VARCHAR(50),
    Rating VARCHAR(10),
    Publisher VARCHAR(100)
);

-- Insert 20 sample records
INSERT INTO Soundtracks  (TrackID ,Title ,Composer ,DurationSeconds ,Genre ,FilmID ,ReleaseDate ,Language ,Rating ,Publisher )VALUES
(1, 'Tum Hi Ho', 'Mithoon', 250, 'Romantic', 101, '2013-04-05', 'Hindi', '5', 'T-Series'),
(2, 'Jai Ho', 'A. R. Rahman', 260, 'Inspirational', 102, '2008-01-15', 'Hindi', '5', 'Sony Music India'),
(3, 'Chaiyya Chaiyya', 'A. R. Rahman', 280, 'Folk Fusion', 103, '1998-09-20', 'Hindi', '5', 'Sony Music'),
(4, 'Zinda', 'Shankar-Ehsaan-Loy', 230, 'Rock', 104, '2016-03-12', 'Hindi', '4', 'T-Series'),
(5, 'Kal Ho Naa Ho', 'Shankar-Ehsaan-Loy', 240, 'Emotional', 105, '2003-11-28', 'Hindi', '5', 'Sony Music'),
(6, 'Teri Mitti', 'Arko Pravo Mukherjee', 270, 'Patriotic', 106, '2019-01-26', 'Hindi', '5', 'Zee Music Company'),
(7, 'Why This Kolaveri Di', 'Anirudh Ravichander', 230, 'Pop', 107, '2011-11-16', 'Tamil', '4', 'Sony Music South'),
(8, 'Munbe Vaa', 'Harris Jayaraj', 260, 'Romantic', 108, '2006-09-12', 'Tamil', '5', 'Sony Music South'),
(9, 'Butta Bomma', 'S. Thaman', 210, 'Melody', 109, '2020-01-01', 'Telugu', '5', 'Aditya Music'),
(10, 'Naatu Naatu', 'M. M. Keeravani', 220, 'Folk Dance', 110, '2021-11-07', 'Telugu', '5', 'Lahari Music'),
(11, 'Saudagar Sauda Kar', 'Naushad', 200, 'Classical', 111, '1960-01-01', 'Hindi', '4', 'Saregama'),
(12, 'Madhuban Mein Radhika', 'Roshan', 230, 'Classical', 112, '1961-01-01', 'Hindi', '4', 'Saregama'),
(13, 'Ae Mere Humsafar', 'Anu Malik', 215, 'Romantic', 113, '1993-02-14', 'Hindi', '4', 'T-Series'),
(14, 'Pee Loon', 'Pritam', 225, 'Romantic', 114, '2010-05-07', 'Hindi', '5', 'T-Series'),
(15, 'Khairiyat', 'Arijit Singh', 240, 'Melody', 115, '2019-08-09', 'Hindi', '5', 'T-Series'),
(16, 'Bekhayali', 'Sachet-Parampara', 245, 'Sad', 116, '2019-06-21', 'Hindi', '4', 'T-Series'),
(17, 'Malang', 'Ved Sharma', 230, 'Electronic', 117, '2020-02-07', 'Hindi', '4', 'T-Series'),
(18, 'Rangamma Mangamma', 'Devi Sri Prasad', 250, 'Mass', 118, '2018-12-20', 'Telugu', '4', 'Lahari Music'),
(19, 'Vaathi Coming', 'Anirudh Ravichander', 210, 'Dance', 119, '2020-11-10', 'Tamil', '5', 'Sony Music South'),
(20, 'O Re Piya', 'Rahat Fateh Ali Khan', 265, 'Sufi', 120, '2007-09-10', 'Hindi', '5', 'YRF Music');

-- to display table data
SELECT * FROM Soundtracks;

-- to remove complete records from table
TRUNCATE TABLE Soundtracks;

-- to remove complete records and attributes from table
DROP TABLE Soundtracks;

-- 1. View: All high-rated soundtracks (Rating = 5)
CREATE VIEW TopRatedTracks AS
SELECT Title, Composer, Rating, FilmID
FROM Soundtracks
WHERE Rating = '5';

-- 2. View: Soundtracks by language
CREATE VIEW TracksByLanguage AS
SELECT Language, COUNT(*) AS TotalTracks
FROM Soundtracks
GROUP BY Language;

-- 3. View: Romantic genre tracks
CREATE VIEW RomanticTracks AS
SELECT Title, Composer, FilmID
FROM Soundtracks
WHERE Genre = 'Romantic';

-- 4. View: Soundtracks longer than 240 seconds
CREATE VIEW LongTracks AS
SELECT Title, DurationSeconds, Genre
FROM Soundtracks
WHERE DurationSeconds > 240;

-- 5. View: Tracks published by T-Series
CREATE VIEW TSeriesTracks AS
SELECT Title, Composer, FilmID
FROM Soundtracks
WHERE Publisher = 'T-Series';

-- 6. CTE: Top 5 longest tracks
WITH LongestTracks AS (
    SELECT Title, DurationSeconds
    FROM Soundtracks
    ORDER BY DurationSeconds DESC
    LIMIT 5
)
SELECT * FROM LongestTracks;

-- 7. CTE: Tracks released after 2015
WITH RecentTracks AS (
    SELECT Title, ReleaseDate, Language
    FROM Soundtracks
    WHERE ReleaseDate > '2015-01-01'
)
SELECT * FROM RecentTracks;

-- 8. CTE: Tracks grouped by genre
WITH GenreTracks AS (
    SELECT Genre, COUNT(*) AS TotalTracks
    FROM Soundtracks
    GROUP BY Genre
)
SELECT * FROM GenreTracks;

-- 9. CTE: Tracks by composer 'A. R. Rahman'
WITH RahmanTracks AS (
    SELECT Title, FilmID, ReleaseDate
    FROM Soundtracks
    WHERE Composer = 'A. R. Rahman'
)
SELECT * FROM RahmanTracks;

-- 10. CTE: Tracks in Hindi language
WITH HindiTracks AS (
    SELECT Title, Composer, Rating
    FROM Soundtracks
    WHERE Language='Hindi'
)
SELECT * FROM HindiTracks;

-- 11. Procedure: Get track details by ID
DELIMITER $$
CREATE PROCEDURE GetTrackByID(IN tID INT)
BEGIN
    SELECT * FROM Soundtracks WHERE TrackID = tID;
END$$
DELIMITER ;

-- 12. Procedure: List tracks by composer
DELIMITER $$
CREATE PROCEDURE TracksByComposer(IN comp VARCHAR(100))
BEGIN
    SELECT Title, FilmID, ReleaseDate FROM Soundtracks WHERE Composer = comp;
END$$
DELIMITER ;

-- 13. Procedure: Update track rating
DELIMITER $$
CREATE PROCEDURE UpdateTrackRating(IN tID INT, IN newRating VARCHAR(10))
BEGIN
    UPDATE Soundtracks SET Rating = newRating WHERE TrackID = tID;
END$$
DELIMITER ;

-- 14. Procedure: Delete track by ID
DELIMITER $$
CREATE PROCEDURE DeleteTrack(IN tID INT)
BEGIN
    DELETE FROM Soundtracks WHERE TrackID = tID;
END$$
DELIMITER ;

-- 15. Procedure: Add new track
DELIMITER $$
CREATE PROCEDURE AddTrack(IN tTitle VARCHAR(100), IN tComposer VARCHAR(100), IN tDuration INT, IN tGenre VARCHAR(50))
BEGIN
    INSERT INTO Soundtracks(Title, Composer, DurationSeconds, Genre) VALUES (tTitle, tComposer, tDuration, tGenre);
END$$
DELIMITER ;

-- 16. Rank tracks by Duration
SELECT Title, DurationSeconds,
       RANK() OVER (ORDER BY DurationSeconds DESC) AS DurationRank
FROM Soundtracks;

-- 17. Row number per genre
SELECT Title, Genre,
       ROW_NUMBER() OVER (PARTITION BY Genre ORDER BY ReleaseDate DESC) AS RowNum
FROM Soundtracks;

-- 18. Dense rank by Rating
SELECT Title, Rating,
       DENSE_RANK() OVER (ORDER BY Rating DESC) AS RatingRank
FROM Soundtracks;

-- 19. Cumulative duration of tracks
SELECT Title, DurationSeconds,
       SUM(DurationSeconds) OVER (ORDER BY ReleaseDate ASC) AS CumulativeDuration
FROM Soundtracks;

-- 20. Average duration by genre
SELECT Title, Genre,
       AVG(DurationSeconds) OVER (PARTITION BY Genre) AS AvgDuration
FROM Soundtracks;

-- 21. Grant SELECT privilege
GRANT SELECT ON Soundtracks TO 'viewer'@'localhost';

-- 22. Grant INSERT privilege
GRANT INSERT ON Soundtracks TO 'editor'@'localhost';

-- 23. Grant UPDATE privilege
GRANT UPDATE ON Soundtracks TO 'editor'@'localhost';

-- 24. Revoke DELETE privilege
REVOKE DELETE ON Soundtracks FROM 'editor'@'localhost';

-- 25. Revoke INSERT privilege
REVOKE INSERT ON Soundtracks FROM 'editor'@'localhost';

-- 26. Update rating with COMMIT
START TRANSACTION;
UPDATE Soundtracks SET Rating='5' WHERE TrackID = 4;
COMMIT;

-- 27. Update duration with ROLLBACK
START TRANSACTION;
UPDATE Soundtracks SET DurationSeconds=300 WHERE TrackID = 7;
ROLLBACK;

-- 28. Multiple updates with SAVEPOINT
START TRANSACTION;
UPDATE Soundtracks SET Rating='4' WHERE Genre='Romantic';
SAVEPOINT sp1;
UPDATE Soundtracks SET DurationSeconds=220 WHERE TrackID = 10;
ROLLBACK TO sp1;
COMMIT;

-- 29. Insert new track with ROLLBACK
START TRANSACTION;
INSERT INTO Soundtracks(Title, Composer) VALUES('Test Track','Test Composer');
ROLLBACK;

-- 30. Delete track with COMMIT
START TRANSACTION;
DELETE FROM Soundtracks WHERE TrackID = 20;
COMMIT;

-- 31. Before insert: default Rating
DELIMITER $$
CREATE TRIGGER trg_before_insert_track
BEFORE INSERT ON Soundtracks
FOR EACH ROW
BEGIN
    IF NEW.Rating IS NULL THEN
        SET NEW.Rating = '5';
    END IF;
END$$
DELIMITER ;

-- 32. After insert: log new track
DELIMITER $$
CREATE TRIGGER trg_after_insert_track
AFTER INSERT ON Soundtracks
FOR EACH ROW
BEGIN
    INSERT INTO TrackLogs(TrackID, ActionType, ActionDate) VALUES (NEW.TrackID, 'INSERT', NOW());
END$$
DELIMITER ;

-- 33. Before update: validate duration
DELIMITER $$
CREATE TRIGGER trg_before_update_track
BEFORE UPDATE ON Soundtracks
FOR EACH ROW
BEGIN
    IF NEW.DurationSeconds <= 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Duration must be positive';
    END IF;
END$$
DELIMITER ;

-- 34. After update: log rating change
DELIMITER $$
CREATE TRIGGER trg_after_update_track
AFTER UPDATE ON Soundtracks
FOR EACH ROW
BEGIN
    IF OLD.Rating <> NEW.Rating THEN
        INSERT INTO TrackLogs(TrackID, ActionType, OldRating, NewRating, ActionDate)
        VALUES (OLD.TrackID, 'UPDATE', OLD.Rating, NEW.Rating, NOW());
    END IF;
END$$
DELIMITER ;

-- 35. Before delete: prevent deletion if rating = 5
DELIMITER $$
CREATE TRIGGER trg_before_delete_track
BEFORE DELETE ON Soundtracks
FOR EACH ROW
BEGIN
    IF OLD.Rating = '5' THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Cannot delete top-rated track';
    END IF;
END$$
DELIMITER ;

-- 36. Count tracks by Genre
SELECT Genre, COUNT(*) AS TotalTracks FROM Soundtracks GROUP BY Genre;

-- 37. Max duration track
SELECT Title, MAX(DurationSeconds) AS MaxDuration FROM Soundtracks;

-- 38. Tracks in Hindi language
SELECT Title, Language FROM Soundtracks WHERE Language='Hindi';

-- 39. Tracks released after 2015
SELECT Title, ReleaseDate FROM Soundtracks WHERE ReleaseDate > '2015-01-01';

-- 40. Order tracks by rating descending
SELECT Title, Rating FROM Soundtracks ORDER BY Rating DESC;

-- 41. Average duration of tracks
SELECT AVG(DurationSeconds) AS AvgDuration FROM Soundtracks;

-- 42. Count tracks per composer
SELECT Composer, COUNT(*) AS TotalTracks FROM Soundtracks GROUP BY Composer;

-- 43. Tracks with duration > 250
SELECT Title, DurationSeconds FROM Soundtracks WHERE DurationSeconds > 250;

-- 44. Tracks with rating 4
SELECT Title, Rating FROM Soundtracks WHERE Rating='4';

-- 45. Latest released track
SELECT Title, ReleaseDate FROM Soundtracks ORDER BY ReleaseDate DESC LIMIT 1;

-- 46. Top 3 longest tracks
SELECT Title, DurationSeconds FROM Soundtracks ORDER BY DurationSeconds DESC LIMIT 3;

-- 47. Tracks published by Sony Music
SELECT Title, Publisher FROM Soundtracks WHERE Publisher LIKE '%Sony Music%';

-- 48. Count of tracks by rating
SELECT Rating, COUNT(*) AS CountTracks FROM Soundtracks GROUP BY Rating;

-- 49. Average rating per genre
SELECT Genre, AVG(CAST(Rating AS DECIMAL)) AS AvgRating FROM Soundtracks GROUP BY Genre;

-- 50. Sum of total durations
SELECT SUM(DurationSeconds) AS TotalDuration FROM Soundtracks;


-- Table 10. Awards
CREATE TABLE Awards (
    AwardID INT PRIMARY KEY,
    Name VARCHAR(100),
    Category VARCHAR(100),
    Year INT,
    WinnerName VARCHAR(100),
    FilmID INT,
    PresentedBy VARCHAR(100),
    Country VARCHAR(50),
    PrizeAmount DECIMAL(10,2),
    Level VARCHAR(20)
);

-- Insert 20 sample records
INSERT INTO Awards  (AwardID ,Name ,Category ,Year ,WinnerName ,FilmID ,PresentedBy ,Country ,PrizeAmount ,Level ) VALUES
(1, 'National Film Awards', 'Best Actor', 2023, 'Allu Arjun', 110, 'Ministry of Information and Broadcasting', 'India', 100000.00, 'National'),
(2, 'Filmfare Awards', 'Best Director', 2022, 'Sanjay Leela Bhansali', 114, 'Times Group', 'India', 500000.00, 'National'),
(3, 'IIFA Awards', 'Best Actress', 2023, 'Alia Bhatt', 115, 'International Indian Film Academy', 'India', 300000.00, 'International'),
(4, 'Zee Cine Awards', 'Best Music Director', 2022, 'Pritam', 114, 'Zee Entertainment', 'India', 200000.00, 'National'),
(5, 'SIIMA Awards', 'Best Film - Telugu', 2021, 'Pushpa: The Rise', 110, 'SIIMA', 'India', 250000.00, 'South'),
(6, 'Star Screen Awards', 'Best Story', 2022, 'Anubhav Sinha', 113, 'Star India', 'India', 150000.00, 'National'),
(7,'Zee Cine Awards', 'Viewer’s Choice Best Actor', 2023, 'Shah Rukh Khan', 124, 'Zee Studios', 'India', 250000.00, 'National'),
(8, 'National Film Awards', 'Best Feature Film', 2022, 'Soorarai Pottru', 121, 'Ministry of Information and Broadcasting', 'India', 200000.00, 'National'),
(9, 'IIFA Awards', 'Best Male Playback Singer', 2021, 'Arijit Singh', 116, 'IIFA', 'India', 150000.00, 'International'),
(10, 'Filmfare Awards', 'Best Cinematography', 2023, 'Avik Mukhopadhyay', 117, 'Times Group', 'India', 100000.00, 'National'),
(11, 'Zee Cine Awards', 'Best Supporting Actress', 2022, 'Shefali Shah', 118, 'Zee Entertainment', 'India', 120000.00, 'National'),
(12, 'SIIMA Awards', 'Best Actor - Tamil', 2021, 'Dhanush', 119, 'SIIMA', 'India', 250000.00, 'South'),
(13, 'National Film Awards', 'Best Background Score', 2022, 'Ilaiyaraaja', 108, 'Ministry of I&B', 'India', 150000.00, 'National'),
(14, 'Filmfare Awards', 'Best Lyricist', 2023, 'Gulzar', 120, 'Times Group', 'India', 100000.00, 'National'),
(15, 'IIFA Awards', 'Best Debut Director', 2022, 'Jasmeet K Reen', 122, 'IIFA', 'India', 100000.00, 'International'),
(16, 'Star Screen Awards', 'Best Editing', 2021, 'A. Sreekar Prasad', 123, 'Star India', 'India', 80000.00, 'National'),
(17, 'Dadasaheb Phalke International Film Festival', 'Critic’s Best Film', 2023, 'Jawan', 124, 'DPIFF', 'India', 500000.00, 'National'),
(18, 'Filmfare Awards South', 'Best Actress - Malayalam', 2022, 'Parvathy Thiruvothu', 125, 'Filmfare South', 'India', 150000.00, 'South'),
(19, 'National Film Awards', 'Best Child Artist', 2021, 'Aarav Ravi', 126, 'Ministry of I&B', 'India', 75000.00, 'National'),
(20, 'IIFA Awards', 'Best Original Score', 2022, 'Amit Trivedi', 127, 'IIFA', 'India', 120000.00, 'International');

-- to display table data
SELECT * FROM Awards;

-- to remove complete records from table
TRUNCATE TABLE Awards;

-- to remove complete records and attributes from table
DROP TABLE Awards;

-- 1. View: All national awards
CREATE VIEW NationalAwards AS
SELECT Name, Category, WinnerName, Year
FROM Awards
WHERE Level = 'National';

-- 2. View: International awards
CREATE VIEW InternationalAwards AS
SELECT Name, Category, WinnerName, Year
FROM Awards
WHERE Level = 'International';

-- 3. View: Awards per Film
CREATE VIEW AwardsByFilm AS
SELECT FilmID, COUNT(*) AS TotalAwards
FROM Awards
GROUP BY FilmID;

-- 4. View: High prize awards (>= 250000)
CREATE VIEW HighPrizeAwards AS
SELECT Name, WinnerName, PrizeAmount
FROM Awards
WHERE PrizeAmount >= 250000;

-- 5. View: Awards in 2023
CREATE VIEW Awards2023 AS
SELECT Name, Category, WinnerName
FROM Awards
WHERE Year = 2023;

-- 6. CTE: Top 5 highest prize awards
WITH TopPrizeAwards AS (
    SELECT Name, WinnerName, PrizeAmount
    FROM Awards
    ORDER BY PrizeAmount DESC
    LIMIT 5
)
SELECT * FROM TopPrizeAwards;

-- 7. CTE: Awards in South category
WITH SouthAwards AS (
    SELECT Name, Category, WinnerName
    FROM Awards
    WHERE Level = 'South'
)
SELECT * FROM SouthAwards;

-- 8. CTE: Count of awards by Level
WITH AwardsCount AS (
    SELECT Level, COUNT(*) AS TotalAwards
    FROM Awards
    GROUP BY Level
)
SELECT * FROM AwardsCount;

-- 9. CTE: Awards presented by 'IIFA'
WITH IIFAAwards AS (
    SELECT Name, WinnerName, Year
    FROM Awards
    WHERE PresentedBy = 'IIFA'
)
SELECT * FROM IIFAAwards;

-- 10. CTE: Awards with PrizeAmount > 200000
WITH BigAwards AS (
    SELECT Name, WinnerName, PrizeAmount
    FROM Awards
    WHERE PrizeAmount > 200000
)
SELECT * FROM BigAwards;

-- 11. Procedure: Get award by ID
DELIMITER $$
CREATE PROCEDURE GetAwardByID(IN aID INT)
BEGIN
    SELECT * FROM Awards WHERE AwardID = aID;
END$$
DELIMITER ;

-- 12. Procedure: List awards by Winner
DELIMITER $$
CREATE PROCEDURE AwardsByWinner(IN wName VARCHAR(100))
BEGIN
    SELECT Name, Category, Year FROM Awards WHERE WinnerName = wName;
END$$
DELIMITER ;

-- 13. Procedure: Update PrizeAmount for an award
DELIMITER $$
CREATE PROCEDURE UpdatePrize(IN aID INT, IN newPrize DECIMAL(10,2))
BEGIN
    UPDATE Awards SET PrizeAmount = newPrize WHERE AwardID = aID;
END$$
DELIMITER ;

-- 14. Procedure: Delete award by ID
DELIMITER $$
CREATE PROCEDURE DeleteAward(IN aID INT)
BEGIN
    DELETE FROM Awards WHERE AwardID = aID;
END$$
DELIMITER ;

-- 15. Procedure: Add new award
DELIMITER $$
CREATE PROCEDURE AddAward(
    IN aName VARCHAR(100), IN aCategory VARCHAR(100), IN aYear INT, IN aWinner VARCHAR(100)
)
BEGIN
    INSERT INTO Awards(Name, Category, Year, WinnerName) VALUES (aName, aCategory, aYear, aWinner);
END$$
DELIMITER ;

-- 16. Rank awards by PrizeAmount
SELECT Name, WinnerName, PrizeAmount,
       RANK() OVER (ORDER BY PrizeAmount DESC) AS PrizeRank
FROM Awards;

-- 17. Row number per Level
SELECT Name, Level,
       ROW_NUMBER() OVER (PARTITION BY Level ORDER BY Year DESC) AS RowNum
FROM Awards;

-- 18. Dense rank by PrizeAmount
SELECT Name, WinnerName, PrizeAmount,
       DENSE_RANK() OVER (ORDER BY PrizeAmount DESC) AS DenseRank
FROM Awards;

-- 19. Cumulative prize amount by Level
SELECT Name, Level, PrizeAmount,
       SUM(PrizeAmount) OVER (PARTITION BY Level ORDER BY Year ASC) AS CumulativePrize
FROM Awards;

-- 20. Average prize amount per Level
SELECT Name, Level, PrizeAmount,
       AVG(PrizeAmount) OVER (PARTITION BY Level) AS AvgPrize
FROM Awards;

-- 21. Grant SELECT privilege
GRANT SELECT ON Awards TO 'viewer'@'localhost';

-- 22. Grant INSERT privilege
GRANT INSERT ON Awards TO 'editor'@'localhost';

-- 23. Grant UPDATE privilege
GRANT UPDATE ON Awards TO 'editor'@'localhost';

-- 24. Revoke DELETE privilege
REVOKE DELETE ON Awards FROM 'editor'@'localhost';

-- 25. Revoke INSERT privilege
REVOKE INSERT ON Awards FROM 'editor'@'localhost';

-- 26. Update PrizeAmount with COMMIT
START TRANSACTION;
UPDATE Awards SET PrizeAmount=300000 WHERE AwardID=4;
COMMIT;

-- 27. Update PrizeAmount with ROLLBACK
START TRANSACTION;
UPDATE Awards SET PrizeAmount=50000 WHERE AwardID=5;
ROLLBACK;

-- 28. Multiple updates with SAVEPOINT
START TRANSACTION;
UPDATE Awards SET PrizeAmount=100000 WHERE Level='South';
SAVEPOINT sp1;
UPDATE Awards SET PrizeAmount=150000 WHERE AwardID=10;
ROLLBACK TO sp1;
COMMIT;

-- 29. Insert new award with ROLLBACK
START TRANSACTION;
INSERT INTO Awards(Name, Category) VALUES('Test Award','Test Category');
ROLLBACK;

-- 30. Delete award with COMMIT
START TRANSACTION;
DELETE FROM Awards WHERE AwardID=20;
COMMIT;

-- 31. Before insert: default PrizeAmount
DELIMITER $$
CREATE TRIGGER trg_before_insert_award
BEFORE INSERT ON Awards
FOR EACH ROW
BEGIN
    IF NEW.PrizeAmount IS NULL THEN
        SET NEW.PrizeAmount = 50000;
    END IF;
END$$
DELIMITER ;

-- 32. After insert: log new award
DELIMITER $$
CREATE TRIGGER trg_after_insert_award
AFTER INSERT ON Awards
FOR EACH ROW
BEGIN
    INSERT INTO AwardLogs(AwardID, ActionType, ActionDate) VALUES (NEW.AwardID, 'INSERT', NOW());
END$$
DELIMITER ;

-- 33. Before update: validate PrizeAmount
DELIMITER $$
CREATE TRIGGER trg_before_update_award
BEFORE UPDATE ON Awards
FOR EACH ROW
BEGIN
    IF NEW.PrizeAmount < 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'PrizeAmount must be positive';
    END IF;
END$$
DELIMITER ;

-- 34. After update: log PrizeAmount change
DELIMITER $$
CREATE TRIGGER trg_after_update_award
AFTER UPDATE ON Awards
FOR EACH ROW
BEGIN
    IF OLD.PrizeAmount <> NEW.PrizeAmount THEN
        INSERT INTO AwardLogs(AwardID, ActionType, OldPrize, NewPrize, ActionDate)
        VALUES (OLD.AwardID, 'UPDATE', OLD.PrizeAmount, NEW.PrizeAmount, NOW());
    END IF;
END$$
DELIMITER ;

-- 35. Before delete: prevent deletion if PrizeAmount >= 500000
DELIMITER $$
CREATE TRIGGER trg_before_delete_award
BEFORE DELETE ON Awards
FOR EACH ROW
BEGIN
    IF OLD.PrizeAmount >= 500000 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Cannot delete high-value award';
    END IF;
END$$
DELIMITER ;

-- 36. Count awards by Level
SELECT Level, COUNT(*) AS TotalAwards FROM Awards GROUP BY Level;

-- 37. Max prize award
SELECT Name, MAX(PrizeAmount) AS MaxPrize FROM Awards;

-- 38. Awards in 2023
SELECT Name, WinnerName FROM Awards WHERE Year=2023;

-- 39. Awards in South category
SELECT Name, Level FROM Awards WHERE Level='South';

-- 40. Order awards by PrizeAmount descending
SELECT Name, PrizeAmount FROM Awards ORDER BY PrizeAmount DESC;

-- 41. Average prize amount
SELECT AVG(PrizeAmount) AS AvgPrize FROM Awards;

-- 42. Count awards per Winner
SELECT WinnerName, COUNT(*) AS TotalAwards FROM Awards GROUP BY WinnerName;

-- 43. Awards with PrizeAmount > 200000
SELECT Name, PrizeAmount FROM Awards WHERE PrizeAmount > 200000;

-- 44. Awards presented by 'Times Group'
SELECT Name, PresentedBy FROM Awards WHERE PresentedBy='Times Group';

-- 45. Latest award winner
SELECT WinnerName, Year FROM Awards ORDER BY Year DESC LIMIT 1;

-- 46. Top 3 highest prize awards
SELECT Name, PrizeAmount FROM Awards ORDER BY PrizeAmount DESC LIMIT 3;

-- 47. Awards in National category
SELECT Name, Level FROM Awards WHERE Level='National';

-- 48. Count of awards per Year
SELECT Year, COUNT(*) AS CountAwards FROM Awards GROUP BY Year;

-- 49. Average prize per Level
SELECT Level, AVG(PrizeAmount) AS AvgPrize FROM Awards GROUP BY Level;

-- 50. Sum of all prize amounts
SELECT SUM(PrizeAmount) AS TotalPrizeAmount FROM Awards;


-- Table 11. ShootingLocations
CREATE TABLE ShootingLocations (
    LocationID INT PRIMARY KEY,
    FilmID INT,
    Country VARCHAR(50),
    State VARCHAR(50),
    City VARCHAR(50),
    SiteName VARCHAR(100),
    DaysSpent INT,
    IndoorOutdoor VARCHAR(10),
    PermitRequired BOOLEAN,
    LocalContact VARCHAR(100)
);

-- Insert 20 sample records
INSERT INTO ShootingLocations  (locationid,filmid,coutry,state,city,sitename,dayspent,indooroutdoor,localcontact) VALUES
(1, 110, 'India', 'Jammu and Kashmir', 'Srinagar', 'Dal Lake', 7, 'Outdoor', TRUE, 'Aamir Malik - 9798123456'),
(2, 114, 'India', 'Rajasthan', 'Jaipur', 'City Palace', 5, 'Outdoor', TRUE, 'Ravi Singh - 9829123456'),
(3, 115, 'India', 'Goa', 'Panaji', 'Dona Paula Beach', 6, 'Outdoor', TRUE, 'Savio Fernandes - 9371234567'),
(4, 116, 'India', 'Uttarakhand', 'Mussoorie', 'Lal Tibba', 4, 'Outdoor', TRUE, 'Karan Joshi - 9837123456'),
(5, 117, 'India', 'Maharashtra', 'Mumbai', 'Film City Studio', 12, 'Indoor', FALSE, 'Neha Desai - 9768123456'),
(6, 118, 'India', 'Tamil Nadu', 'Chennai', 'MGR Film City', 10, 'Indoor', FALSE, 'Arun Raj - 9840123456'),
(7, 119, 'India', 'Karnataka', 'Bangalore', 'Cubbon Park', 5, 'Outdoor', TRUE, 'Suresh Kumar - 9731123456'),
(8, 120, 'India', 'Kerala', 'Alleppey', 'Backwaters', 7, 'Outdoor', TRUE, 'Rahul Menon - 9744123456'),
(9, 121, 'India', 'Delhi', 'New Delhi', 'India Gate', 3, 'Outdoor', TRUE, 'Vikram Sinha - 9810123456'),
(10, 122, 'India', 'Gujarat', 'Ahmedabad', 'Adalaj Stepwell', 4, 'Outdoor', TRUE, 'Hardik Patel - 9825123456'),
(11, 123, 'India', 'Himachal Pradesh', 'Manali', 'Solang Valley', 6, 'Outdoor', TRUE, 'Dev Mehra - 9817123456'),
(12, 124, 'India', 'West Bengal', 'Kolkata', 'Victoria Memorial', 5, 'Outdoor', TRUE, 'Ankit Roy - 9831123456'),
(13, 125, 'India', 'Punjab', 'Amritsar', 'Golden Temple', 3, 'Outdoor', TRUE, 'Harjeet Singh - 9855123456'),
(14, 126, 'India', 'Odisha', 'Puri', 'Jagannath Temple', 2, 'Outdoor', TRUE, 'Biswajit Nayak - 9776123456'),
(15, 127, 'India', 'Madhya Pradesh', 'Bhopal', 'Upper Lake', 4, 'Outdoor', TRUE, 'Ajay Tiwari - 9425123456'),
(16, 128, 'India', 'Andhra Pradesh', 'Visakhapatnam', 'RK Beach', 3, 'Outdoor', TRUE, 'Prasad Rao - 9700123456'),
(17, 113, 'India', 'Telangana', 'Hyderabad', 'Ramoji Film City', 10, 'Indoor', FALSE, 'Manoj Reddy - 9703123456'),
(18, 112, 'India', 'Bihar', 'Gaya', 'Mahabodhi Temple', 3, 'Outdoor', TRUE, 'Nitesh Kumar - 9500123456'),
(19, 111, 'India', 'Chhattisgarh', 'Raipur', 'MM Fun City', 2, 'Outdoor', FALSE, 'Rahul Verma - 9685123456'),
(20, 109, 'India', 'Assam', 'Guwahati', 'Kamakhya Temple', 3, 'Outdoor', TRUE, 'Abhijit Deka - 9435123456');

-- to display table data
SELECT * FROM ShootingLocations;

-- to remove complete records from table
TRUNCATE TABLE ShootingLocations;

-- to remove complete records and attributes from table
DROP TABLE ShootingLocations;

-- 1. View: All outdoor shooting locations
CREATE VIEW OutdoorLocations AS
SELECT LocationID, FilmID, SiteName, City, State
FROM ShootingLocations
WHERE IndoorOutdoor = 'Outdoor';

-- 2. View: Indoor shooting locations
CREATE VIEW IndoorLocations AS
SELECT LocationID, FilmID, SiteName, City, State
FROM ShootingLocations
WHERE IndoorOutdoor = 'Indoor';

-- 3. View: Locations requiring permits
CREATE VIEW PermitLocations AS
SELECT LocationID, SiteName, PermitRequired, LocalContact
FROM ShootingLocations
WHERE PermitRequired = TRUE;

-- 4. View: Locations by country
CREATE VIEW LocationsInIndia AS
SELECT LocationID, FilmID, City, State
FROM ShootingLocations
WHERE Country = 'India';

-- 5. View: Long shooting locations (DaysSpent > 7)
CREATE VIEW LongShooting AS
SELECT LocationID, FilmID, SiteName, DaysSpent
FROM ShootingLocations
WHERE DaysSpent > 7;

-- 6. CTE: Top 5 longest shooting locations
WITH TopLocations AS (
    SELECT LocationID, SiteName, DaysSpent
    FROM ShootingLocations
    ORDER BY DaysSpent DESC
    LIMIT 5
)
SELECT * FROM TopLocations;

-- 7. CTE: Locations per city
WITH LocationsByCity AS (
    SELECT City, COUNT(*) AS NumLocations
    FROM ShootingLocations
    GROUP BY City
)
SELECT * FROM LocationsByCity;

-- 8. CTE: Locations requiring permits
WITH PermitNeeded AS (
    SELECT SiteName, LocalContact
    FROM ShootingLocations
    WHERE PermitRequired = TRUE
)
SELECT * FROM PermitNeeded;

-- 9. CTE: Average days spent per state
WITH AvgDays AS (
    SELECT State, AVG(DaysSpent) AS AvgDaysSpent
    FROM ShootingLocations
    GROUP BY State
)
SELECT * FROM AvgDays;

-- 10. CTE: All indoor locations
WITH IndoorLoc AS (
    SELECT LocationID, FilmID, SiteName, City
    FROM ShootingLocations
    WHERE IndoorOutdoor = 'Indoor'
)
SELECT * FROM IndoorLoc;

-- 11. Procedure: Get location by ID
DELIMITER $$
CREATE PROCEDURE GetLocationByID(IN locID INT)
BEGIN
    SELECT * FROM ShootingLocations WHERE LocationID = locID;
END$$
DELIMITER ;

-- 12. Procedure: List locations by city
DELIMITER $$
CREATE PROCEDURE LocationsByCity(IN cityName VARCHAR(50))
BEGIN
    SELECT LocationID, SiteName, DaysSpent FROM ShootingLocations WHERE City = cityName;
END$$
DELIMITER ;

-- 13. Procedure: Update DaysSpent for a location
DELIMITER $$
CREATE PROCEDURE UpdateDaysSpent(IN locID INT, IN newDays INT)
BEGIN
    UPDATE ShootingLocations SET DaysSpent = newDays WHERE LocationID = locID;
END$$
DELIMITER ;

-- 14. Procedure: Delete location by ID
DELIMITER $$
CREATE PROCEDURE DeleteLocation(IN locID INT)
BEGIN
    DELETE FROM ShootingLocations WHERE LocationID = locID;
END$$
DELIMITER ;

-- 15. Procedure: Add new location
DELIMITER $$
CREATE PROCEDURE AddLocation(
    IN fID INT, IN country VARCHAR(50), IN state VARCHAR(50), IN city VARCHAR(50),
    IN siteName VARCHAR(100), IN days INT, IN indoorOutdoor VARCHAR(10),
    IN permit BOOLEAN, IN contact VARCHAR(100)
)
BEGIN
    INSERT INTO ShootingLocations(FilmID, Country, State, City, SiteName, DaysSpent, IndoorOutdoor, PermitRequired, LocalContact)
    VALUES(fID, country, state, city, siteName, days, indoorOutdoor, permit, contact);
END$$
DELIMITER ;

-- 16. Rank locations by DaysSpent
SELECT SiteName, DaysSpent,
       RANK() OVER (ORDER BY DaysSpent DESC) AS DaysRank
FROM ShootingLocations;

-- 17. Row number per state
SELECT SiteName, State,
       ROW_NUMBER() OVER (PARTITION BY State ORDER BY DaysSpent DESC) AS RowNum
FROM ShootingLocations;

-- 18. Dense rank of DaysSpent
SELECT SiteName, DaysSpent,
       DENSE_RANK() OVER (ORDER BY DaysSpent DESC) AS DenseRank
FROM ShootingLocations;

-- 19. Cumulative days spent per state
SELECT SiteName, State, DaysSpent,
       SUM(DaysSpent) OVER (PARTITION BY State ORDER BY DaysSpent ASC) AS CumulativeDays
FROM ShootingLocations;

-- 20. Average DaysSpent per state
SELECT SiteName, State, DaysSpent,
       AVG(DaysSpent) OVER (PARTITION BY State) AS AvgDays
FROM ShootingLocations;

-- 21. Grant SELECT privilege
GRANT SELECT ON ShootingLocations TO 'viewer'@'localhost';

-- 22. Grant INSERT privilege
GRANT INSERT ON ShootingLocations TO 'editor'@'localhost';

-- 23. Grant UPDATE privilege
GRANT UPDATE ON ShootingLocations TO 'editor'@'localhost';

-- 24. Revoke DELETE privilege
REVOKE DELETE ON ShootingLocations FROM 'editor'@'localhost';

-- 25. Revoke INSERT privilege
REVOKE INSERT ON ShootingLocations FROM 'editor'@'localhost';

-- 26. Update DaysSpent with COMMIT
START TRANSACTION;
UPDATE ShootingLocations SET DaysSpent=8 WHERE LocationID=1;
COMMIT;

-- 27. Update DaysSpent with ROLLBACK
START TRANSACTION;
UPDATE ShootingLocations SET DaysSpent=2 WHERE LocationID=5;
ROLLBACK;

-- 28. Multiple updates with SAVEPOINT
START TRANSACTION;
UPDATE ShootingLocations SET DaysSpent=6 WHERE IndoorOutdoor='Indoor';
SAVEPOINT sp1;
UPDATE ShootingLocations SET DaysSpent=10 WHERE LocationID=6;
ROLLBACK TO sp1;
COMMIT;

-- 29. Insert new location with ROLLBACK
START TRANSACTION;
INSERT INTO ShootingLocations(FilmID, Country, State, City, SiteName, DaysSpent, IndoorOutdoor, PermitRequired, LocalContact)
VALUES(130, 'India','Karnataka','Mysore','Chamundi Hills',4,'Outdoor',TRUE,'Ramesh Kumar - 9700000000');
ROLLBACK;

-- 30. Delete location with COMMIT
START TRANSACTION;
DELETE FROM ShootingLocations WHERE LocationID=20;
COMMIT;

-- 31. Before insert: default DaysSpent if NULL
DELIMITER $$
CREATE TRIGGER trg_before_insert_location
BEFORE INSERT ON ShootingLocations
FOR EACH ROW
BEGIN
    IF NEW.DaysSpent IS NULL THEN
        SET NEW.DaysSpent = 3;
    END IF;
END$$
DELIMITER ;

-- 32. After insert: log new location
DELIMITER $$
CREATE TRIGGER trg_after_insert_location
AFTER INSERT ON ShootingLocations
FOR EACH ROW
BEGIN
    INSERT INTO LocationLogs(LocationID, ActionType, ActionDate) VALUES (NEW.LocationID, 'INSERT', NOW());
END$$
DELIMITER ;

-- 33. Before update: prevent negative DaysSpent
DELIMITER $$
CREATE TRIGGER trg_before_update_location
BEFORE UPDATE ON ShootingLocations
FOR EACH ROW
BEGIN
    IF NEW.DaysSpent < 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'DaysSpent cannot be negative';
    END IF;
END$$
DELIMITER ;

-- 34. After update: log DaysSpent change
DELIMITER $$
CREATE TRIGGER trg_after_update_location
AFTER UPDATE ON ShootingLocations
FOR EACH ROW
BEGIN
    IF OLD.DaysSpent <> NEW.DaysSpent THEN
        INSERT INTO LocationLogs(LocationID, ActionType, OldDays, NewDays, ActionDate)
        VALUES (OLD.LocationID, 'UPDATE', OLD.DaysSpent, NEW.DaysSpent, NOW());
    END IF;
END$$
DELIMITER ;

-- 35. Before delete: prevent deletion if DaysSpent > 10
DELIMITER $$
CREATE TRIGGER trg_before_delete_location
BEFORE DELETE ON ShootingLocations
FOR EACH ROW
BEGIN
    IF OLD.DaysSpent > 10 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Cannot delete location with more than 10 days spent';
    END IF;
END$$
DELIMITER ;

-- 36. Count locations per state
SELECT State, COUNT(*) AS TotalLocations FROM ShootingLocations GROUP BY State;

-- 37. Max days spent
SELECT SiteName, MAX(DaysSpent) AS MaxDays FROM ShootingLocations;

-- 38. Locations in Mumbai
SELECT SiteName, City FROM ShootingLocations WHERE City='Mumbai';

-- 39. Locations requiring permit
SELECT SiteName, PermitRequired FROM ShootingLocations WHERE PermitRequired=TRUE;

-- 40. Order locations by DaysSpent descending
SELECT SiteName, DaysSpent FROM ShootingLocations ORDER BY DaysSpent DESC;

-- 41. Average DaysSpent
SELECT AVG(DaysSpent) AS AvgDays FROM ShootingLocations;

-- 42. Count locations per city
SELECT City, COUNT(*) AS NumLocations FROM ShootingLocations GROUP BY City;

-- 43. Locations with DaysSpent > 7
SELECT SiteName, DaysSpent FROM ShootingLocations WHERE DaysSpent > 7;

-- 44. Locations in Kerala
SELECT SiteName, City FROM ShootingLocations WHERE State='Kerala';

-- 45. Latest inserted location (highest LocationID)
SELECT * FROM ShootingLocations ORDER BY LocationID DESC LIMIT 1;

-- 46. Top 3 longest shooting locations
SELECT SiteName, DaysSpent FROM ShootingLocations ORDER BY DaysSpent DESC LIMIT 3;

-- 47. Outdoor locations count
SELECT IndoorOutdoor, COUNT(*) AS CountLocations FROM ShootingLocations GROUP BY IndoorOutdoor;

-- 48. Locations in Outdoor category with permits
SELECT SiteName, City FROM ShootingLocations WHERE IndoorOutdoor='Outdoor' AND PermitRequired=TRUE;

-- 49. Sum of DaysSpent
SELECT SUM(DaysSpent) AS TotalDaysSpent FROM ShootingLocations;

-- 50. Average DaysSpent per Indoor/Outdoor
SELECT IndoorOutdoor, AVG(DaysSpent) AS AvgDays FROM ShootingLocations GROUP BY IndoorOutdoor;


-- Table 12. FilmBudgets
CREATE TABLE FilmBudgets (
    BudgetID INT PRIMARY KEY,
    FilmID INT,
    PreProductionCost DECIMAL(12,2),
    ProductionCost DECIMAL(12,2),
    PostProductionCost DECIMAL(12,2),
    MarketingCost DECIMAL(12,2),
    DistributionCost DECIMAL(12,2),
    MiscellaneousCost DECIMAL(12,2),
    TotalBudget DECIMAL(12,2),
    Currency VARCHAR(10)
);

-- Insert 20 sample records
INSERT INTO FilmBudgets  (budgetid,filmid,preproductioncost,postproductioncost,marketingcost,distributioncost,miscellaneouscost,totalbudget,currency) VALUES
(1, 110, 20000000.00, 80000000.00, 15000000.00, 10000000.00, 12000000.00, 3000000.00, 140000000.00, 'INR'),
(2, 111, 10000000.00, 40000000.00, 8000000.00, 6000000.00, 5000000.00, 2000000.00, 71000000.00, 'INR'),
(3, 112, 15000000.00, 60000000.00, 10000000.00, 7000000.00, 8000000.00, 2500000.00, 103500000.00, 'INR'),
(4, 113, 18000000.00, 75000000.00, 12000000.00, 9000000.00, 10000000.00, 3000000.00, 127000000.00, 'INR'),
(5, 114, 22000000.00, 90000000.00, 18000000.00, 11000000.00, 13000000.00, 3500000.00, 157500000.00, 'INR'),
(6, 115, 12000000.00, 50000000.00, 9000000.00, 6000000.00, 7000000.00, 2000000.00, 86000000.00, 'INR'),
(7, 116, 25000000.00, 95000000.00, 20000000.00, 13000000.00, 15000000.00, 4000000.00, 172000000.00, 'INR'),
(8, 117, 18000000.00, 70000000.00, 14000000.00, 10000000.00, 9000000.00, 3000000.00, 124000000.00, 'INR'),
(9, 118, 10000000.00, 30000000.00, 7000000.00, 4000000.00, 3000000.00, 1500000.00, 55500000.00, 'INR'),
(10, 119, 17000000.00, 65000000.00, 12000000.00, 8500000.00, 10000000.00, 2500000.00, 115000000.00, 'INR'),
(11, 120, 21000000.00, 85000000.00, 17000000.00, 12000000.00, 11000000.00, 3500000.00, 149500000.00, 'INR'),
(12, 121, 14000000.00, 50000000.00, 10000000.00, 7000000.00, 6000000.00, 2000000.00, 89000000.00, 'INR'),
(13, 122, 16000000.00, 62000000.00, 13000000.00, 8000000.00, 7500000.00, 2500000.00, 109500000.00, 'INR'),
(14, 123, 19000000.00, 80000000.00, 15000000.00, 10000000.00, 9500000.00, 3000000.00, 136500000.00, 'INR'),
(15, 124, 30000000.00, 100000000.00, 25000000.00, 15000000.00, 16000000.00, 5000000.00, 191000000.00, 'INR'),
(16, 125, 13000000.00, 48000000.00, 8000000.00, 6000000.00, 5500000.00, 1800000.00, 81300000.00, 'INR'),
(17, 126, 15000000.00, 60000000.00, 10000000.00, 7500000.00, 6500000.00, 2200000.00, 101700000.00, 'INR'),
(18, 127, 23000000.00, 87000000.00, 19000000.00, 12000000.00, 13500000.00, 3700000.00, 158700000.00, 'INR'),
(19, 128, 16000000.00, 63000000.00, 11000000.00, 8000000.00, 8200000.00, 2700000.00, 109700000.00, 'INR'),
(20, 109, 9000000.00, 30000000.00, 5000000.00, 3500000.00, 4000000.00, 1200000.00, 53700000.00, 'INR');

-- to display table data
SELECT * FROM FilmBudgets;

-- to remove complete records from table
TRUNCATE TABLE FilmBudgets;

-- to remove complete records and attributes from table
DROP TABLE FilmBudgets;

-- 1. View: All film budgets
CREATE VIEW AllFilmBudgets AS
SELECT * FROM FilmBudgets;

-- 2. View: High-budget films (TotalBudget > 100 million)
CREATE VIEW HighBudgetFilms AS
SELECT FilmID, TotalBudget, Currency
FROM FilmBudgets
WHERE TotalBudget > 100000000;

-- 3. View: Pre-production costs only
CREATE VIEW PreProductionCosts AS
SELECT FilmID, PreProductionCost
FROM FilmBudgets;

-- 4. View: Marketing heavy films (MarketingCost > 15 million)
CREATE VIEW MarketingHeavyFilms AS
SELECT FilmID, MarketingCost, TotalBudget
FROM FilmBudgets
WHERE MarketingCost > 15000000;

-- 5. View: Films with miscellaneous cost > 10 million
CREATE VIEW MiscHighCostFilms AS
SELECT FilmID, MiscellaneousCost, TotalBudget
FROM FilmBudgets
WHERE MiscellaneousCost > 10000000;

-- 6. CTE: Top 5 highest total budget films
WITH TopBudgets AS (
    SELECT FilmID, TotalBudget
    FROM FilmBudgets
    ORDER BY TotalBudget DESC
    LIMIT 5
)
SELECT * FROM TopBudgets;

-- 7. CTE: Average cost per type
WITH AvgCosts AS (
    SELECT 
        AVG(PreProductionCost) AS AvgPre, 
        AVG(ProductionCost) AS AvgProduction,
        AVG(PostProductionCost) AS AvgPost, 
        AVG(MarketingCost) AS AvgMarketing
    FROM FilmBudgets
)
SELECT * FROM AvgCosts;

-- 8. CTE: Films where ProductionCost > 75 million
WITH ExpensiveProduction AS (
    SELECT FilmID, ProductionCost, TotalBudget
    FROM FilmBudgets
    WHERE ProductionCost > 75000000
)
SELECT * FROM ExpensiveProduction;

-- 9. CTE: Films where DistributionCost is high
WITH DistributionHeavy AS (
    SELECT FilmID, DistributionCost, TotalBudget
    FROM FilmBudgets
    WHERE DistributionCost > 10000000
)
SELECT * FROM DistributionHeavy;

-- 10. CTE: Films with PreProductionCost less than 15 million
WITH LowPreProduction AS (
    SELECT FilmID, PreProductionCost, TotalBudget
    FROM FilmBudgets
    WHERE PreProductionCost < 15000000
)
SELECT * FROM LowPreProduction;

-- 11. Procedure: Get budget details by FilmID
DELIMITER $$
CREATE PROCEDURE GetBudgetByFilm(IN fID INT)
BEGIN
    SELECT * FROM FilmBudgets WHERE FilmID = fID;
END$$
DELIMITER ;

-- 12. Procedure: Update TotalBudget
DELIMITER $$
CREATE PROCEDURE UpdateTotalBudget(IN fID INT, IN newBudget DECIMAL(12,2))
BEGIN
    UPDATE FilmBudgets SET TotalBudget = newBudget WHERE FilmID = fID;
END$$
DELIMITER ;

-- 13. Procedure: Delete budget record by FilmID
DELIMITER $$
CREATE PROCEDURE DeleteBudget(IN fID INT)
BEGIN
    DELETE FROM FilmBudgets WHERE FilmID = fID;
END$$
DELIMITER ;

-- 14. Procedure: Insert new budget
DELIMITER $$
CREATE PROCEDURE InsertBudget(
    IN fID INT, IN pre DECIMAL(12,2), IN prod DECIMAL(12,2), IN post DECIMAL(12,2),
    IN marketing DECIMAL(12,2), IN dist DECIMAL(12,2), IN misc DECIMAL(12,2),
    IN total DECIMAL(12,2), IN curr VARCHAR(10)
)
BEGIN
    INSERT INTO FilmBudgets(FilmID, PreProductionCost, ProductionCost, PostProductionCost, MarketingCost, DistributionCost, MiscellaneousCost, TotalBudget, Currency)
    VALUES(fID, pre, prod, post, marketing, dist, misc, total, curr);
END$$
DELIMITER ;

-- 15. Procedure: Get films with TotalBudget greater than specified
DELIMITER $$
CREATE PROCEDURE GetHighBudgetFilms(IN minBudget DECIMAL(12,2))
BEGIN
    SELECT FilmID, TotalBudget FROM FilmBudgets WHERE TotalBudget > minBudget;
END$$
DELIMITER ;

-- 16. Rank films by TotalBudget
SELECT FilmID, TotalBudget,
       RANK() OVER (ORDER BY TotalBudget DESC) AS BudgetRank
FROM FilmBudgets;

-- 17. Row number by ProductionCost
SELECT FilmID, ProductionCost,
       ROW_NUMBER() OVER (ORDER BY ProductionCost DESC) AS RowNum
FROM FilmBudgets;

-- 18. Dense rank by MarketingCost
SELECT FilmID, MarketingCost,
       DENSE_RANK() OVER (ORDER BY MarketingCost DESC) AS DenseRank
FROM FilmBudgets;

-- 19. Cumulative TotalBudget
SELECT FilmID, TotalBudget,
       SUM(TotalBudget) OVER (ORDER BY TotalBudget DESC) AS CumulativeBudget
FROM FilmBudgets;

-- 20. Average ProductionCost using window function
SELECT FilmID, ProductionCost,
       AVG(ProductionCost) OVER () AS AvgProduction
FROM FilmBudgets;

-- 21. Grant SELECT privilege
GRANT SELECT ON FilmBudgets TO 'viewer'@'localhost';

-- 22. Grant INSERT privilege
GRANT INSERT ON FilmBudgets TO 'editor'@'localhost';

-- 23. Grant UPDATE privilege
GRANT UPDATE ON FilmBudgets TO 'editor'@'localhost';

-- 24. Revoke DELETE privilege
REVOKE DELETE ON FilmBudgets FROM 'editor'@'localhost';

-- 25. Revoke INSERT privilege
REVOKE INSERT ON FilmBudgets FROM 'editor'@'localhost';

-- 26. Update TotalBudget with COMMIT
START TRANSACTION;
UPDATE FilmBudgets SET TotalBudget = 160000000 WHERE FilmID = 110;
COMMIT;

-- 27. Update TotalBudget with ROLLBACK
START TRANSACTION;
UPDATE FilmBudgets SET TotalBudget = 100000000 WHERE FilmID = 111;
ROLLBACK;

-- 28. Multiple updates with SAVEPOINT
START TRANSACTION;
UPDATE FilmBudgets SET MarketingCost = 20000000 WHERE FilmID = 114;
SAVEPOINT sp1;
UPDATE FilmBudgets SET DistributionCost = 15000000 WHERE FilmID = 115;
ROLLBACK TO sp1;
COMMIT;

-- 29. Insert new budget record with ROLLBACK
START TRANSACTION;
INSERT INTO FilmBudgets(FilmID, PreProductionCost, ProductionCost, PostProductionCost, MarketingCost, DistributionCost, MiscellaneousCost, TotalBudget, Currency)
VALUES(129, 10000000, 50000000, 10000000, 5000000, 4000000, 2000000, 81000000, 'INR');
ROLLBACK;

-- 30. Delete a budget record with COMMIT
START TRANSACTION;
DELETE FROM FilmBudgets WHERE FilmID = 128;
COMMIT;

-- 31. Before insert: calculate TotalBudget if NULL
DELIMITER $$
CREATE TRIGGER trg_before_insert_budget
BEFORE INSERT ON FilmBudgets
FOR EACH ROW
BEGIN
    IF NEW.TotalBudget IS NULL THEN
        SET NEW.TotalBudget = NEW.PreProductionCost + NEW.ProductionCost + NEW.PostProductionCost + NEW.MarketingCost + NEW.DistributionCost + NEW.MiscellaneousCost;
    END IF;
END$$
DELIMITER ;

-- 32. After insert: log new budget
DELIMITER $$
CREATE TRIGGER trg_after_insert_budget
AFTER INSERT ON FilmBudgets
FOR EACH ROW
BEGIN
    INSERT INTO BudgetLogs(FilmID, ActionType, ActionDate) VALUES (NEW.FilmID, 'INSERT', NOW());
END$$
DELIMITER ;

-- 33. Before update: prevent negative costs
DELIMITER $$
CREATE TRIGGER trg_before_update_budget
BEFORE UPDATE ON FilmBudgets
FOR EACH ROW
BEGIN
    IF NEW.TotalBudget < 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'TotalBudget cannot be negative';
    END IF;
END$$
DELIMITER ;

-- 34. After update: log changes
DELIMITER $$
CREATE TRIGGER trg_after_update_budget
AFTER UPDATE ON FilmBudgets
FOR EACH ROW
BEGIN
    IF OLD.TotalBudget <> NEW.TotalBudget THEN
        INSERT INTO BudgetLogs(FilmID, ActionType, OldBudget, NewBudget, ActionDate)
        VALUES (OLD.FilmID, 'UPDATE', OLD.TotalBudget, NEW.TotalBudget, NOW());
    END IF;
END$$
DELIMITER ;

-- 35. Before delete: prevent deletion if TotalBudget > 150 million
DELIMITER $$
CREATE TRIGGER trg_before_delete_budget
BEFORE DELETE ON FilmBudgets
FOR EACH ROW
BEGIN
    IF OLD.TotalBudget > 150000000 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Cannot delete very high budget film';
    END IF;
END$$
DELIMITER ;

-- 36. Count films above 100 million
SELECT COUNT(*) AS HighBudgetCount FROM FilmBudgets WHERE TotalBudget > 100000000;

-- 37. Maximum TotalBudget
SELECT FilmID, MAX(TotalBudget) AS MaxBudget FROM FilmBudgets;

-- 38. Minimum ProductionCost
SELECT FilmID, MIN(ProductionCost) AS MinProduction FROM FilmBudgets;

-- 39. Average MarketingCost
SELECT AVG(MarketingCost) AS AvgMarketing FROM FilmBudgets;

-- 40. Sum of TotalBudgets
SELECT SUM(TotalBudget) AS TotalBudgetSum FROM FilmBudgets;

-- 41. Films with PreProductionCost > 20 million
SELECT FilmID, PreProductionCost FROM FilmBudgets WHERE PreProductionCost > 20000000;

-- 42. Films sorted by ProductionCost descending
SELECT FilmID, ProductionCost FROM FilmBudgets ORDER BY ProductionCost DESC;

-- 43. Films where MiscellaneousCost > 10 million
SELECT FilmID, MiscellaneousCost FROM FilmBudgets WHERE MiscellaneousCost > 10000000;

-- 44. Top 3 most expensive films
SELECT FilmID, TotalBudget FROM FilmBudgets ORDER BY TotalBudget DESC LIMIT 3;

-- 45. Count of films per Currency
SELECT Currency, COUNT(*) AS NumFilms FROM FilmBudgets GROUP BY Currency;

-- 46. Average PostProductionCost
SELECT AVG(PostProductionCost) AS AvgPostProduction FROM FilmBudgets;

-- 47. Films with DistributionCost between 5-12 million
SELECT FilmID, DistributionCost FROM FilmBudgets WHERE DistributionCost BETWEEN 5000000 AND 12000000;

-- 48. Films with MarketingCost higher than AvgMarketing
SELECT FilmID, MarketingCost
FROM FilmBudgets
WHERE MarketingCost > (SELECT AVG(MarketingCost) FROM FilmBudgets);

-- 49. Total ProductionCost for all films
SELECT SUM(ProductionCost) AS TotalProduction FROM FilmBudgets;

-- 50. Average TotalBudget per Currency
SELECT Currency, AVG(TotalBudget) AS AvgBudget FROM FilmBudgets GROUP BY Currency;


-- Table 13. FilmReviews
CREATE TABLE FilmReviews (
    ReviewID INT PRIMARY KEY,
    FilmID INT,
    ReviewerName VARCHAR(100),
    Platform VARCHAR(100),
    Rating DECIMAL(3,1),
    ReviewDate DATE,
    ReviewTitle VARCHAR(100),
    ReviewText TEXT,
    Likes INT,
    Verified BOOLEAN
);

-- Insert 20 sample records
INSERT INTO FilmReviews  (reviewid,filmid,reviewersname,platform,reviewdate,reviewtitel,reviewtext,likes) VALUES
(1, 110, 'Rohit Sharma', 'BookMyShow', 4.5, '2023-12-15', 'Mass Entertainer!', 'Pushpa delivers action and drama with Allu Arjun in full form.', 5400, TRUE),
(2, 111, 'Ananya Verma', 'IMDb', 3.8, '2022-08-20', 'Could Be Tighter', 'The story had potential but dragged a bit in the middle.', 1320, TRUE),
(3, 112, 'Vikram Rathi', 'Google Reviews', 4.2, '2021-11-01', 'Visually Stunning', 'The cinematography was top-notch and music mesmerizing.', 2100, TRUE),
(4, 113, 'Meera Iyer', 'Film Companion', 4.7, '2023-01-10', 'Strong Emotions', 'Great acting performances and well-handled social theme.', 3150, TRUE),
(5, 114, 'Taran Adarsh', 'Bollywood Hungama', 4.0, '2022-06-05', 'Solid Direction', 'Bhansali’s direction and visuals were breathtaking.', 5000, TRUE),
(6, 115, 'Rajeev Masand', 'CNN-IBN', 4.3, '2023-04-21', 'Emotional Journey', 'Deep characters and excellent screenplay.', 2980, TRUE),
(7, 116, 'Sneha Menon', 'YouTube', 3.5, '2021-09-30', 'Mixed Bag', 'Good music and action but inconsistent pacing.', 1870, FALSE),
(8, 117, 'Anil Kapoor', 'Rediff', 3.9, '2022-02-18', 'Fast Paced Thriller', 'Edge-of-the-seat moments throughout the film.', 2230, TRUE),
(9, 118, 'Jyoti Sharma', 'Koimoi', 4.1, '2023-07-07', 'Heartwarming!', 'Feel-good story with beautiful locations.', 1980, TRUE),
(10, 119, 'Abhay Nair', 'The Hindu', 4.6, '2022-11-12', 'Powerhouse Performance', 'Dhanush nails his role with intensity and depth.', 3290, TRUE),
(11, 120, 'Karishma Rao', 'Google Reviews', 3.7, '2023-08-15', 'Decent Watch', 'Film had highs and lows but kept you interested.', 1430, TRUE),
(12, 121, 'Saurabh Mehta', 'IMDb', 4.4, '2022-03-11', 'Inspired by True Events', 'A moving portrayal of a real-life hero.', 2670, TRUE),
(13, 122, 'Neha Kulkarni', 'BookMyShow', 3.6, '2023-05-09', 'Could’ve Been Better', 'Story had promise but lacked impact.', 920, TRUE),
(14, 123, 'Harshit Gupta', 'YouTube', 4.5, '2021-10-25', 'Underrated Gem', 'Brilliant editing and tight narration.', 1780, FALSE),
(15, 124, 'Kriti Tiwari', 'Film Companion', 4.8, '2023-09-01', 'SRK at His Best', 'Jawan is full of energy and emotion.', 4600, TRUE),
(16, 125, 'Pooja Reddy', 'Koimoi', 3.9, '2022-12-19', 'Fresh Perspective', 'Simple yet strong story with depth.', 2000, TRUE),
(17, 126, 'Yash Pradhan', 'Bollywood Life', 4.0, '2023-03-22', 'Kid’s Delight', 'Family-friendly and fun-filled entertainment.', 1750, TRUE),
(18, 127, 'Tanvi Deshmukh', 'The Quint', 4.2, '2023-06-17', 'Unique Soundtrack', 'Amit Trivedi’s music elevates the film.', 2560, TRUE),
(19, 128, 'Sameer Ali', 'India Today', 3.8, '2022-10-05', 'Stylish Execution', 'Strong performances and catchy visuals.', 1690, TRUE),
(20, 109, 'Bhavya Sinha', 'Google Reviews', 4.1, '2021-12-08', 'Beautiful Simplicity', 'Understated yet powerful storytelling.', 1880, TRUE);

-- to display table data
SELECT * FROM FilmReviews;

-- to remove complete records from table
TRUNCATE TABLE FilmReviews;

-- to remove complete records and attributes from table
DROP TABLE FilmReviews;

-- 1. View: All reviews
CREATE VIEW AllFilmReviews AS
SELECT * FROM FilmReviews;

-- 2. View: Reviews with rating >= 4.5
CREATE VIEW TopReviews AS
SELECT ReviewID, FilmID, ReviewerName, Rating, ReviewTitle
FROM FilmReviews
WHERE Rating >= 4.5;

-- 3. View: Reviews per platform
CREATE VIEW ReviewsByPlatform AS
SELECT Platform, COUNT(*) AS NumReviews
FROM FilmReviews
GROUP BY Platform;

-- 4. View: Verified reviews
CREATE VIEW VerifiedReviews AS
SELECT ReviewID, FilmID, ReviewerName, Verified, Likes
FROM FilmReviews
WHERE Verified = TRUE;

-- 5. View: Reviews with most likes
CREATE VIEW PopularReviews AS
SELECT ReviewID, FilmID, ReviewerName, Likes
FROM FilmReviews
WHERE Likes > 3000;

-- 6. CTE: Top 5 highest rated reviews
WITH TopRated AS (
    SELECT ReviewID, FilmID, Rating
    FROM FilmReviews
    ORDER BY Rating DESC
    LIMIT 5
)
SELECT * FROM TopRated;

-- 7. CTE: Average rating per platform
WITH AvgRating AS (
    SELECT Platform, AVG(Rating) AS AvgRating
    FROM FilmReviews
    GROUP BY Platform
)
SELECT * FROM AvgRating;

-- 8. CTE: Reviews with more than 2000 likes
WITH Popular AS (
    SELECT ReviewID, FilmID, Likes
    FROM FilmReviews
    WHERE Likes > 2000
)
SELECT * FROM Popular;

-- 9. CTE: Verified reviews per film
WITH VerifiedPerFilm AS (
    SELECT FilmID, COUNT(*) AS NumVerified
    FROM FilmReviews
    WHERE Verified = TRUE
    GROUP BY FilmID
)
SELECT * FROM VerifiedPerFilm;

-- 10. CTE: Reviews in 2023
WITH Reviews2023 AS (
    SELECT ReviewID, FilmID, ReviewDate
    FROM FilmReviews
    WHERE YEAR(ReviewDate) = 2023
)
SELECT * FROM Reviews2023;
11–15: Stored Procedures
sql
Copy code
-- 11. Procedure: Get reviews by FilmID
DELIMITER $$
CREATE PROCEDURE GetReviewsByFilm(IN fID INT)
BEGIN
    SELECT * FROM FilmReviews WHERE FilmID = fID;
END$$
DELIMITER ;

-- 12. Procedure: Update review rating
DELIMITER $$
CREATE PROCEDURE UpdateReviewRating(IN rID INT, IN newRating DECIMAL(3,1))
BEGIN
    UPDATE FilmReviews SET Rating = newRating WHERE ReviewID = rID;
END$$
DELIMITER ;

-- 13. Procedure: Delete a review
DELIMITER $$
CREATE PROCEDURE DeleteReview(IN rID INT)
BEGIN
    DELETE FROM FilmReviews WHERE ReviewID = rID;
END$$
DELIMITER ;

-- 14. Procedure: Insert new review
DELIMITER $$
CREATE PROCEDURE InsertReview(
    IN fID INT, IN reviewer VARCHAR(100), IN platform VARCHAR(100), IN rating DECIMAL(3,1),
    IN reviewDate DATE, IN title VARCHAR(100), IN text TEXT, IN likes INT, IN verified BOOLEAN
)
BEGIN
    INSERT INTO FilmReviews(FilmID, ReviewerName, Platform, Rating, ReviewDate, ReviewTitle, ReviewText, Likes, Verified)
    VALUES(fID, reviewer, platform, rating, reviewDate, title, text, likes, verified);
END$$
DELIMITER ;

-- 15. Procedure: Get reviews with rating above a threshold
DELIMITER $$
CREATE PROCEDURE GetHighRatingReviews(IN minRating DECIMAL(3,1))
BEGIN
    SELECT * FROM FilmReviews WHERE Rating > minRating;
END$$
DELIMITER ;

-- 16. Rank reviews by likes
SELECT ReviewID, FilmID, Likes,
       RANK() OVER (ORDER BY Likes DESC) AS LikesRank
FROM FilmReviews;

-- 17. Row number by Rating
SELECT ReviewID, Rating,
       ROW_NUMBER() OVER (ORDER BY Rating DESC) AS RowNum
FROM FilmReviews;

-- 18. Dense rank by Rating
SELECT ReviewID, Rating,
       DENSE_RANK() OVER (ORDER BY Rating DESC) AS DenseRank
FROM FilmReviews;

-- 19. Cumulative likes
SELECT ReviewID, Likes,
       SUM(Likes) OVER (ORDER BY Likes DESC) AS CumulativeLikes
FROM FilmReviews;

-- 20. Average rating using window function
SELECT ReviewID, Rating,
       AVG(Rating) OVER () AS AvgRating
FROM FilmReviews;

-- 21. Grant SELECT privilege
GRANT SELECT ON FilmReviews TO 'viewer'@'localhost';

-- 22. Grant INSERT privilege
GRANT INSERT ON FilmReviews TO 'editor'@'localhost';

-- 23. Grant UPDATE privilege
GRANT UPDATE ON FilmReviews TO 'editor'@'localhost';

-- 24. Revoke DELETE privilege
REVOKE DELETE ON FilmReviews FROM 'editor'@'localhost';

-- 25. Revoke INSERT privilege
REVOKE INSERT ON FilmReviews FROM 'editor'@'localhost';

-- 26. Update rating with COMMIT
START TRANSACTION;
UPDATE FilmReviews SET Rating = 5.0 WHERE ReviewID = 1;
COMMIT;

-- 27. Update rating with ROLLBACK
START TRANSACTION;
UPDATE FilmReviews SET Rating = 2.5 WHERE ReviewID = 2;
ROLLBACK;

-- 28. Multiple updates with SAVEPOINT
START TRANSACTION;
UPDATE FilmReviews SET Likes = Likes + 100 WHERE ReviewID = 3;
SAVEPOINT sp1;
UPDATE FilmReviews SET Rating = 4.0 WHERE ReviewID = 4;
ROLLBACK TO sp1;
COMMIT;

-- 29. Insert a new review with ROLLBACK
START TRANSACTION;
INSERT INTO FilmReviews(FilmID, ReviewerName, Platform, Rating, ReviewDate, ReviewTitle, ReviewText, Likes, Verified)
VALUES(129, 'Test Reviewer', 'Test Platform', 4.2, '2023-09-09', 'Test Review', 'This is a test review.', 0, TRUE);
ROLLBACK;

-- 30. Delete review with COMMIT
START TRANSACTION;
DELETE FROM FilmReviews WHERE ReviewID = 20;
COMMIT;

-- 31. Before insert: Ensure Likes >= 0
DELIMITER $$
CREATE TRIGGER trg_before_insert_review
BEFORE INSERT ON FilmReviews
FOR EACH ROW
BEGIN
    IF NEW.Likes < 0 THEN
        SET NEW.Likes = 0;
    END IF;
END$$
DELIMITER ;

-- 32. After insert: Log new review
DELIMITER $$
CREATE TRIGGER trg_after_insert_review
AFTER INSERT ON FilmReviews
FOR EACH ROW
BEGIN
    INSERT INTO ReviewLogs(ReviewID, ActionType, ActionDate) VALUES (NEW.ReviewID, 'INSERT', NOW());
END$$
DELIMITER ;

-- 33. Before update: Prevent rating > 5
DELIMITER $$
CREATE TRIGGER trg_before_update_review
BEFORE UPDATE ON FilmReviews
FOR EACH ROW
BEGIN
    IF NEW.Rating > 5 THEN
        SET NEW.Rating = 5;
    END IF;
END$$
DELIMITER ;

-- 34. After update: Log rating changes
DELIMITER $$
CREATE TRIGGER trg_after_update_review
AFTER UPDATE ON FilmReviews
FOR EACH ROW
BEGIN
    IF OLD.Rating <> NEW.Rating THEN
        INSERT INTO ReviewLogs(ReviewID, ActionType, OldRating, NewRating, ActionDate)
        VALUES (OLD.ReviewID, 'UPDATE', OLD.Rating, NEW.Rating, NOW());
    END IF;
END$$
DELIMITER ;

-- 35. Before delete: Prevent deletion of verified reviews
DELIMITER $$
CREATE TRIGGER trg_before_delete_review
BEFORE DELETE ON FilmReviews
FOR EACH ROW
BEGIN
    IF OLD.Verified = TRUE THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Cannot delete verified review';
    END IF;
END$$
DELIMITER ;

-- 36. Count of reviews per film
SELECT FilmID, COUNT(*) AS NumReviews FROM FilmReviews GROUP BY FilmID;

-- 37. Average rating
SELECT AVG(Rating) AS AvgRating FROM FilmReviews;

-- 38. Maximum likes
SELECT MAX(Likes) AS MaxLikes FROM FilmReviews;

-- 39. Minimum rating
SELECT MIN(Rating) AS MinRating FROM FilmReviews;

-- 40. Sum of likes
SELECT SUM(Likes) AS TotalLikes FROM FilmReviews;

-- 41. Reviews with rating > 4.5
SELECT * FROM FilmReviews WHERE Rating > 4.5;

-- 42. Reviews sorted by likes descending
SELECT * FROM FilmReviews ORDER BY Likes DESC;

-- 43. Verified reviews only
SELECT * FROM FilmReviews WHERE Verified = TRUE;

-- 44. Top 3 reviews by likes
SELECT * FROM FilmReviews ORDER BY Likes DESC LIMIT 3;

-- 45. Count of verified vs non-verified reviews
SELECT Verified, COUNT(*) AS CountReviews FROM FilmReviews GROUP BY Verified;

-- 46. Average likes for verified reviews
SELECT AVG(Likes) AS AvgLikesVerified FROM FilmReviews WHERE Verified = TRUE;

-- 47. Reviews in 2022
SELECT * FROM FilmReviews WHERE YEAR(ReviewDate) = 2022;

-- 48. Reviews with title containing 'Best'
SELECT * FROM FilmReviews WHERE ReviewTitle LIKE '%Best%';

-- 49. Reviews with likes above average
SELECT * FROM FilmReviews
WHERE Likes > (SELECT AVG(Likes) FROM FilmReviews);

-- 50. Count of reviews per platform
SELECT Platform, COUNT(*) AS NumReviews FROM FilmReviews GROUP BY Platform;


-- Table 14. FilmScripts
CREATE TABLE FilmScripts (
    ScriptID INT PRIMARY KEY,
    FilmID INT,
    ScriptTitle VARCHAR(100),
    WriterName VARCHAR(100),
    Language VARCHAR(50),
    VersionNumber INT,
    SubmissionDate DATE,
    Approved BOOLEAN,
    Genre VARCHAR(50),
    Notes TEXT
);

-- Insert 20 sample records
INSERT INTO FilmScripts  (scriptid,filmid,scripttitle,writename,language,versionnumber,submissiondate,genre) VALUES
(1, 110, 'Pushpa: The Rise - Script', 'Sukumar', 'Telugu', 1, '2021-01-10', TRUE, 'Action', 'Initial draft was approved with minor edits.'),
(2, 111, 'RRR - Script', 'V. Vijayendra Prasad', 'Telugu', 2, '2020-11-18', TRUE, 'Historical Drama', 'Script modified for British character arcs.'),
(3, 112, 'Kantara - The Forest Spirit', 'Rishab Shetty', 'Kannada', 1, '2022-03-05', TRUE, 'Mythological Thriller', 'Script inspired by local folklore.'),
(4, 113, 'Article 15 - Social Draft', 'Gaurav Solanki', 'Hindi', 3, '2018-06-12', TRUE, 'Social Drama', 'Approved after legal team clearance.'),
(5, 114, 'Gangubai Kathiawadi', 'Sanjay Leela Bhansali', 'Hindi', 2, '2019-10-09', TRUE, 'Biographical', 'Adaptation based on S. Hussain Zaidi’s book.'),
(6, 115, 'Raazi - Spy Chronicles', 'Meghna Gulzar', 'Hindi', 1, '2017-04-21', TRUE, 'Thriller', 'Classified information fictionalized.'),
(7, 116, 'Kesari', 'Anurag Singh', 'Hindi', 2, '2018-07-15', TRUE, 'War', 'Battle scenes rewritten for authenticity.'),
(8, 117, 'Andhadhun - Blind Edge', 'Sriram Raghavan', 'Hindi', 1, '2017-12-22', TRUE, 'Thriller', 'Dark humor enhanced in the final draft.'),
(9, 118, 'Drishyam 2', 'Jeethu Joseph', 'Malayalam', 1, '2020-05-10', TRUE, 'Mystery', 'Approved for sequel expansion.'),
(10, 119, 'Asuran', 'Vetrimaaran', 'Tamil', 2, '2019-02-28', TRUE, 'Action Drama', 'Based on the novel "Vekkai".'),
(11, 120, 'Barfi!', 'Anurag Basu', 'Hindi', 2, '2011-09-09', TRUE, 'Romantic Comedy', 'Non-verbal scenes polished.'),
(12, 121, 'Soorarai Pottru', 'Sudha Kongara', 'Tamil', 3, '2019-06-30', TRUE, 'Biography', 'Real events compressed into film duration.'),
(13, 122, 'Bulbbul', 'Anvita Dutt', 'Hindi', 1, '2020-03-01', TRUE, 'Fantasy Horror', 'Inspired by Bengali legends.'),
(14, 123, 'A Wednesday!', 'Neeraj Pandey', 'Hindi', 1, '2007-05-20', TRUE, 'Thriller', 'Script kept secret pre-release.'),
(15, 124, 'Jawan - The Patriot', 'Atlee', 'Hindi', 2, '2022-04-15', TRUE, 'Action', 'Action scenes expanded in version 2.'),
(16, 125, 'Uyare', 'Bobby-Sanjay', 'Malayalam', 1, '2019-01-22', TRUE, 'Drama', 'Realistic portrayal of acid attack survivor.'),
(17, 126, 'Chhichhore', 'Nitesh Tiwari', 'Hindi', 2, '2018-09-19', TRUE, 'Comedy Drama', 'Final script focused more on hostel life.'),
(18, 127, 'Queen', 'Vikas Bahl', 'Hindi', 3, '2012-07-25', TRUE, 'Coming-of-Age', 'Improvised with actor’s input.'),
(19, 128, 'Qala', 'Anvita Dutt', 'Hindi', 1, '2021-11-11', TRUE, 'Musical Drama', 'Dialogue heavy scenes trimmed.'),
(20, 109, 'Rocketry: The Nambi Effect', 'R. Madhavan', 'Hindi', 2, '2020-02-14', TRUE, 'Biography', 'Co-written with scientist’s inputs.');

-- to display table data
SELECT * FROM FilmScripts;

-- to remove complete records from table
TRUNCATE TABLE FilmScripts;

-- to remove complete records and attributes from table
DROP TABLE FilmScripts;

-- 1. View: All scripts
CREATE VIEW AllFilmScripts AS
SELECT * FROM FilmScripts;

-- 2. View: Approved scripts
CREATE VIEW ApprovedScripts AS
SELECT ScriptID, FilmID, ScriptTitle, WriterName
FROM FilmScripts
WHERE Approved = TRUE;

-- 3. View: Scripts by language
CREATE VIEW ScriptsByLanguage AS
SELECT Language, COUNT(*) AS NumScripts
FROM FilmScripts
GROUP BY Language;

-- 4. View: Latest version scripts
CREATE VIEW LatestScripts AS
SELECT ScriptID, FilmID, ScriptTitle, VersionNumber
FROM FilmScripts
WHERE VersionNumber = (SELECT MAX(VersionNumber) FROM FilmScripts WHERE FilmID = FilmScripts.FilmID);

-- 5. View: Action genre scripts
CREATE VIEW ActionScripts AS
SELECT ScriptID, ScriptTitle, Genre
FROM FilmScripts
WHERE Genre = 'Action';

-- 6. CTE: Scripts submitted in 2020
WITH Scripts2020 AS (
    SELECT ScriptID, FilmID, SubmissionDate
    FROM FilmScripts
    WHERE YEAR(SubmissionDate) = 2020
)
SELECT * FROM Scripts2020;

-- 7. CTE: Count scripts per writer
WITH WriterCount AS (
    SELECT WriterName, COUNT(*) AS NumScripts
    FROM FilmScripts
    GROUP BY WriterName
)
SELECT * FROM WriterCount;

-- 8. CTE: Latest version per film
WITH LatestVersion AS (
    SELECT FilmID, MAX(VersionNumber) AS MaxVersion
    FROM FilmScripts
    GROUP BY FilmID
)
SELECT f.* FROM FilmScripts f
JOIN LatestVersion l ON f.FilmID = l.FilmID AND f.VersionNumber = l.MaxVersion;

-- 9. CTE: Approved scripts of genre 'Thriller'
WITH ThrillerScripts AS (
    SELECT ScriptID, ScriptTitle
    FROM FilmScripts
    WHERE Genre = 'Thriller' AND Approved = TRUE
)
SELECT * FROM ThrillerScripts;

-- 10. CTE: Scripts per language with counts
WITH LangCount AS (
    SELECT Language, COUNT(*) AS CountScripts
    FROM FilmScripts
    GROUP BY Language
)
SELECT * FROM LangCount;

-- 11. Procedure: Get scripts by FilmID
DELIMITER $$
CREATE PROCEDURE GetScriptsByFilm(IN fID INT)
BEGIN
    SELECT * FROM FilmScripts WHERE FilmID = fID;
END$$
DELIMITER ;

-- 12. Procedure: Approve a script
DELIMITER $$
CREATE PROCEDURE ApproveScript(IN sID INT)
BEGIN
    UPDATE FilmScripts SET Approved = TRUE WHERE ScriptID = sID;
END$$
DELIMITER ;

-- 13. Procedure: Insert new script
DELIMITER $$
CREATE PROCEDURE InsertScript(
    IN fID INT, IN title VARCHAR(100), IN writer VARCHAR(100), IN lang VARCHAR(50),
    IN version INT, IN subDate DATE, IN approved BOOLEAN, IN genre VARCHAR(50), IN notes TEXT
)
BEGIN
    INSERT INTO FilmScripts(FilmID, ScriptTitle, WriterName, Language, VersionNumber, SubmissionDate, Approved, Genre, Notes)
    VALUES(fID, title, writer, lang, version, subDate, approved, genre, notes);
END$$
DELIMITER ;

-- 14. Procedure: Delete a script
DELIMITER $$
CREATE PROCEDURE DeleteScript(IN sID INT)
BEGIN
    DELETE FROM FilmScripts WHERE ScriptID = sID;
END$$
DELIMITER ;

-- 15. Procedure: Update script version
DELIMITER $$
CREATE PROCEDURE UpdateScriptVersion(IN sID INT, IN newVersion INT)
BEGIN
    UPDATE FilmScripts SET VersionNumber = newVersion WHERE ScriptID = sID;
END$$
DELIMITER ;

-- 16. Rank scripts by version number
SELECT ScriptID, FilmID, VersionNumber,
       RANK() OVER (PARTITION BY FilmID ORDER BY VersionNumber DESC) AS VersionRank
FROM FilmScripts;

-- 17. Row number of scripts per writer
SELECT ScriptID, WriterName,
       ROW_NUMBER() OVER (PARTITION BY WriterName ORDER BY SubmissionDate DESC) AS RowNum
FROM FilmScripts;

-- 18. Dense rank by submission date
SELECT ScriptID, SubmissionDate,
       DENSE_RANK() OVER (ORDER BY SubmissionDate ASC) AS DenseRank
FROM FilmScripts;

-- 19. Count of scripts per genre using window
SELECT ScriptID, Genre,
       COUNT(*) OVER (PARTITION BY Genre) AS ScriptsPerGenre
FROM FilmScripts;

-- 20. Cumulative versions per film
SELECT ScriptID, FilmID, VersionNumber,
       SUM(VersionNumber) OVER (PARTITION BY FilmID ORDER BY VersionNumber) AS CumulativeVersion
FROM FilmScripts;

-- 21. Grant SELECT privilege
GRANT SELECT ON FilmScripts TO 'viewer'@'localhost';

-- 22. Grant INSERT privilege
GRANT INSERT ON FilmScripts TO 'editor'@'localhost';

-- 23. Grant UPDATE privilege
GRANT UPDATE ON FilmScripts TO 'editor'@'localhost';

-- 24. Revoke DELETE privilege
REVOKE DELETE ON FilmScripts FROM 'editor'@'localhost';

-- 25. Revoke INSERT privilege
REVOKE INSERT ON FilmScripts FROM 'editor'@'localhost';

-- 26. Update version with COMMIT
START TRANSACTION;
UPDATE FilmScripts SET VersionNumber = VersionNumber + 1 WHERE ScriptID = 1;
COMMIT;

-- 27. Rollback example
START TRANSACTION;
UPDATE FilmScripts SET Approved = FALSE WHERE ScriptID = 2;
ROLLBACK;

-- 28. Multiple updates with SAVEPOINT
START TRANSACTION;
UPDATE FilmScripts SET VersionNumber = VersionNumber + 1 WHERE ScriptID = 3;
SAVEPOINT sp1;
UPDATE FilmScripts SET Approved = FALSE WHERE ScriptID = 4;
ROLLBACK TO sp1;
COMMIT;

-- 29. Insert with rollback
START TRANSACTION;
INSERT INTO FilmScripts(FilmID, ScriptTitle, WriterName, Language, VersionNumber, SubmissionDate, Approved, Genre, Notes)
VALUES(129, 'Test Script', 'Test Writer', 'English', 1, '2023-09-09', TRUE, 'Test Genre', 'Sample notes');
ROLLBACK;

-- 30. Delete with commit
START TRANSACTION;
DELETE FROM FilmScripts WHERE ScriptID = 20;
COMMIT;

-- 31. Before insert: Ensure version number >=1
DELIMITER $$
CREATE TRIGGER trg_before_insert_script
BEFORE INSERT ON FilmScripts
FOR EACH ROW
BEGIN
    IF NEW.VersionNumber < 1 THEN
        SET NEW.VersionNumber = 1;
    END IF;
END$$
DELIMITER ;

-- 32. After insert: Log new script
DELIMITER $$
CREATE TRIGGER trg_after_insert_script
AFTER INSERT ON FilmScripts
FOR EACH ROW
BEGIN
    INSERT INTO ScriptLogs(ScriptID, ActionType, ActionDate) VALUES (NEW.ScriptID, 'INSERT', NOW());
END$$
DELIMITER ;

-- 33. Before update: Prevent negative version
DELIMITER $$
CREATE TRIGGER trg_before_update_script
BEFORE UPDATE ON FilmScripts
FOR EACH ROW
BEGIN
    IF NEW.VersionNumber < 1 THEN
        SET NEW.VersionNumber = 1;
    END IF;
END$$
DELIMITER ;

-- 34. After update: Log updates
DELIMITER $$
CREATE TRIGGER trg_after_update_script
AFTER UPDATE ON FilmScripts
FOR EACH ROW
BEGIN
    INSERT INTO ScriptLogs(ScriptID, ActionType, OldVersion, NewVersion, ActionDate)
    VALUES (OLD.ScriptID, 'UPDATE', OLD.VersionNumber, NEW.VersionNumber, NOW());
END$$
DELIMITER ;

-- 35. Before delete: Prevent deletion of approved scripts
DELIMITER $$
CREATE TRIGGER trg_before_delete_script
BEFORE DELETE ON FilmScripts
FOR EACH ROW
BEGIN
    IF OLD.Approved = TRUE THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Cannot delete approved script';
    END IF;
END$$
DELIMITER ;

-- 36. Count scripts per genre
SELECT Genre, COUNT(*) AS NumScripts FROM FilmScripts GROUP BY Genre;

-- 37. Average version number
SELECT AVG(VersionNumber) AS AvgVersion FROM FilmScripts;

-- 38. Maximum version number
SELECT MAX(VersionNumber) AS MaxVersion FROM FilmScripts;

-- 39. Minimum version number
SELECT MIN(VersionNumber) AS MinVersion FROM FilmScripts;

-- 40. Count scripts per writer
SELECT WriterName, COUNT(*) AS NumScripts FROM FilmScripts GROUP BY WriterName;

-- 41. Scripts submitted after 2020
SELECT * FROM FilmScripts WHERE SubmissionDate > '2020-01-01';

-- 42. Latest 5 scripts
SELECT * FROM FilmScripts ORDER BY SubmissionDate DESC LIMIT 5;

-- 43. Scripts of genre 'Thriller'
SELECT * FROM FilmScripts WHERE Genre = 'Thriller';

-- 44. Scripts needing approval
SELECT * FROM FilmScripts WHERE Approved = FALSE;

-- 45. Scripts with version > 2
SELECT * FROM FilmScripts WHERE VersionNumber > 2;

-- 46. Count scripts per language
SELECT Language, COUNT(*) AS NumScripts FROM FilmScripts GROUP BY Language;

-- 47. Scripts by 'Sukumar'
SELECT * FROM FilmScripts WHERE WriterName = 'Sukumar';

-- 48. Scripts containing 'Jawan' in title
SELECT * FROM FilmScripts WHERE ScriptTitle LIKE '%Jawan%';

-- 49. Scripts with version equal to max per film
SELECT * FROM FilmScripts f
WHERE VersionNumber = (SELECT MAX(VersionNumber) FROM FilmScripts WHERE FilmID = f.FilmID);

-- 50. Count of approved vs non-approved scripts
SELECT Approved, COUNT(*) AS CountScripts FROM FilmScripts GROUP BY Approved;


-- Table 15. BoxOffice 
CREATE TABLE BoxOffice (
    BoxOfficeID INT PRIMARY KEY,
    FilmID INT,
    ReleaseDate DATE,
    OpeningWeekendCollection DECIMAL(12,2),
    TotalDomesticCollection DECIMAL(12,2),
    TotalInternationalCollection DECIMAL(12,2),
    TotalScreens INT,
    Currency VARCHAR(10),
    TotalRevenue DECIMAL(12,2),
    ProfitOrLoss VARCHAR(10)
);

-- Insert 20 sample records
INSERT INTO BoxOffice (boxooficeid,filmid,relesedate,openingweekendcollection,totaldomesticcollection,totalscreen,currency,totalrevenue,profitorloss) VALUES
(1, 110, '2021-12-17', 45000000.00, 180000000.00, 120000000.00, 2500, 'INR', 300000000.00, 'Profit'),
(2, 111, '2022-03-25', 70000000.00, 280000000.00, 150000000.00, 3200, 'INR', 430000000.00, 'Profit'),
(3, 112, '2022-09-30', 30000000.00, 95000000.00, 50000000.00, 1500, 'INR', 145000000.00, 'Profit'),
(4, 113, '2019-06-28', 20000000.00, 85000000.00, 40000000.00, 1200, 'INR', 125000000.00, 'Profit'),
(5, 114, '2022-02-25', 55000000.00, 190000000.00, 80000000.00, 2700, 'INR', 270000000.00, 'Profit'),
(6, 115, '2018-05-11', 45000000.00, 130000000.00, 40000000.00, 2000, 'INR', 170000000.00, 'Profit'),
(7, 116, '2019-03-21', 50000000.00, 180000000.00, 60000000.00, 2300, 'INR', 240000000.00, 'Profit'),
(8, 117, '2018-10-05', 30000000.00, 110000000.00, 30000000.00, 1800, 'INR', 140000000.00, 'Profit'),
(9, 118, '2023-02-17', 25000000.00, 85000000.00, 20000000.00, 1600, 'INR', 105000000.00, 'Profit'),
(10, 119, '2019-10-04', 40000000.00, 125000000.00, 30000000.00, 1900, 'INR', 155000000.00, 'Profit'),
(11, 120, '2012-09-14', 35000000.00, 105000000.00, 25000000.00, 1500, 'INR', 130000000.00, 'Profit'),
(12, 121, '2020-11-12', 50000000.00, 200000000.00, 90000000.00, 2800, 'INR', 290000000.00, 'Profit'),
(13, 122, '2020-06-24', 15000000.00, 60000000.00, 30000000.00, 1000, 'INR', 90000000.00, 'Profit'),
(14, 123, '2008-09-05', 10000000.00, 50000000.00, 10000000.00, 900, 'INR', 60000000.00, 'Profit'),
(15, 124, '2023-09-07', 100000000.00, 350000000.00, 250000000.00, 4500, 'INR', 600000000.00, 'Profit'),
(16, 125, '2019-04-26', 10000000.00, 35000000.00, 15000000.00, 800, 'INR', 50000000.00, 'Profit'),
(17, 126, '2019-09-06', 30000000.00, 110000000.00, 35000000.00, 1800, 'INR', 145000000.00, 'Profit'),
(18, 127, '2014-03-07', 20000000.00, 75000000.00, 30000000.00, 1400, 'INR', 105000000.00, 'Profit'),
(19, 128, '2022-12-01', 15000000.00, 40000000.00, 15000000.00, 900, 'INR', 55000000.00, 'Loss'),
(20, 109, '2022-07-01', 25000000.00, 90000000.00, 40000000.00, 1700, 'INR', 130000000.00, 'Profit');

-- to display table data
SELECT * FROM BoxOffice;

-- to remove complete records from table
TRUNCATE TABLE BoxOffice;

-- to remove complete records and attributes from table
DROP TABLE BoxOffice;

-- 1. Select all records
SELECT * FROM BoxOffice;

-- 2. Movies with TotalRevenue > 200M
SELECT * FROM BoxOffice WHERE TotalRevenue>200000000;

-- 3. Movies with Profit
SELECT * FROM BoxOffice WHERE ProfitOrLoss='Profit';

-- 4. Movies with Loss
SELECT * FROM BoxOffice WHERE ProfitOrLoss='Loss';

-- 5. Count movies by Profit/Loss
SELECT ProfitOrLoss, COUNT(*) AS Total FROM BoxOffice GROUP BY ProfitOrLoss;

-- 6. Max OpeningWeekendCollection
SELECT FilmID, MAX(OpeningWeekendCollection) AS MaxOpening FROM BoxOffice;

-- 7. Min OpeningWeekendCollection
SELECT FilmID, MIN(OpeningWeekendCollection) AS MinOpening FROM BoxOffice;

-- 8. Average TotalRevenue
SELECT AVG(TotalRevenue) AS AvgRevenue FROM BoxOffice;

-- 9. Total screens per Film
SELECT FilmID, SUM(TotalScreens) AS TotalScreens FROM BoxOffice GROUP BY FilmID;

-- 10. Total domestic + international collection per film
SELECT FilmID, TotalDomesticCollection+TotalInternationalCollection AS CombinedCollection FROM BoxOffice;

-- 11. View: ProfitableMovies
CREATE VIEW ProfitableMovies AS SELECT * FROM BoxOffice WHERE ProfitOrLoss='Profit';

-- 12. Query view
SELECT * FROM ProfitableMovies;

-- 13. View: LossMakingMovies
CREATE VIEW LossMakingMovies AS SELECT * FROM BoxOffice WHERE ProfitOrLoss='Loss';

-- 14. Query view
SELECT * FROM LossMakingMovies;

-- 15. CTE: TopRevenueMovies
WITH TopRevenueMovies AS (SELECT * FROM BoxOffice ORDER BY TotalRevenue DESC LIMIT 5)
SELECT * FROM TopRevenueMovies;

-- 16. CTE: LowRevenueMovies
WITH LowRevenueMovies AS (SELECT * FROM BoxOffice WHERE TotalRevenue<100000000)
SELECT * FROM LowRevenueMovies;

-- 17. Window: Row number by TotalRevenue
SELECT *, ROW_NUMBER() OVER(ORDER BY TotalRevenue DESC) AS rn FROM BoxOffice;

-- 18. Window: Rank by TotalRevenue
SELECT *, RANK() OVER(ORDER BY TotalRevenue DESC) AS rnk FROM BoxOffice;

-- 19. Window: Dense rank by OpeningWeekendCollection
SELECT *, DENSE_RANK() OVER(ORDER BY OpeningWeekendCollection DESC) AS drnk FROM BoxOffice;

-- 20. Window: Cumulative Revenue
SELECT FilmID, SUM(TotalRevenue) OVER(ORDER BY ReleaseDate) AS CumRevenue FROM BoxOffice;

-- 21. Stored Procedure: GetBoxOfficeByFilm
DELIMITER //
CREATE PROCEDURE GetBoxOfficeByFilm(IN pFilmID INT)
BEGIN
    SELECT * FROM BoxOffice WHERE FilmID=pFilmID;
END;
//
DELIMITER ;

-- 22. Call procedure
CALL GetBoxOfficeByFilm(110);

-- 23. Stored Procedure: GetProfitableFilms
DELIMITER //
CREATE PROCEDURE GetProfitableFilms()
BEGIN
    SELECT * FROM BoxOffice WHERE ProfitOrLoss='Profit';
END;
//
DELIMITER ;

-- 24. Call procedure
CALL GetProfitableFilms();

-- 25. Update TotalRevenue
UPDATE BoxOffice SET TotalRevenue=TotalDomesticCollection+TotalInternationalCollection WHERE BoxOfficeID=3;

-- 26. Delete a record
DELETE FROM BoxOffice WHERE BoxOfficeID=19;

-- 27. Insert new record
INSERT INTO BoxOffice(BoxOfficeID, FilmID, ReleaseDate, OpeningWeekendCollection, TotalDomesticCollection, TotalInternationalCollection, TotalScreens, Currency, TotalRevenue, ProfitOrLoss)
VALUES(21,129,'2023-05-15',60000000,220000000,90000000,2800,'INR',400000000,'Profit');

-- 28. Transaction commit
START TRANSACTION;
UPDATE BoxOffice SET TotalRevenue=500000000 WHERE BoxOfficeID=15;
COMMIT;

-- 29. Transaction rollback
START TRANSACTION;
UPDATE BoxOffice SET TotalRevenue=1000000 WHERE BoxOfficeID=2;
ROLLBACK;

-- 30. Grant SELECT
GRANT SELECT ON BoxOffice TO 'guest'@'localhost';

-- 31. Revoke SELECT
REVOKE SELECT ON BoxOffice FROM 'guest'@'localhost';

-- 32. Trigger: before insert to check TotalRevenue
DELIMITER //
CREATE TRIGGER before_boxoffice_insert BEFORE INSERT ON BoxOffice
FOR EACH ROW
BEGIN
    IF NEW.TotalRevenue<0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='TotalRevenue cannot be negative';
    END IF;
END;
//
DELIMITER ;

-- 33. Trigger: before update to check ProfitOrLoss
DELIMITER //
CREATE TRIGGER before_boxoffice_update BEFORE UPDATE ON BoxOffice
FOR EACH ROW
BEGIN
    IF NEW.TotalRevenue<0 THEN
        SET NEW.ProfitOrLoss='Loss';
    ELSE
        SET NEW.ProfitOrLoss='Profit';
    END IF;
END;
//
DELIMITER ;

-- 34. Subquery: movie with max TotalRevenue
SELECT * FROM BoxOffice WHERE TotalRevenue=(SELECT MAX(TotalRevenue) FROM BoxOffice);

-- 35. Subquery: movie with min TotalRevenue
SELECT * FROM BoxOffice WHERE TotalRevenue=(SELECT MIN(TotalRevenue) FROM BoxOffice);

-- 36. Count movies by Currency
SELECT Currency, COUNT(*) AS Total FROM BoxOffice GROUP BY Currency;

-- 37. COALESCE for ProfitOrLoss
SELECT FilmID, COALESCE(ProfitOrLoss,'Unknown') AS Status FROM BoxOffice;

-- 38. IFNULL for TotalInternationalCollection
SELECT FilmID, IFNULL(TotalInternationalCollection,0) AS IntlCollection FROM BoxOffice;

-- 39. Latest release
SELECT * FROM BoxOffice ORDER BY ReleaseDate DESC LIMIT 1;

-- 40. Union: Profitable and Loss movies
SELECT FilmID, ProfitOrLoss, TotalRevenue FROM BoxOffice WHERE ProfitOrLoss='Profit'
UNION
SELECT FilmID, ProfitOrLoss, TotalRevenue FROM BoxOffice WHERE ProfitOrLoss='Loss';

-- 41. Stored Procedure: UpdateTotalRevenue
DELIMITER //
CREATE PROCEDURE UpdateTotalRevenue(IN pID INT, IN pRevenue DECIMAL(12,2))
BEGIN
    UPDATE BoxOffice SET TotalRevenue=pRevenue WHERE BoxOfficeID=pID;
END;
//
DELIMITER ;

-- 42. Call procedure
CALL UpdateTotalRevenue(5,300000000);

-- 43. Window: cumulative domestic collection
SELECT FilmID, SUM(TotalDomesticCollection) OVER(ORDER BY ReleaseDate) AS CumDomestic FROM BoxOffice;

-- 44. Window: cumulative international collection
SELECT FilmID, SUM(TotalInternationalCollection) OVER(ORDER BY ReleaseDate) AS CumInternational FROM BoxOffice;

-- 45. View: TopRevenueFilms
CREATE VIEW TopRevenueFilms AS SELECT * FROM BoxOffice ORDER BY TotalRevenue DESC LIMIT 5;

-- 46. Query view
SELECT * FROM TopRevenueFilms;

-- 47. CTE: LowRevenueFilms
WITH LowRevenueFilms AS (SELECT * FROM BoxOffice WHERE TotalRevenue<100000000)
SELECT * FROM LowRevenueFilms;

-- 48. Trigger: log deleted BoxOffice records
CREATE TABLE BoxOfficeAudit(id INT AUTO_INCREMENT PRIMARY KEY, BoxOfficeID INT, FilmID INT, deleted_at DATETIME);
DELIMITER //
CREATE TRIGGER after_boxoffice_delete AFTER DELETE ON BoxOffice
FOR EACH ROW
BEGIN
    INSERT INTO BoxOfficeAudit(BoxOfficeID, FilmID, deleted_at) VALUES(OLD.BoxOfficeID, OLD.FilmID, NOW());
END;
//
DELIMITER ;

-- 49. Select profitable movies by screens>2000
SELECT * FROM BoxOffice WHERE ProfitOrLoss='Profit' AND TotalScreens>2000;

-- 50. Count movies by ProfitOrLoss
SELECT ProfitOrLoss, COUNT(*) AS Total FROM BoxOffice GROUP BY ProfitOrLoss;


-- Table 16. CastingCalls
CREATE TABLE CastingCalls (
    CallID INT PRIMARY KEY,
    FilmID INT,
    RoleTitle VARCHAR(100),
    GenderRequired VARCHAR(10),
    AgeRange VARCHAR(20),
    AuditionDate DATE,
    Location VARCHAR(100),
    ContactEmail VARCHAR(100),
    Status VARCHAR(20),
    Remarks TEXT
);

-- Insert 20 sample records
INSERT INTO CastingCalls  (callid,filmid,roletitle,genderrequired,agerenge,auditiondate,location,countemail,status,remarks) VALUES
(1, 110, 'Lead Actor', 'Male', '25-35', '2024-07-01', 'Mumbai', 'casting@filmx.com', 'Open', 'Prefer theater background.'),
(2, 111, 'Lead Actress', 'Female', '22-30', '2024-07-02', 'Hyderabad', 'casting@filmyx.com', 'Open', 'Fluent in Telugu and English.'),
(3, 112, 'Comedian Side Role', 'Male', '30-45', '2024-07-03', 'Bangalore', 'casting@lolfilms.in', 'Closed', 'Role requires great timing.'),
(4, 113, 'Supporting Actor', 'Male', '28-38', '2024-07-04', 'Chennai', 'support@filmfun.in', 'Open', 'Rural accent preferred.'),
(5, 114, 'Villain', 'Male', '35-50', '2024-07-05', 'Kolkata', 'auditions@darkrole.com', 'Open', 'Intense facial expressions needed.'),
(6, 115, 'Mother Role', 'Female', '40-55', '2024-07-06', 'Delhi', 'family@dramaset.com', 'Open', 'Prior experience in serials preferred.'),
(7, 116, 'Child Artist', 'Any', '6-12', '2024-07-07', 'Pune', 'childcast@cinemakids.com', 'Open', 'Energetic and fluent in Hindi.'),
(8, 117, 'College Student', 'Female', '18-24', '2024-07-08', 'Ahmedabad', 'youthfilm@funhouse.com', 'Closed', 'North Indian accent preferred.'),
(9, 118, 'Inspector Role', 'Male', '30-40', '2024-07-09', 'Lucknow', 'copcast@thrillers.in', 'Open', 'Must be physically fit.'),
(10, 119, 'Narrator (Voiceover)', 'Any', 'Any', '2024-07-10', 'Online', 'voice@studiovoice.in', 'Open', 'Strong voice modulation required.'),
(11, 120, 'Lead Actress', 'Female', '20-30', '2024-07-11', 'Bhopal', 'lead@indiecinema.in', 'Open', 'Dance skills required.'),
(12, 121, 'Comedy Relief', 'Male', '25-35', '2024-07-12', 'Jaipur', 'humor@filmdose.com', 'Closed', 'Famous mimicry artists welcome.'),
(13, 122, 'Father Role', 'Male', '40-55', '2024-07-13', 'Goa', 'dadrole@familyfilms.in', 'Open', 'Role involves emotional scenes.'),
(14, 123, 'Background Dancer', 'Any', '18-28', '2024-07-14', 'Mumbai', 'dancecrew@filmymoves.in', 'Open', 'Bollywood dance experience needed.'),
(15, 124, 'NRI Role', 'Female', '25-35', '2024-07-15', 'Delhi', 'nricast@globalcinema.in', 'Open', 'Neutral accent preferred.'),
(16, 125, 'Haryanvi Villager', 'Male', '30-45', '2024-07-16', 'Hisar', 'ruralcast@folktales.in', 'Open', 'Fluency in Haryanvi required.'),
(17, 126, 'Techie (Geek Role)', 'Male', '24-32', '2024-07-17', 'Bangalore', 'codercast@techfilms.in', 'Open', 'Geeky appearance preferred.'),
(18, 127, 'Hostel Warden', 'Female', '35-50', '2024-07-18', 'Chennai', 'warden@campusreel.in', 'Open', 'Commanding tone essential.'),
(19, 128, 'Tribal Warrior', 'Male', '20-35', '2024-07-19', 'Kerala', 'tribecast@jungledreams.in', 'Open', 'Physically fit and dark tone role.'),
(20, 109, 'Muslim Mother', 'Female', '35-50', '2024-07-20', 'Hyderabad', 'momcast@heritagefilms.in', 'Open', 'Urdu dialogue delivery needed.');

-- to display table data
SELECT * FROM CastingCalls;

-- to remove complete records from table
TRUNCATE TABLE CastingCalls;

-- to remove complete records and attributes from table
DROP TABLE CastingCalls;

-- 1. Select all records
SELECT * FROM CastingCalls;

-- 2. Open casting calls
SELECT * FROM CastingCalls WHERE Status='Open';

-- 3. Closed casting calls
SELECT * FROM CastingCalls WHERE Status='Closed';

-- 4. Count calls by Status
SELECT Status, COUNT(*) AS TotalCalls FROM CastingCalls GROUP BY Status;

-- 5. Calls by GenderRequired
SELECT GenderRequired, COUNT(*) AS Total FROM CastingCalls GROUP BY GenderRequired;

-- 6. Calls by AgeRange
SELECT AgeRange, COUNT(*) AS Total FROM CastingCalls GROUP BY AgeRange;

-- 7. Earliest audition
SELECT * FROM CastingCalls ORDER BY AuditionDate ASC LIMIT 1;

-- 8. Latest audition
SELECT * FROM CastingCalls ORDER BY AuditionDate DESC LIMIT 1;

-- 9. View: OpenCastingCalls
CREATE VIEW OpenCastingCalls AS SELECT * FROM CastingCalls WHERE Status='Open';

-- 10. Query view
SELECT * FROM OpenCastingCalls;

-- 11. View: ClosedCastingCalls
CREATE VIEW ClosedCastingCalls AS SELECT * FROM CastingCalls WHERE Status='Closed';

-- 12. Query view
SELECT * FROM ClosedCastingCalls;

-- 13. CTE: UpcomingAuditions
WITH UpcomingAuditions AS (SELECT * FROM CastingCalls WHERE AuditionDate>CURDATE())
SELECT * FROM UpcomingAuditions;

-- 14. CTE: RecentAuditions
WITH RecentAuditions AS (SELECT * FROM CastingCalls WHERE AuditionDate<=CURDATE())
SELECT * FROM RecentAuditions;

-- 15. Window: Row number by AuditionDate
SELECT *, ROW_NUMBER() OVER(ORDER BY AuditionDate ASC) AS rn FROM CastingCalls;

-- 16. Window: Rank by AuditionDate
SELECT *, RANK() OVER(ORDER BY AuditionDate ASC) AS rnk FROM CastingCalls;

-- 17. Window: Dense rank by AgeRange
SELECT *, DENSE_RANK() OVER(ORDER BY AgeRange ASC) AS drnk FROM CastingCalls;

-- 18. Window: Count by Location
SELECT *, COUNT(*) OVER(PARTITION BY Location) AS CallsPerLocation FROM CastingCalls;

-- 19. Stored Procedure: GetCastingByFilm
DELIMITER //
CREATE PROCEDURE GetCastingByFilm(IN pFilmID INT)
BEGIN
    SELECT * FROM CastingCalls WHERE FilmID=pFilmID;
END;
//
DELIMITER ;

-- 20. Call procedure
CALL GetCastingByFilm(110);

-- 21. Stored Procedure: GetOpenCastingCalls
DELIMITER //
CREATE PROCEDURE GetOpenCastingCalls()
BEGIN
    SELECT * FROM CastingCalls WHERE Status='Open';
END;
//
DELIMITER ;

-- 22. Call procedure
CALL GetOpenCastingCalls();

-- 23. Update Status
UPDATE CastingCalls SET Status='Closed' WHERE CallID=2;

-- 24. Delete a record
DELETE FROM CastingCalls WHERE CallID=3;

-- 25. Insert new casting call
INSERT INTO CastingCalls(CallID, FilmID, RoleTitle, GenderRequired, AgeRange, AuditionDate, Location, ContactEmail, Status, Remarks)
VALUES(21,129,'Lead Actor','Male','28-38','2024-08-01','Mumbai','casting@newfilm.com','Open','Requires theater background');

-- 26. Transaction commit
START TRANSACTION;
UPDATE CastingCalls SET Status='Closed' WHERE CallID=1;
COMMIT;

-- 27. Transaction rollback
START TRANSACTION;
UPDATE CastingCalls SET Status='Open' WHERE CallID=4;
ROLLBACK;

-- 28. Grant SELECT
GRANT SELECT ON CastingCalls TO 'guest'@'localhost';

-- 29. Revoke SELECT
REVOKE SELECT ON CastingCalls FROM 'guest'@'localhost';

-- 30. Trigger: before insert to validate AgeRange
DELIMITER //
CREATE TRIGGER before_casting_insert BEFORE INSERT ON CastingCalls
FOR EACH ROW
BEGIN
    IF NEW.AgeRange IS NULL OR NEW.AgeRange='' THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='AgeRange required';
    END IF;
END;
//
DELIMITER ;

-- 31. Trigger: before update to check Status
DELIMITER //
CREATE TRIGGER before_casting_update BEFORE UPDATE ON CastingCalls
FOR EACH ROW
BEGIN
    IF NEW.Status NOT IN ('Open','Closed') THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Invalid Status';
    END IF;
END;
//
DELIMITER ;

-- 32. Subquery: casting call for FilmID with max CallID
SELECT * FROM CastingCalls WHERE CallID=(SELECT MAX(CallID) FROM CastingCalls);

-- 33. Subquery: casting call for FilmID with min CallID
SELECT * FROM CastingCalls WHERE CallID=(SELECT MIN(CallID) FROM CastingCalls);

-- 34. Count by Location
SELECT Location, COUNT(*) AS TotalCalls FROM CastingCalls GROUP BY Location;

-- 35. COALESCE for Remarks
SELECT CallID, COALESCE(Remarks,'None') AS Notes FROM CastingCalls;

-- 36. IFNULL for ContactEmail
SELECT CallID, IFNULL(ContactEmail,'Not Provided') AS Email FROM CastingCalls;

-- 37. Union: Open and Closed casting calls
SELECT CallID, Status FROM CastingCalls WHERE Status='Open'
UNION
SELECT CallID, Status FROM CastingCalls WHERE Status='Closed';

-- 38. Stored Procedure: UpdateCastingStatus
DELIMITER //
CREATE PROCEDURE UpdateCastingStatus(IN pCallID INT, IN pStatus VARCHAR(20))
BEGIN
    UPDATE CastingCalls SET Status=pStatus WHERE CallID=pCallID;
END;
//
DELIMITER ;

-- 39. Call procedure
CALL UpdateCastingStatus(5,'Closed');

-- 40. Window: cumulative calls per Film
SELECT FilmID, COUNT(CallID) OVER(PARTITION BY FilmID ORDER BY AuditionDate) AS CumCalls FROM CastingCalls;

-- 41. Window: cumulative open calls
SELECT Status, COUNT(CallID) OVER(PARTITION BY Status ORDER BY AuditionDate) AS CumStatus FROM CastingCalls;

-- 42. View: UpcomingCasting
CREATE VIEW UpcomingCasting AS SELECT * FROM CastingCalls WHERE AuditionDate>CURDATE();

-- 43. Query view
SELECT * FROM UpcomingCasting;

-- 44. CTE: FemaleRoles
WITH FemaleRoles AS (SELECT * FROM CastingCalls WHERE GenderRequired='Female')
SELECT * FROM FemaleRoles;

-- 45. Trigger: log deleted CastingCalls
CREATE TABLE CastingCallsAudit(id INT AUTO_INCREMENT PRIMARY KEY, CallID INT, FilmID INT, deleted_at DATETIME);
DELIMITER //
CREATE TRIGGER after_casting_delete AFTER DELETE ON CastingCalls
FOR EACH ROW
BEGIN
    INSERT INTO CastingCallsAudit(CallID, FilmID, deleted_at) VALUES(OLD.CallID, OLD.FilmID, NOW());
END;
//
DELIMITER ;

-- 46. Count open casting calls by Location
SELECT Location, COUNT(*) AS OpenCalls FROM CastingCalls WHERE Status='Open' GROUP BY Location;

-- 47. Count closed casting calls by Location
SELECT Location, COUNT(*) AS ClosedCalls FROM CastingCalls WHERE Status='Closed' GROUP BY Location;

-- 48. Latest open audition
SELECT * FROM CastingCalls WHERE Status='Open' ORDER BY AuditionDate DESC LIMIT 1;

-- 49. Earliest closed audition
SELECT * FROM CastingCalls WHERE Status='Closed' ORDER BY AuditionDate ASC LIMIT 1;

-- 50. Count calls by AgeRange and GenderRequired
SELECT AgeRange, GenderRequired, COUNT(*) AS Total FROM CastingCalls GROUP BY AgeRange, GenderRequired;


-- Table 17. DistributionPartners 
CREATE TABLE DistributionPartners (
    PartnerID INT PRIMARY KEY,
    PartnerName VARCHAR(100),
    Country VARCHAR(50),
    ContactPerson VARCHAR(100),
    Email VARCHAR(100),
    PhoneNumber VARCHAR(20),
    ContractStart DATE,
    ContractEnd DATE,
    NumberOfScreens INT,
    RevenueSharePercent DECIMAL(5,2)
);

-- Insert 20 sample records
INSERT INTO DistributionPartners (partnerid,partnername,country,contactperson,email,phonenumber,contractstart,contractend,numberofscreen,revenuesharepercent) VALUES
(1, 'PVR Cinemas', 'India', 'Rajesh Kumar', 'rajesh@pvr.in', '9812345670', '2022-01-01', '2027-01-01', 1400, 20.00),
(2, 'INOX Leisure', 'India', 'Sunita Mehta', 'sunita@inox.in', '9823456781', '2021-06-01', '2026-06-01', 1200, 19.50),
(3, 'Cinepolis India', 'India', 'Amit Verma', 'amit@cinepolis.in', '9834567892', '2023-03-15', '2028-03-15', 950, 18.75),
(4, 'Carnival Cinemas', 'India', 'Deepak Nair', 'deepak@carnivalcinemas.in', '9845678903', '2020-10-10', '2025-10-10', 1000, 21.00),
(5, 'Miraj Cinemas', 'India', 'Sanjana Roy', 'sanjana@mirajcinemas.in', '9856789014', '2022-08-01', '2027-08-01', 800, 18.00),
(6, 'Mukta A2 Cinemas', 'India', 'Karan Kapoor', 'karan@muktaa2.in', '9867890125', '2021-01-01', '2026-01-01', 750, 19.00),
(7, 'Wave Cinemas', 'India', 'Priya Sethi', 'priya@wavecinemas.in', '9878901236', '2023-02-01', '2028-02-01', 600, 17.50),
(8, 'Asian Cinemas', 'India', 'Arjun Desai', 'arjun@asian.in', '9889012347', '2022-04-01', '2027-04-01', 700, 18.25),
(9, 'City Pride', 'India', 'Mehul Shah', 'mehul@citypride.in', '9890123458', '2021-11-01', '2026-11-01', 650, 19.75),
(10, 'Movietime Cinemas', 'India', 'Neha Joshi', 'neha@movietime.in', '9901234569', '2023-01-15', '2028-01-15', 500, 17.00),
(11, 'Rajhans Cinemas', 'India', 'Vikram Singh', 'vikram@rajhans.in', '9912345670', '2021-09-01', '2026-09-01', 580, 18.60),
(12, 'Maxus Cinemas', 'India', 'Poonam Gupta', 'poonam@maxus.in', '9923456781', '2020-06-01', '2025-06-01', 400, 16.90),
(13, 'Q Cinemas', 'India', 'Harish Reddy', 'harish@qcinemas.in', '9934567892', '2022-10-01', '2027-10-01', 450, 17.75),
(14, 'SRS Cinemas', 'India', 'Anjali Rao', 'anjali@srscinemas.in', '9945678903', '2023-05-01', '2028-05-01', 550, 18.30),
(15, 'E-Square', 'India', 'Yogesh Patil', 'yogesh@esquare.in', '9956789014', '2021-03-01', '2026-03-01', 420, 18.10),
(16, 'Fun Cinemas', 'India', 'Kritika Sharma', 'kritika@funcinemas.in', '9967890125', '2022-07-01', '2027-07-01', 480, 18.90),
(17, 'Alankar Cinemas', 'India', 'Ravi Jadhav', 'ravi@alankar.in', '9978901236', '2021-12-01', '2026-12-01', 300, 17.20),
(18, 'Sangam Cinemas', 'India', 'Divya Nair', 'divya@sangam.in', '9989012347', '2020-05-01', '2025-05-01', 350, 16.50),
(19, 'K Sera Sera Miniplex', 'India', 'Sameer Khan', 'sameer@kssera.in', '9990123458', '2023-03-01', '2028-03-01', 280, 15.75),
(20, 'Big Cinemas', 'India', 'Tarun Malhotra', 'tarun@bigcinemas.in', '9001234569', '2022-06-01', '2027-06-01', 950, 20.00);

-- to display table data
SELECT * FROM DistributionPartners;

-- to remove complete records from table
TRUNCATE TABLE DistributionPartners;

-- to remove complete records and attributes from table
DROP TABLE DistributionPartners;

-- 1. Select all records
SELECT * FROM DistributionPartners;

-- 2. Partners with RevenueShare > 19%
SELECT * FROM DistributionPartners WHERE RevenueSharePercent>19;

-- 3. Partners with contracts ending in 2027
SELECT * FROM DistributionPartners WHERE ContractEnd LIKE '2027%';

-- 4. Count partners by Country
SELECT Country, COUNT(*) AS TotalPartners FROM DistributionPartners GROUP BY Country;

-- 5. Partners with more than 500 screens
SELECT * FROM DistributionPartners WHERE NumberOfScreens>500;

-- 6. Earliest contract
SELECT * FROM DistributionPartners ORDER BY ContractStart ASC LIMIT 1;

-- 7. Latest contract
SELECT * FROM DistributionPartners ORDER BY ContractEnd DESC LIMIT 1;

-- 8. View: HighRevenuePartners
CREATE VIEW HighRevenuePartners AS SELECT * FROM DistributionPartners WHERE RevenueSharePercent>19;

-- 9. Query view
SELECT * FROM HighRevenuePartners;

-- 10. View: LargeScreenPartners
CREATE VIEW LargeScreenPartners AS SELECT * FROM DistributionPartners WHERE NumberOfScreens>800;

-- 11. Query view
SELECT * FROM LargeScreenPartners;

-- 12. CTE: IndianPartners
WITH IndianPartners AS (SELECT * FROM DistributionPartners WHERE Country='India')
SELECT * FROM IndianPartners;

-- 13. CTE: ForeignPartners
WITH ForeignPartners AS (SELECT * FROM DistributionPartners WHERE Country<>'India')
SELECT * FROM ForeignPartners;

-- 14. Window: Row number by ContractStart
SELECT *, ROW_NUMBER() OVER(ORDER BY ContractStart ASC) AS rn FROM DistributionPartners;

-- 15. Window: Rank by RevenueShare
SELECT *, RANK() OVER(ORDER BY RevenueSharePercent DESC) AS rnk FROM DistributionPartners;

-- 16. Window: Dense rank by NumberOfScreens
SELECT *, DENSE_RANK() OVER(ORDER BY NumberOfScreens DESC) AS drnk FROM DistributionPartners;

-- 17. Window: Count by Country
SELECT *, COUNT(*) OVER(PARTITION BY Country) AS CountryCount FROM DistributionPartners;

-- 18. Stored Procedure: GetPartnerByID
DELIMITER //
CREATE PROCEDURE GetPartnerByID(IN pID INT)
BEGIN
    SELECT * FROM DistributionPartners WHERE PartnerID=pID;
END;
//
DELIMITER ;

-- 19. Call procedure
CALL GetPartnerByID(1);

-- 20. Stored Procedure: GetHighRevenuePartners
DELIMITER //
CREATE PROCEDURE GetHighRevenuePartners()
BEGIN
    SELECT * FROM DistributionPartners WHERE RevenueSharePercent>19;
END;
//
DELIMITER ;

-- 21. Call procedure
CALL GetHighRevenuePartners();

-- 22. Update RevenueSharePercent
UPDATE DistributionPartners SET RevenueSharePercent=20 WHERE PartnerID=7;

-- 23. Delete a partner
DELETE FROM DistributionPartners WHERE PartnerID=19;

-- 24. Insert new partner
INSERT INTO DistributionPartners(PartnerID, PartnerName, Country, ContactPerson, Email, PhoneNumber, ContractStart, ContractEnd, NumberOfScreens, RevenueSharePercent)
VALUES(21,'Galaxy Cinemas','India','Rohit Sharma','rohit@galaxy.in','9012345678','2024-01-01','2029-01-01',500,18.50);

-- 25. Transaction commit
START TRANSACTION;
UPDATE DistributionPartners SET RevenueSharePercent=21 WHERE PartnerID=4;
COMMIT;

-- 26. Transaction rollback
START TRANSACTION;
UPDATE DistributionPartners SET NumberOfScreens=999 WHERE PartnerID=2;
ROLLBACK;

-- 27. Grant SELECT
GRANT SELECT ON DistributionPartners TO 'guest'@'localhost';

-- 28. Revoke SELECT
REVOKE SELECT ON DistributionPartners FROM 'guest'@'localhost';

-- 29. Trigger: before insert validate RevenueSharePercent
DELIMITER //
CREATE TRIGGER before_partner_insert BEFORE INSERT ON DistributionPartners
FOR EACH ROW
BEGIN
    IF NEW.RevenueSharePercent IS NULL OR NEW.RevenueSharePercent<=0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='RevenueSharePercent must be positive';
    END IF;
END;
//
DELIMITER ;

-- 30. Trigger: before update validate NumberOfScreens
DELIMITER //
CREATE TRIGGER before_partner_update BEFORE UPDATE ON DistributionPartners
FOR EACH ROW
BEGIN
    IF NEW.NumberOfScreens<0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='NumberOfScreens cannot be negative';
    END IF;
END;
//
DELIMITER ;

-- 31. Subquery: Partner with max screens
SELECT * FROM DistributionPartners WHERE NumberOfScreens=(SELECT MAX(NumberOfScreens) FROM DistributionPartners);

-- 32. Subquery: Partner with min RevenueShare
SELECT * FROM DistributionPartners WHERE RevenueSharePercent=(SELECT MIN(RevenueSharePercent) FROM DistributionPartners);

-- 33. Count by Country
SELECT Country, COUNT(*) AS Total FROM DistributionPartners GROUP BY Country;

-- 34. COALESCE for ContactPerson
SELECT PartnerID, COALESCE(ContactPerson,'None') AS Contact FROM DistributionPartners;

-- 35. IFNULL for Email
SELECT PartnerID, IFNULL(Email,'Not Provided') AS EmailAddr FROM DistributionPartners;

-- 36. Union: High and Low Revenue Partners
SELECT PartnerID, RevenueSharePercent FROM DistributionPartners WHERE RevenueSharePercent>19
UNION
SELECT PartnerID, RevenueSharePercent FROM DistributionPartners WHERE RevenueSharePercent<=19;

-- 37. Stored Procedure: UpdateRevenueShare
DELIMITER //
CREATE PROCEDURE UpdateRevenueShare(IN pID INT, IN pShare DECIMAL(5,2))
BEGIN
    UPDATE DistributionPartners SET RevenueSharePercent=pShare WHERE PartnerID=pID;
END;
//
DELIMITER ;

-- 38. Call procedure
CALL UpdateRevenueShare(5,19.50);

-- 39. Window: cumulative screens by Country
SELECT Country, NumberOfScreens, SUM(NumberOfScreens) OVER(PARTITION BY Country ORDER BY PartnerID) AS CumScreens FROM DistributionPartners;

-- 40. Window: cumulative revenue share by Country
SELECT Country, RevenueSharePercent, SUM(RevenueSharePercent) OVER(PARTITION BY Country ORDER BY PartnerID) AS CumRevenueShare FROM DistributionPartners;

-- 41. View: ExpiringContracts
CREATE VIEW ExpiringContracts AS SELECT * FROM DistributionPartners WHERE ContractEnd<CURDATE()+INTERVAL 1 YEAR;

-- 42. Query view
SELECT * FROM ExpiringContracts;

-- 43. CTE: TopRevenuePartners
WITH TopRevenuePartners AS (SELECT * FROM DistributionPartners WHERE RevenueSharePercent>19)
SELECT * FROM TopRevenuePartners;

-- 44. Trigger: log deleted partners
CREATE TABLE DistributionPartnersAudit(id INT AUTO_INCREMENT PRIMARY KEY, PartnerID INT, PartnerName VARCHAR(100), deleted_at DATETIME);
DELIMITER //
CREATE TRIGGER after_partner_delete AFTER DELETE ON DistributionPartners
FOR EACH ROW
BEGIN
    INSERT INTO DistributionPartnersAudit(PartnerID, PartnerName, deleted_at) VALUES(OLD.PartnerID, OLD.PartnerName, NOW());
END;
//
DELIMITER ;

-- 45. Count partners by RevenueShare
SELECT RevenueSharePercent, COUNT(*) AS Total FROM DistributionPartners GROUP BY RevenueSharePercent;

-- 46. Count partners by NumberOfScreens
SELECT NumberOfScreens, COUNT(*) AS Total FROM DistributionPartners GROUP BY NumberOfScreens;

-- 47. Latest contract
SELECT * FROM DistributionPartners ORDER BY ContractEnd DESC LIMIT 1;

-- 48. Earliest contract
SELECT * FROM DistributionPartners ORDER BY ContractStart ASC LIMIT 1;

-- 49. Average RevenueSharePercent
SELECT AVG(RevenueSharePercent) AS AvgRevenue FROM DistributionPartners;

-- 50. Max NumberOfScreens
SELECT MAX(NumberOfScreens) AS MaxScreens FROM DistributionPartners;


-- Table 18. CensorshipCertificates
CREATE TABLE CensorshipCertificates (
    CertificateID INT PRIMARY KEY,
    FilmID INT,
    CertificateType VARCHAR(10),
    IssuingCountry VARCHAR(50),
    IssueDate DATE,
    ValidUntil DATE,
    Remarks TEXT,
    CensorBoard VARCHAR(100),
    Language VARCHAR(50),
    CertificateNumber VARCHAR(50)
);

-- Insert 20 sample records
INSERT INTO CensorshipCertificates   (certificateid,filmid,certificatetype,issuingcountry,issuedate,validuntil,remarks,censorboard,language,certificatenumber) VALUES
(1, 110, 'UA', 'India', '2021-12-01', '2031-12-01', 'Violence scenes trimmed', 'CBFC Mumbai', 'Telugu', 'CBFC-TG-2021-001'),
(2, 111, 'U', 'India', '2022-03-10', '2032-03-10', 'No objectionable content', 'CBFC Hyderabad', 'Telugu', 'CBFC-TG-2022-003'),
(3, 112, 'A', 'India', '2022-09-20', '2032-09-20', 'Mythological violence present', 'CBFC Bangalore', 'Kannada', 'CBFC-KA-2022-009'),
(4, 113, 'UA', 'India', '2019-06-10', '2029-06-10', 'Socially sensitive subject', 'CBFC Delhi', 'Hindi', 'CBFC-HI-2019-015'),
(5, 114, 'A', 'India', '2022-02-05', '2032-02-05', 'Adult themes and language', 'CBFC Mumbai', 'Hindi', 'CBFC-HI-2022-021'),
(6, 115, 'UA', 'India', '2018-04-22', '2028-04-22', 'Violence moderately shown', 'CBFC Mumbai', 'Hindi', 'CBFC-HI-2018-033'),
(7, 116, 'U', 'India', '2019-03-10', '2029-03-10', 'Clean for general audience', 'CBFC Chandigarh', 'Hindi', 'CBFC-HI-2019-045'),
(8, 117, 'UA', 'India', '2018-09-15', '2028-09-15', 'Some disturbing visuals', 'CBFC Goa', 'Hindi', 'CBFC-HI-2018-052'),
(9, 118, 'U', 'India', '2023-01-20', '2033-01-20', 'Approved without cuts', 'CBFC Kochi', 'Malayalam', 'CBFC-MA-2023-004'),
(10, 119, 'A', 'India', '2019-09-01', '2029-09-01', 'Strong violence and emotions', 'CBFC Chennai', 'Tamil', 'CBFC-TA-2019-078'),
(11, 120, 'U', 'India', '2012-08-22', '2022-08-22', 'Clean content for all ages', 'CBFC Mumbai', 'Hindi', 'CBFC-HI-2012-099'),
(12, 121, 'UA', 'India', '2020-10-12', '2030-10-12', 'Biographical drama', 'CBFC Chennai', 'Tamil', 'CBFC-TA-2020-034'),
(13, 122, 'A', 'India', '2020-06-01', '2030-06-01', 'Horror and fantasy elements', 'CBFC Mumbai', 'Hindi', 'CBFC-HI-2020-046'),
(14, 123, 'U', 'India', '2008-08-20', '2018-08-20', 'No cuts required', 'CBFC Mumbai', 'Hindi', 'CBFC-HI-2008-102'),
(15, 124, 'UA', 'India', '2023-08-25', '2033-08-25', 'High-action scenes', 'CBFC Mumbai', 'Hindi', 'CBFC-HI-2023-007'),
(16, 125, 'U', 'India', '2019-04-10', '2029-04-10', 'Approved for family viewing', 'CBFC Kochi', 'Malayalam', 'CBFC-MA-2019-063'),
(17, 126, 'U', 'India', '2019-08-05', '2029-08-05', 'Educational and inspiring', 'CBFC Mumbai', 'Hindi', 'CBFC-HI-2019-088'),
(18, 127, 'UA', 'India', '2013-02-17', '2023-02-17', 'Teen and adult audience', 'CBFC Delhi', 'Hindi', 'CBFC-HI-2013-119'),
(19, 128, 'UA', 'India', '2022-11-10', '2032-11-10', 'Thematic maturity required', 'CBFC Mumbai', 'Hindi', 'CBFC-HI-2022-056'),
(20, 109, 'U', 'India', '2022-07-18', '2032-07-18', 'Biography of national importance', 'CBFC Mumbai', 'Hindi', 'CBFC-HI-2022-099');

-- to display table data
SELECT * FROM CensorshipCertificates;

-- to remove complete records from table
TRUNCATE TABLE CensorshipCertificates;

-- to remove complete records and attributes from table
DROP TABLE CensorshipCertificates;

-- 1. Select all records
SELECT * FROM CensorshipCertificates;

-- 2. Certificates valid beyond 2030
SELECT * FROM CensorshipCertificates WHERE ValidUntil>'2030-01-01';

-- 3. Certificates of type 'UA'
SELECT * FROM CensorshipCertificates WHERE CertificateType='UA';

-- 4. Count by CertificateType
SELECT CertificateType, COUNT(*) AS Total FROM CensorshipCertificates GROUP BY CertificateType;

-- 5. Certificates issued in Mumbai
SELECT * FROM CensorshipCertificates WHERE CensorBoard LIKE '%Mumbai%';

-- 6. Earliest issued certificate
SELECT * FROM CensorshipCertificates ORDER BY IssueDate ASC LIMIT 1;

-- 7. Latest issued certificate
SELECT * FROM CensorshipCertificates ORDER BY IssueDate DESC LIMIT 1;

-- 8. View: UACertificates
CREATE VIEW UACertificates AS SELECT * FROM CensorshipCertificates WHERE CertificateType='UA';

-- 9. Query view
SELECT * FROM UACertificates;

-- 10. View: ACertificates
CREATE VIEW ACertificates AS SELECT * FROM CensorshipCertificates WHERE CertificateType='A';

-- 11. Query view
SELECT * FROM ACertificates;

-- 12. CTE: CertificatesMumbai
WITH CertificatesMumbai AS (SELECT * FROM CensorshipCertificates WHERE CensorBoard LIKE '%Mumbai%')
SELECT * FROM CertificatesMumbai;

-- 13. CTE: CertificatesDelhi
WITH CertificatesDelhi AS (SELECT * FROM CensorshipCertificates WHERE CensorBoard LIKE '%Delhi%')
SELECT * FROM CertificatesDelhi;

-- 14. Window: Row number by IssueDate
SELECT *, ROW_NUMBER() OVER(ORDER BY IssueDate ASC) AS rn FROM CensorshipCertificates;

-- 15. Window: Rank by ValidUntil
SELECT *, RANK() OVER(ORDER BY ValidUntil DESC) AS rnk FROM CensorshipCertificates;

-- 16. Window: Dense rank by CertificateType
SELECT *, DENSE_RANK() OVER(PARTITION BY CertificateType ORDER BY IssueDate ASC) AS drnk FROM CensorshipCertificates;

-- 17. Window: Count per CensorBoard
SELECT *, COUNT(*) OVER(PARTITION BY CensorBoard) AS BoardCount FROM CensorshipCertificates;

-- 18. Stored Procedure: GetCertificateByID
DELIMITER //
CREATE PROCEDURE GetCertificateByID(IN cID INT)
BEGIN
    SELECT * FROM CensorshipCertificates WHERE CertificateID=cID;
END;
//
DELIMITER ;

-- 19. Call procedure
CALL GetCertificateByID(1);

-- 20. Stored Procedure: GetUACertificates
DELIMITER //
CREATE PROCEDURE GetUACertificates()
BEGIN
    SELECT * FROM CensorshipCertificates WHERE CertificateType='UA';
END;
//
DELIMITER ;

-- 21. Call procedure
CALL GetUACertificates();

-- 22. Update Remarks
UPDATE CensorshipCertificates SET Remarks='Updated remarks' WHERE CertificateID=5;

-- 23. Delete a certificate
DELETE FROM CensorshipCertificates WHERE CertificateID=20;

-- 24. Insert new certificate
INSERT INTO CensorshipCertificates(CertificateID,FilmID,CertificateType,IssuingCountry,IssueDate,ValidUntil,Remarks,CensorBoard,Language,CertificateNumber)
VALUES(21,129,'U','India','2025-01-01','2035-01-01','Clean for all','CBFC Mumbai','Hindi','CBFC-HI-2025-001');

-- 25. Transaction commit
START TRANSACTION;
UPDATE CensorshipCertificates SET CertificateType='UA' WHERE CertificateID=3;
COMMIT;

-- 26. Transaction rollback
START TRANSACTION;
UPDATE CensorshipCertificates SET Language='English' WHERE CertificateID=4;
ROLLBACK;

-- 27. Grant SELECT
GRANT SELECT ON CensorshipCertificates TO 'guest'@'localhost';

-- 28. Revoke SELECT
REVOKE SELECT ON CensorshipCertificates FROM 'guest'@'localhost';

-- 29. Trigger: before insert validate CertificateType
DELIMITER //
CREATE TRIGGER before_cert_insert BEFORE INSERT ON CensorshipCertificates
FOR EACH ROW
BEGIN
    IF NEW.CertificateType NOT IN ('U','UA','A') THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Invalid CertificateType';
    END IF;
END;
//
DELIMITER ;

-- 30. Trigger: before update validate ValidUntil
DELIMITER //
CREATE TRIGGER before_cert_update BEFORE UPDATE ON CensorshipCertificates
FOR EACH ROW
BEGIN
    IF NEW.ValidUntil<NEW.IssueDate THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='ValidUntil must be after IssueDate';
    END IF;
END;
//
DELIMITER ;

-- 31. Subquery: latest certificate per FilmID
SELECT * FROM CensorshipCertificates c1 WHERE IssueDate=(SELECT MAX(IssueDate) FROM CensorshipCertificates c2 WHERE c1.FilmID=c2.FilmID);

-- 32. Subquery: earliest certificate per FilmID
SELECT * FROM CensorshipCertificates c1 WHERE IssueDate=(SELECT MIN(IssueDate) FROM CensorshipCertificates c2 WHERE c1.FilmID=c2.FilmID);

-- 33. Count by Language
SELECT Language, COUNT(*) AS Total FROM CensorshipCertificates GROUP BY Language;

-- 34. COALESCE for Remarks
SELECT CertificateID, COALESCE(Remarks,'None') AS RemarksText FROM CensorshipCertificates;

-- 35. IFNULL for CensorBoard
SELECT CertificateID, IFNULL(CensorBoard,'Not Provided') AS BoardName FROM CensorshipCertificates;

-- 36. Union: UA and U certificates
SELECT CertificateID, CertificateType FROM CensorshipCertificates WHERE CertificateType='UA'
UNION
SELECT CertificateID, CertificateType FROM CensorshipCertificates WHERE CertificateType='U';

-- 37. Stored Procedure: UpdateCertificateType
DELIMITER //
CREATE PROCEDURE UpdateCertificateType(IN cID INT, IN cType VARCHAR(10))
BEGIN
    UPDATE CensorshipCertificates SET CertificateType=cType WHERE CertificateID=cID;
END;
//
DELIMITER ;

-- 38. Call procedure
CALL UpdateCertificateType(6,'A');

-- 39. Window: cumulative certificates by CensorBoard
SELECT CensorBoard, CertificateID, COUNT(*) OVER(PARTITION BY CensorBoard ORDER BY CertificateID) AS CumCertificates FROM CensorshipCertificates;

-- 40. Window: cumulative UA certificates by IssueDate
SELECT CertificateID, CertificateType, SUM(CASE WHEN CertificateType='UA' THEN 1 ELSE 0 END) OVER(ORDER BY IssueDate) AS CumUA FROM CensorshipCertificates;

-- 41. View: ExpiringCertificates
CREATE VIEW ExpiringCertificates AS SELECT * FROM CensorshipCertificates WHERE ValidUntil<CURDATE()+INTERVAL 1 YEAR;

-- 42. Query view
SELECT * FROM ExpiringCertificates;

-- 43. CTE: TopValidCertificates
WITH TopValidCertificates AS (SELECT * FROM CensorshipCertificates WHERE ValidUntil>'2030-01-01')
SELECT * FROM TopValidCertificates;

-- 44. Trigger: log deleted certificates
CREATE TABLE CensorshipCertificatesAudit(id INT AUTO_INCREMENT PRIMARY KEY, CertificateID INT, CertificateType VARCHAR(10), deleted_at DATETIME);
DELIMITER //
CREATE TRIGGER after_cert_delete AFTER DELETE ON CensorshipCertificates
FOR EACH ROW
BEGIN
    INSERT INTO CensorshipCertificatesAudit(CertificateID, CertificateType, deleted_at) VALUES(OLD.CertificateID, OLD.CertificateType, NOW());
END;
//
DELIMITER ;

-- 45. Count by CertificateType
SELECT CertificateType, COUNT(*) AS Total FROM CensorshipCertificates GROUP BY CertificateType;

-- 46. Count by CensorBoard
SELECT CensorBoard, COUNT(*) AS Total FROM CensorshipCertificates GROUP BY CensorBoard;

-- 47. Latest certificate
SELECT * FROM CensorshipCertificates ORDER BY IssueDate DESC LIMIT 1;

-- 48. Earliest certificate
SELECT * FROM CensorshipCertificates ORDER BY IssueDate ASC LIMIT 1;

-- 49. Average validity period in days
SELECT AVG(DATEDIFF(ValidUntil, IssueDate)) AS AvgValidityDays FROM CensorshipCertificates;

-- 50. Max validity period
SELECT MAX(DATEDIFF(ValidUntil, IssueDate)) AS MaxValidityDays FROM CensorshipCertificates;

-- Table 19. StreamingRights 
CREATE TABLE StreamingRights (
    RightID INT PRIMARY KEY,
    FilmID INT,
    PlatformName VARCHAR(100),
    Country VARCHAR(50),
    Language VARCHAR(50),
    StartDate DATE,
    EndDate DATE,
    AmountPaid DECIMAL(12,2),
    LicenseType VARCHAR(50),
    IsExclusive BOOLEAN
);

-- Insert 20 sample records
INSERT INTO StreamingRights  (rightid,filmid,platformname,country,language,startdate,enddate,amountpaid,licensetype,isexclusive) VALUES
(1, 110, 'Amazon Prime Video', 'India', 'Telugu', '2022-01-01', '2026-01-01', 150000000.00, 'SVOD', TRUE),
(2, 111, 'Netflix', 'India', 'Telugu', '2022-05-15', '2025-05-15', 200000000.00, 'SVOD', TRUE),
(3, 112, 'ZEE5', 'India', 'Kannada', '2022-10-01', '2025-10-01', 100000000.00, 'AVOD', FALSE),
(4, 113, 'Sony LIV', 'India', 'Hindi', '2019-07-01', '2023-07-01', 90000000.00, 'SVOD', FALSE),
(5, 114, 'Disney+ Hotstar', 'India', 'Hindi', '2022-03-10', '2026-03-10', 180000000.00, 'SVOD', TRUE),
(6, 115, 'Netflix', 'India', 'Hindi', '2018-06-15', '2022-06-15', 75000000.00, 'TVOD', FALSE),
(7, 116, 'JioCinema', 'India', 'Hindi', '2019-04-20', '2023-04-20', 65000000.00, 'AVOD', FALSE),
(8, 117, 'MX Player', 'India', 'Hindi', '2018-11-01', '2022-11-01', 60000000.00, 'AVOD', FALSE),
(9, 118, 'Amazon Prime Video', 'India', 'Malayalam', '2023-03-01', '2027-03-01', 140000000.00, 'SVOD', TRUE),
(10, 119, 'Sony LIV', 'India', 'Tamil', '2019-11-15', '2023-11-15', 85000000.00, 'SVOD', FALSE),
(11, 120, 'Netflix', 'India', 'Hindi', '2012-10-10', '2016-10-10', 45000000.00, 'SVOD', FALSE),
(12, 121, 'Amazon Prime Video', 'India', 'Tamil', '2021-01-01', '2025-01-01', 130000000.00, 'SVOD', TRUE),
(13, 122, 'ZEE5', 'India', 'Hindi', '2020-09-01', '2024-09-01', 70000000.00, 'AVOD', FALSE),
(14, 123, 'Disney+ Hotstar', 'India', 'Hindi', '2009-10-05', '2013-10-05', 30000000.00, 'SVOD', FALSE),
(15, 124, 'JioCinema', 'India', 'Hindi', '2023-10-01', '2027-10-01', 220000000.00, 'SVOD', TRUE),
(16, 125, 'Sun NXT', 'India', 'Malayalam', '2019-05-05', '2023-05-05', 55000000.00, 'AVOD', FALSE),
(17, 126, 'ZEE5', 'India', 'Hindi', '2019-10-15', '2023-10-15', 60000000.00, 'TVOD', FALSE),
(18, 127, 'Netflix', 'India', 'Hindi', '2014-04-01', '2018-04-01', 40000000.00, 'SVOD', FALSE),
(19, 128, 'Amazon Prime Video', 'India', 'Hindi', '2022-12-01', '2026-12-01', 160000000.00, 'SVOD', TRUE),
(20, 109, 'Disney+ Hotstar', 'India', 'Hindi', '2022-08-01', '2026-08-01', 145000000.00, 'SVOD', TRUE);

-- to display table data
SELECT * FROM StreamingRights;

-- to remove complete records from table
TRUNCATE TABLE StreamingRights;

-- to remove complete records and attributes from table
DROP TABLE StreamingRights;

-- 1. Select all records
SELECT * FROM StreamingRights;

-- 2. Exclusive rights only
SELECT * FROM StreamingRights WHERE IsExclusive=TRUE;

-- 3. Rights in SVOD
SELECT * FROM StreamingRights WHERE LicenseType='SVOD';

-- 4. Rights by PlatformName
SELECT PlatformName, COUNT(*) AS TotalRights FROM StreamingRights GROUP BY PlatformName;

-- 5. Rights starting after 2020
SELECT * FROM StreamingRights WHERE StartDate>'2020-01-01';

-- 6. Highest AmountPaid
SELECT * FROM StreamingRights ORDER BY AmountPaid DESC LIMIT 1;

-- 7. Lowest AmountPaid
SELECT * FROM StreamingRights ORDER BY AmountPaid ASC LIMIT 1;

-- 8. View: ExclusiveRights
CREATE VIEW ExclusiveRights AS SELECT * FROM StreamingRights WHERE IsExclusive=TRUE;

-- 9. Query view
SELECT * FROM ExclusiveRights;

-- 10. View: SVODRights
CREATE VIEW SVODRights AS SELECT * FROM StreamingRights WHERE LicenseType='SVOD';

-- 11. Query view
SELECT * FROM SVODRights;

-- 12. CTE: NetflixRights
WITH NetflixRights AS (SELECT * FROM StreamingRights WHERE PlatformName='Netflix')
SELECT * FROM NetflixRights;

-- 13. CTE: AmazonPrimeRights
WITH AmazonPrimeRights AS (SELECT * FROM StreamingRights WHERE PlatformName='Amazon Prime Video')
SELECT * FROM AmazonPrimeRights;

-- 14. Window: Row number by AmountPaid
SELECT *, ROW_NUMBER() OVER(ORDER BY AmountPaid DESC) AS rn FROM StreamingRights;

-- 15. Window: Rank by StartDate
SELECT *, RANK() OVER(ORDER BY StartDate ASC) AS rnk FROM StreamingRights;

-- 16. Window: Dense rank by PlatformName
SELECT *, DENSE_RANK() OVER(PARTITION BY PlatformName ORDER BY AmountPaid DESC) AS drnk FROM StreamingRights;

-- 17. Window: Count per PlatformName
SELECT *, COUNT(*) OVER(PARTITION BY PlatformName) AS PlatformCount FROM StreamingRights;

-- 18. Stored Procedure: GetRightsByID
DELIMITER //
CREATE PROCEDURE GetRightsByID(IN rID INT)
BEGIN
    SELECT * FROM StreamingRights WHERE RightID=rID;
END;
//
DELIMITER ;

-- 19. Call procedure
CALL GetRightsByID(1);

-- 20. Stored Procedure: GetExclusiveRights
DELIMITER //
CREATE PROCEDURE GetExclusiveRights()
BEGIN
    SELECT * FROM StreamingRights WHERE IsExclusive=TRUE;
END;
//
DELIMITER ;

-- 21. Call procedure
CALL GetExclusiveRights();

-- 22. Update AmountPaid
UPDATE StreamingRights SET AmountPaid=AmountPaid*1.1 WHERE PlatformName='Netflix';

-- 23. Delete a record
DELETE FROM StreamingRights WHERE RightID=20;

-- 24. Insert new record
INSERT INTO StreamingRights(RightID,FilmID,PlatformName,Country,Language,StartDate,EndDate,AmountPaid,LicenseType,IsExclusive)
VALUES(21,129,'Disney+ Hotstar','India','Hindi','2025-01-01','2029-01-01',120000000.00,'SVOD',TRUE);

-- 25. Transaction commit
START TRANSACTION;
UPDATE StreamingRights SET AmountPaid=AmountPaid+1000000 WHERE RightID=3;
COMMIT;

-- 26. Transaction rollback
START TRANSACTION;
UPDATE StreamingRights SET LicenseType='TVOD' WHERE RightID=4;
ROLLBACK;

-- 27. Grant SELECT
GRANT SELECT ON StreamingRights TO 'guest'@'localhost';

-- 28. Revoke SELECT
REVOKE SELECT ON StreamingRights FROM 'guest'@'localhost';

-- 29. Trigger: before insert validate LicenseType
DELIMITER //
CREATE TRIGGER before_right_insert BEFORE INSERT ON StreamingRights
FOR EACH ROW
BEGIN
    IF NEW.LicenseType NOT IN ('SVOD','AVOD','TVOD') THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Invalid LicenseType';
    END IF;
END;
//
DELIMITER ;

-- 30. Trigger: before update validate EndDate
DELIMITER //
CREATE TRIGGER before_right_update BEFORE UPDATE ON StreamingRights
FOR EACH ROW
BEGIN
    IF NEW.EndDate<NEW.StartDate THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='EndDate must be after StartDate';
    END IF;
END;
//
DELIMITER ;

-- 31. Subquery: highest AmountPaid per Platform
SELECT * FROM StreamingRights s1 WHERE AmountPaid=(SELECT MAX(AmountPaid) FROM StreamingRights s2 WHERE s1.PlatformName=s2.PlatformName);

-- 32. Subquery: earliest StartDate per Platform
SELECT * FROM StreamingRights s1 WHERE StartDate=(SELECT MIN(StartDate) FROM StreamingRights s2 WHERE s1.PlatformName=s2.PlatformName);

-- 33. Count by LicenseType
SELECT LicenseType, COUNT(*) AS Total FROM StreamingRights GROUP BY LicenseType;

-- 34. COALESCE for PlatformName
SELECT RightID, COALESCE(PlatformName,'Unknown') AS Platform FROM StreamingRights;

-- 35. IFNULL for Language
SELECT RightID, IFNULL(Language,'Not Provided') AS Lang FROM StreamingRights;

-- 36. Union: SVOD and AVOD rights
SELECT RightID, LicenseType FROM StreamingRights WHERE LicenseType='SVOD'
UNION
SELECT RightID, LicenseType FROM StreamingRights WHERE LicenseType='AVOD';

-- 37. Stored Procedure: UpdateAmountPaid
DELIMITER //
CREATE PROCEDURE UpdateAmountPaid(IN rID INT, IN amt DECIMAL(12,2))
BEGIN
    UPDATE StreamingRights SET AmountPaid=amt WHERE RightID=rID;
END;
//
DELIMITER ;

-- 38. Call procedure
CALL UpdateAmountPaid(6,80000000.00);

-- 39. Window: cumulative AmountPaid by PlatformName
SELECT PlatformName, RightID, SUM(AmountPaid) OVER(PARTITION BY PlatformName ORDER BY RightID) AS CumAmount FROM StreamingRights;

-- 40. Window: cumulative exclusive rights
SELECT RightID, IsExclusive, SUM(CASE WHEN IsExclusive=TRUE THEN 1 ELSE 0 END) OVER(ORDER BY StartDate) AS CumExclusive FROM StreamingRights;

-- 41. View: ExpiringRights
CREATE VIEW ExpiringRights AS SELECT * FROM StreamingRights WHERE EndDate<CURDATE()+INTERVAL 1 YEAR;

-- 42. Query view
SELECT * FROM ExpiringRights;

-- 43. CTE: HighValueRights
WITH HighValueRights AS (SELECT * FROM StreamingRights WHERE AmountPaid>100000000)
SELECT * FROM HighValueRights;

-- 44. Trigger: log deleted rights
CREATE TABLE StreamingRightsAudit(id INT AUTO_INCREMENT PRIMARY KEY, RightID INT, PlatformName VARCHAR(100), deleted_at DATETIME);
DELIMITER //
CREATE TRIGGER after_right_delete AFTER DELETE ON StreamingRights
FOR EACH ROW
BEGIN
    INSERT INTO StreamingRightsAudit(RightID, PlatformName, deleted_at) VALUES(OLD.RightID, OLD.PlatformName, NOW());
END;
//
DELIMITER ;

-- 45. Count by IsExclusive
SELECT IsExclusive, COUNT(*) AS Total FROM StreamingRights GROUP BY IsExclusive;

-- 46. Count by PlatformName
SELECT PlatformName, COUNT(*) AS Total FROM StreamingRights GROUP BY PlatformName;

-- 47. Latest StartDate
SELECT * FROM StreamingRights ORDER BY StartDate DESC LIMIT 1;

-- 48. Earliest StartDate
SELECT * FROM StreamingRights ORDER BY StartDate ASC LIMIT 1;

-- 49. Average AmountPaid
SELECT AVG(AmountPaid) AS AvgAmount FROM StreamingRights;

-- 50. Max AmountPaid
SELECT MAX(AmountPaid) AS MaxAmount FROM StreamingRights;



-- Table 20. SponsorshipDeals
CREATE TABLE SponsorshipDeals (
    DealID INT PRIMARY KEY,
    FilmID INT,
    SponsorName VARCHAR(100),
    SponsorType VARCHAR(50),
    Amount DECIMAL(12,2),
    StartDate DATE,
    EndDate DATE,
    DealStatus VARCHAR(20),
    ContactEmail VARCHAR(100),
    Benefits TEXT
);

-- Insert 20 sample records
INSERT INTO SponsorshipDeals (dealid,filmid,spomsorname,sponsortype,amount,startdate,enddate,dealstatus,contactemail) VALUES
(1, 110, 'Pepsi India', 'Beverage', 5000000.00, '2022-01-01', '2022-12-31', 'Active', 'sponsor@pepsi.in', 'Logo placement, TV ads, merchandise.'),
(2, 111, 'Jio', 'Telecom', 12000000.00, '2022-03-15', '2023-03-15', 'Completed', 'media@jio.in', 'Pre-roll ads, event banners.'),
(3, 112, 'Flipkart', 'E-Commerce', 7500000.00, '2022-06-01', '2023-06-01', 'Active', 'brands@flipkart.com', 'Cross-promotion, app banners.'),
(4, 113, 'Hero MotoCorp', 'Automobile', 9000000.00, '2019-05-10', '2020-05-10', 'Completed', 'ads@heromoto.in', 'Bike display, co-branded events.'),
(5, 114, 'LIC India', 'Insurance', 8500000.00, '2021-09-01', '2022-09-01', 'Completed', 'sponsorships@lic.in', 'In-film branding, ad credits.'),
(6, 115, 'Amazon India', 'Retail', 10000000.00, '2020-04-01', '2021-04-01', 'Completed', 'partners@amazon.in', 'Product placement, pre-roll ads.'),
(7, 116, 'Asian Paints', 'Home Decor', 3000000.00, '2019-10-01', '2020-10-01', 'Completed', 'marketing@asianpaints.com', 'Color branding, in-film logos.'),
(8, 117, 'Tata Motors', 'Automobile', 11000000.00, '2021-06-10', '2022-06-10', 'Completed', 'contact@tatamotors.com', 'SUV display, promo events.'),
(9, 118, 'Parle-G', 'FMCG', 2500000.00, '2023-01-01', '2023-12-31', 'Active', 'parle@sponsors.com', 'In-scene visibility, social media.'),
(10, 119, 'HDFC Bank', 'Banking', 6000000.00, '2018-08-15', '2019-08-15', 'Completed', 'hdfc@sponsorship.in', 'Brand mention, credit scenes.'),
(11, 120, 'Samsung India', 'Electronics', 9500000.00, '2011-07-10', '2012-07-10', 'Completed', 'samsung@partners.com', 'Gadget integration, promo posters.'),
(12, 121, 'Tanishq', 'Jewellery', 7800000.00, '2020-11-01', '2021-11-01', 'Completed', 'ads@tanishq.in', 'Jewelry use in film, credit mention.'),
(13, 122, 'Dabur', 'Healthcare', 4300000.00, '2020-02-01', '2021-02-01', 'Completed', 'health@dabur.in', 'Product placement, cross-promotion.'),
(14, 123, 'Vivo India', 'Mobile Phones', 8900000.00, '2009-04-01', '2010-04-01', 'Completed', 'vivo@mobile.in', 'Phone scenes, app ads.'),
(15, 124, 'Red Bull India', 'Beverage', 6700000.00, '2023-05-01', '2024-05-01', 'Active', 'promo@redbull.in', 'Action scenes branding.'),
(16, 125, 'ICICI Bank', 'Banking', 5400000.00, '2019-09-01', '2020-09-01', 'Completed', 'icici@sponsor.in', 'Opening credits presence.'),
(17, 126, 'Raymond', 'Apparel', 3600000.00, '2019-03-15', '2020-03-15', 'Completed', 'style@raymond.in', 'Actor styling in scenes.'),
(18, 127, 'Nykaa', 'Cosmetics', 4100000.00, '2013-06-01', '2014-06-01', 'Completed', 'beauty@nykaa.com', 'Makeup integration, credit scroll.'),
(19, 128, 'Amul', 'Dairy', 3200000.00, '2022-11-10', '2023-11-10', 'Active', 'amul@dairybrand.in', 'Billboard scenes, co-branding.'),
(20, 109, 'Paytm', 'Fintech', 8900000.00, '2022-08-01', '2023-08-01', 'Completed', 'payments@paytm.in', 'QR scenes, app tie-in ads.');

-- to display table data
SELECT * FROM SponsorshipDeals;

-- to remove complete records from table
TRUNCATE TABLE SponsorshipDeals;

-- to remove complete records and attributes from table
DROP TABLE SponsorshipDeals;

-- 1. Select all records
SELECT * FROM SponsorshipDeals;

-- 2. Active deals only
SELECT * FROM SponsorshipDeals WHERE DealStatus='Active';

-- 3. Completed deals only
SELECT * FROM SponsorshipDeals WHERE DealStatus='Completed';

-- 4. Deals by SponsorType
SELECT SponsorType, COUNT(*) AS TotalDeals FROM SponsorshipDeals GROUP BY SponsorType;

-- 5. Deals starting after 2020
SELECT * FROM SponsorshipDeals WHERE StartDate>'2020-01-01';

-- 6. Highest Amount deal
SELECT * FROM SponsorshipDeals ORDER BY Amount DESC LIMIT 1;

-- 7. Lowest Amount deal
SELECT * FROM SponsorshipDeals ORDER BY Amount ASC LIMIT 1;

-- 8. View: ActiveDeals
CREATE VIEW ActiveDeals AS SELECT * FROM SponsorshipDeals WHERE DealStatus='Active';

-- 9. Query view
SELECT * FROM ActiveDeals;

-- 10. View: CompletedDeals
CREATE VIEW CompletedDeals AS SELECT * FROM SponsorshipDeals WHERE DealStatus='Completed';

-- 11. Query view
SELECT * FROM CompletedDeals;

-- 12. CTE: BeverageDeals
WITH BeverageDeals AS (SELECT * FROM SponsorshipDeals WHERE SponsorType='Beverage')
SELECT * FROM BeverageDeals;

-- 13. CTE: BankingDeals
WITH BankingDeals AS (SELECT * FROM SponsorshipDeals WHERE SponsorType='Banking')
SELECT * FROM BankingDeals;

-- 14. Window: Row number by Amount
SELECT *, ROW_NUMBER() OVER(ORDER BY Amount DESC) AS rn FROM SponsorshipDeals;

-- 15. Window: Rank by StartDate
SELECT *, RANK() OVER(ORDER BY StartDate ASC) AS rnk FROM SponsorshipDeals;

-- 16. Window: Dense rank by SponsorType
SELECT *, DENSE_RANK() OVER(PARTITION BY SponsorType ORDER BY Amount DESC) AS drnk FROM SponsorshipDeals;

-- 17. Window: Count per SponsorType
SELECT *, COUNT(*) OVER(PARTITION BY SponsorType) AS TypeCount FROM SponsorshipDeals;

-- 18. Stored Procedure: GetDealByID
DELIMITER //
CREATE PROCEDURE GetDealByID(IN dID INT)
BEGIN
    SELECT * FROM SponsorshipDeals WHERE DealID=dID;
END;
//
DELIMITER ;

-- 19. Call procedure
CALL GetDealByID(1);

-- 20. Stored Procedure: GetActiveDeals
DELIMITER //
CREATE PROCEDURE GetActiveDeals()
BEGIN
    SELECT * FROM SponsorshipDeals WHERE DealStatus='Active';
END;
//
DELIMITER ;

-- 21. Call procedure
CALL GetActiveDeals();

-- 22. Update Amount
UPDATE SponsorshipDeals SET Amount=Amount*1.1 WHERE SponsorType='Banking';

-- 23. Delete a record
DELETE FROM SponsorshipDeals WHERE DealID=20;

-- 24. Insert new record
INSERT INTO SponsorshipDeals(DealID,FilmID,SponsorName,SponsorType,Amount,StartDate,EndDate,DealStatus,ContactEmail,Benefits)
VALUES(21,129,'Coca-Cola','Beverage',6000000.00,'2025-01-01','2025-12-31','Active','sponsor@coke.in','Logo, event branding');

-- 25. Transaction commit
START TRANSACTION;
UPDATE SponsorshipDeals SET Amount=Amount+500000 WHERE DealID=3;
COMMIT;

-- 26. Transaction rollback
START TRANSACTION;
UPDATE SponsorshipDeals SET DealStatus='Cancelled' WHERE DealID=4;
ROLLBACK;

-- 27. Grant SELECT
GRANT SELECT ON SponsorshipDeals TO 'guest'@'localhost';

-- 28. Revoke SELECT
REVOKE SELECT ON SponsorshipDeals FROM 'guest'@'localhost';

-- 29. Trigger: before insert validate Amount
DELIMITER //
CREATE TRIGGER before_deal_insert BEFORE INSERT ON SponsorshipDeals
FOR EACH ROW
BEGIN
    IF NEW.Amount<=0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Amount must be positive';
    END IF;
END;
//
DELIMITER ;

-- 30. Trigger: before update validate EndDate
DELIMITER //
CREATE TRIGGER before_deal_update BEFORE UPDATE ON SponsorshipDeals
FOR EACH ROW
BEGIN
    IF NEW.EndDate<NEW.StartDate THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='EndDate must be after StartDate';
    END IF;
END;
//
DELIMITER ;

-- 31. Subquery: Highest amount per SponsorType
SELECT * FROM SponsorshipDeals s1 WHERE Amount=(SELECT MAX(Amount) FROM SponsorshipDeals s2 WHERE s1.SponsorType=s2.SponsorType);

-- 32. Subquery: Earliest start date per SponsorType
SELECT * FROM SponsorshipDeals s1 WHERE StartDate=(SELECT MIN(StartDate) FROM SponsorshipDeals s2 WHERE s1.SponsorType=s2.SponsorType);

-- 33. Count by DealStatus
SELECT DealStatus, COUNT(*) AS Total FROM SponsorshipDeals GROUP BY DealStatus;

-- 34. COALESCE for SponsorName
SELECT DealID, COALESCE(SponsorName,'Unknown') AS Sponsor FROM SponsorshipDeals;

-- 35. IFNULL for Benefits
SELECT DealID, IFNULL(Benefits,'No Benefits') AS BenefitsInfo FROM SponsorshipDeals;

-- 36. Union: Active and Completed
SELECT DealID, DealStatus FROM SponsorshipDeals WHERE DealStatus='Active'
UNION
SELECT DealID, DealStatus FROM SponsorshipDeals WHERE DealStatus='Completed';

-- 37. Stored Procedure: UpdateAmount
DELIMITER //
CREATE PROCEDURE UpdateAmount(IN dID INT, IN amt DECIMAL(12,2))
BEGIN
    UPDATE SponsorshipDeals SET Amount=amt WHERE DealID=dID;
END;
//
DELIMITER ;

-- 38. Call procedure
CALL UpdateAmount(6,12000000.00);

-- 39. Window: cumulative Amount per SponsorType
SELECT SponsorType, DealID, SUM(Amount) OVER(PARTITION BY SponsorType ORDER BY DealID) AS CumAmount FROM SponsorshipDeals;

-- 40. Window: cumulative Active deals
SELECT DealID, DealStatus, SUM(CASE WHEN DealStatus='Active' THEN 1 ELSE 0 END) OVER(ORDER BY StartDate) AS CumActive FROM SponsorshipDeals;

-- 41. View: ExpiringDeals
CREATE VIEW ExpiringDeals AS SELECT * FROM SponsorshipDeals WHERE EndDate<CURDATE()+INTERVAL 1 YEAR;

-- 42. Query view
SELECT * FROM ExpiringDeals;

-- 43. CTE: HighValueDeals
WITH HighValueDeals AS (SELECT * FROM SponsorshipDeals WHERE Amount>8000000)
SELECT * FROM HighValueDeals;

-- 44. Trigger: log deleted deals
CREATE TABLE SponsorshipDealsAudit(id INT AUTO_INCREMENT PRIMARY KEY, DealID INT, SponsorName VARCHAR(100), deleted_at DATETIME);
DELIMITER //
CREATE TRIGGER after_deal_delete AFTER DELETE ON SponsorshipDeals
FOR EACH ROW
BEGIN
    INSERT INTO SponsorshipDealsAudit(DealID, SponsorName, deleted_at) VALUES(OLD.DealID, OLD.SponsorName, NOW());
END;
//
DELIMITER ;

-- 45. Count by DealStatus
SELECT DealStatus, COUNT(*) AS Total FROM SponsorshipDeals GROUP BY DealStatus;

-- 46. Count by SponsorType
SELECT SponsorType, COUNT(*) AS Total FROM SponsorshipDeals GROUP BY SponsorType;

-- 47. Latest StartDate
SELECT * FROM SponsorshipDeals ORDER BY StartDate DESC LIMIT 1;

-- 48. Earliest StartDate
SELECT * FROM SponsorshipDeals ORDER BY StartDate ASC LIMIT 1;

-- 49. Average Amount
SELECT AVG(Amount) AS AvgAmount FROM SponsorshipDeals;

-- 50. Max Amount
SELECT MAX(Amount) AS MaxAmount FROM SponsorshipDeals;


-- Table 21. ProductionSchedules
CREATE TABLE ProductionSchedules (
    ScheduleID INT PRIMARY KEY,
    FilmID INT,
    Location VARCHAR(100),
    StartDate DATE,
    EndDate DATE,
    ShootingHoursPerDay INT,
    EquipmentUsed TEXT,
    CrewCount INT,
    SupervisorName VARCHAR(100),
    Status VARCHAR(20)
);

-- Insert 20 sample records
INSERT INTO ProductionSchedules (schehduleid,filmid,location,startdate,enddate,shootinghoursperday,equipmentused,crewcount,supervisorname,status) VALUES
(1, 110, 'Ramoji Film City, Hyderabad', '2022-01-10', '2022-01-25', 10, 'RED Komodo, Drone, Gimbal', 60, 'Rajesh Iyer', 'Completed'),
(2, 111, 'Film City, Mumbai', '2022-02-01', '2022-02-20', 9, 'Arri Alexa, LED Panels', 55, 'Neha Deshmukh', 'Completed'),
(3, 112, 'Mysore Palace, Karnataka', '2022-03-05', '2022-03-18', 8, 'Sony FX3, Jimmy Jib', 45, 'Anand Kumar', 'Completed'),
(4, 113, 'Howrah Bridge, Kolkata', '2022-04-01', '2022-04-12', 7, 'Blackmagic 6K, Reflectors', 40, 'Shruti Patel', 'Completed'),
(5, 114, 'Connaught Place, Delhi', '2022-05-10', '2022-05-22', 10, 'Arri Mini LF, Tripod', 65, 'Rohit Sharma', 'Completed'),
(6, 115, 'Vagamon Hills, Kerala', '2022-06-15', '2022-06-30', 8, 'DJI Ronin, RED Epic', 48, 'Divya Rao', 'Completed'),
(7, 116, 'Charminar, Hyderabad', '2022-07-05', '2022-07-14', 6, 'Canon C300, LED Lighting', 35, 'Amit Pandey', 'Completed'),
(8, 117, 'Jaisalmer Fort, Rajasthan', '2022-08-01', '2022-08-20', 9, 'Panasonic Varicam, Cranes', 70, 'Manish Chauhan', 'Completed'),
(9, 118, 'Dal Lake, Srinagar', '2022-09-05', '2022-09-17', 7, 'Drone 4K, Stabilizer', 42, 'Fatima Sheikh', 'Completed'),
(10, 119, 'Marine Drive, Mumbai', '2022-10-01', '2022-10-12', 10, 'Arri Alexa Mini, Sliders', 50, 'Vinod Mehra', 'Completed'),
(11, 120, 'Kodaikanal, Tamil Nadu', '2021-11-10', '2021-11-22', 8, 'Sony A7S III, Steadicam', 46, 'Megha Bhatia', 'Completed'),
(12, 121, 'Sector 17, Chandigarh', '2021-12-01', '2021-12-15', 7, 'Blackmagic URSA Mini, Bounce Board', 38, 'Kunal Sharma', 'Completed'),
(13, 122, 'Old Fort, Delhi', '2020-01-05', '2020-01-20', 9, 'RED Raven, Arri SkyPanel', 52, 'Jyoti Nair', 'Completed'),
(14, 123, 'Elephanta Caves, Maharashtra', '2020-02-15', '2020-03-01', 8, 'Sony FS7, Reflectors', 44, 'Ramesh Yadav', 'Completed'),
(15, 124, 'Coorg, Karnataka', '2020-04-10', '2020-04-22', 6, 'Canon R5, Crane 3S', 36, 'Pooja Mishra', 'Completed'),
(16, 125, 'Shaniwarwada, Pune', '2020-05-05', '2020-05-18', 8, 'Arri Amira, Dolly Track', 49, 'Nikhil Tiwari', 'Completed'),
(17, 126, 'Tawang, Arunachal Pradesh', '2021-01-10', '2021-01-25', 7, 'DJI Inspire, GoPro Hero', 41, 'Sneha Rajput', 'Completed'),
(18, 127, 'Gateway of India, Mumbai', '2021-02-05', '2021-02-15', 10, 'RED Gemini, Gimbal Rig', 55, 'Kabir Sinha', 'Completed'),
(19, 128, 'Mahabalipuram, Tamil Nadu', '2021-03-20', '2021-04-02', 9, 'Blackmagic Pocket, Natural Light', 53, 'Ritika Joshi', 'Completed'),
(20, 109, 'Auroville, Puducherry', '2021-05-01', '2021-05-12', 8, 'Canon C70, Slider Rig', 47, 'Ajay Kulkarni', 'Completed');

-- to display table data
SELECT * FROM ProductionSchedules;

-- to remove complete records from table
TRUNCATE TABLE ProductionSchedules;

-- to remove complete records and attributes from table
DROP TABLE ProductionSchedules;

-- 1. Select all schedules
SELECT * FROM ProductionSchedules;

-- 2. Completed schedules
SELECT * FROM ProductionSchedules WHERE Status='Completed';

-- 3. Pending schedules
SELECT * FROM ProductionSchedules WHERE Status='Pending';

-- 4. Ongoing schedules
SELECT * FROM ProductionSchedules WHERE Status='Ongoing';

-- 5. Count schedules by location
SELECT Location, COUNT(*) AS TotalSchedules FROM ProductionSchedules GROUP BY Location;

-- 6. Schedule with maximum shooting hours
SELECT * FROM ProductionSchedules ORDER BY ShootingHoursPerDay DESC LIMIT 1;

-- 7. Schedule with minimum shooting hours
SELECT * FROM ProductionSchedules ORDER BY ShootingHoursPerDay ASC LIMIT 1;

-- 8. Schedules longer than 15 days
SELECT * FROM ProductionSchedules WHERE DATEDIFF(EndDate, StartDate) > 15;

-- 9. Schedules supervised by 'Rajesh Iyer'
SELECT * FROM ProductionSchedules WHERE SupervisorName='Rajesh Iyer';

-- 10. Count schedules by status
SELECT Status, COUNT(*) AS Total FROM ProductionSchedules GROUP BY Status;

-- 11. View: CompletedSchedules
CREATE VIEW CompletedSchedules AS SELECT * FROM ProductionSchedules WHERE Status='Completed';

-- 12. Query CompletedSchedules
SELECT * FROM CompletedSchedules;

-- 13. View: LongSchedules
CREATE VIEW LongSchedules AS SELECT * FROM ProductionSchedules WHERE DATEDIFF(EndDate, StartDate)>15;

-- 14. Query LongSchedules
SELECT * FROM LongSchedules;

-- 15. CTE: HighCrewSchedules
WITH HighCrewSchedules AS (SELECT * FROM ProductionSchedules WHERE CrewCount>50)
SELECT * FROM HighCrewSchedules;

-- 16. CTE: HyderabadSchedules
WITH HyderabadSchedules AS (SELECT * FROM ProductionSchedules WHERE Location LIKE '%Hyderabad%')
SELECT * FROM HyderabadSchedules;

-- 17. Window: row_number by StartDate
SELECT *, ROW_NUMBER() OVER(PARTITION BY Status ORDER BY StartDate) AS rn FROM ProductionSchedules;

-- 18. Window: rank by CrewCount
SELECT *, RANK() OVER(PARTITION BY Status ORDER BY CrewCount DESC) AS rnk FROM ProductionSchedules;

-- 19. Window: dense_rank by ShootingHoursPerDay
SELECT *, DENSE_RANK() OVER(PARTITION BY Status ORDER BY ShootingHoursPerDay DESC) AS drnk FROM ProductionSchedules;

-- 20. Window: cumulative shooting hours
SELECT ScheduleID, FilmID, SUM(ShootingHoursPerDay) OVER(ORDER BY StartDate) AS cum_hours FROM ProductionSchedules;

-- 21. Stored Procedure: GetSchedulesByStatus
DELIMITER //
CREATE PROCEDURE GetSchedulesByStatus(IN pStatus VARCHAR(20))
BEGIN
    SELECT * FROM ProductionSchedules WHERE Status=pStatus;
END;
//
DELIMITER ;

-- 22. Call procedure
CALL GetSchedulesByStatus('Completed');

-- 23. Stored Procedure: GetSchedulesByLocation
DELIMITER //
CREATE PROCEDURE GetSchedulesByLocation(IN pLocation VARCHAR(100))
BEGIN
    SELECT * FROM ProductionSchedules WHERE Location LIKE CONCAT('%', pLocation, '%');
END;
//
DELIMITER ;

-- 24. Call procedure
CALL GetSchedulesByLocation('Mumbai');

-- 25. Update schedule status
UPDATE ProductionSchedules SET Status='Ongoing' WHERE ScheduleID=8;

-- 26. Delete a schedule
DELETE FROM ProductionSchedules WHERE ScheduleID=20;

-- 27. Insert new schedule
INSERT INTO ProductionSchedules (ScheduleID, FilmID, Location, StartDate, EndDate, ShootingHoursPerDay, EquipmentUsed, CrewCount, SupervisorName, Status)
VALUES (21,129,'Goa Beach','2022-11-01','2022-11-12',9,'Canon C300, Drone',50,'Sanya Verma','Pending');

-- 28. Transaction commit
START TRANSACTION;
UPDATE ProductionSchedules SET Status='Completed' WHERE ScheduleID=6;
COMMIT;

-- 29. Transaction rollback
START TRANSACTION;
UPDATE ProductionSchedules SET Status='Pending' WHERE ScheduleID=5;
ROLLBACK;

-- 30. Grant SELECT
GRANT SELECT ON ProductionSchedules TO 'guest'@'localhost';

-- 31. Revoke SELECT
REVOKE SELECT ON ProductionSchedules FROM 'guest'@'localhost';

-- 32. Trigger: before insert
DELIMITER //
CREATE TRIGGER before_productionschedules_insert BEFORE INSERT ON ProductionSchedules
FOR EACH ROW
BEGIN
    IF NEW.StartDate>NEW.EndDate THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='StartDate cannot be after EndDate';
    END IF;
END;
//
DELIMITER ;

-- 33. Trigger: before update
DELIMITER //
CREATE TRIGGER before_productionschedules_update BEFORE UPDATE ON ProductionSchedules
FOR EACH ROW
BEGIN
    SET NEW.Status=IFNULL(NEW.Status, OLD.Status);
END;
//
DELIMITER ;

-- 34. Subquery: schedule with maximum crew
SELECT * FROM ProductionSchedules WHERE CrewCount=(SELECT MAX(CrewCount) FROM ProductionSchedules);

-- 35. Subquery: schedule with minimum crew
SELECT * FROM ProductionSchedules WHERE CrewCount=(SELECT MIN(CrewCount) FROM ProductionSchedules);

-- 36. Count schedules by Supervisor
SELECT SupervisorName, COUNT(*) AS total FROM ProductionSchedules GROUP BY SupervisorName;

-- 37. COALESCE for EquipmentUsed
SELECT ScheduleID, FilmID, COALESCE(EquipmentUsed,'No Equipment') AS EquipmentUsed FROM ProductionSchedules;

-- 38. IFNULL for Status
SELECT ScheduleID, FilmID, IFNULL(Status,'Unknown') AS Status FROM ProductionSchedules;

-- 39. Latest schedule by StartDate
SELECT * FROM ProductionSchedules ORDER BY StartDate DESC LIMIT 1;

-- 40. Union: Completed & Ongoing
SELECT ScheduleID, FilmID, Status FROM ProductionSchedules WHERE Status='Completed'
UNION
SELECT ScheduleID, FilmID, Status FROM ProductionSchedules WHERE Status='Ongoing';

-- 41. Stored procedure: UpdateScheduleStatus
DELIMITER //
CREATE PROCEDURE UpdateScheduleStatus(IN pID INT, IN pStatus VARCHAR(20))
BEGIN
    UPDATE ProductionSchedules SET Status=pStatus WHERE ScheduleID=pID;
END;
//
DELIMITER ;

-- 42. Call procedure
CALL UpdateScheduleStatus(12,'Completed');

-- 43. Window: cumulative CrewCount
SELECT ScheduleID, FilmID, SUM(CrewCount) OVER(ORDER BY StartDate) AS cum_crew FROM ProductionSchedules;

-- 44. Window: cumulative shooting hours for FilmID=110
SELECT ScheduleID, FilmID, SUM(CASE WHEN FilmID=110 THEN ShootingHoursPerDay ELSE 0 END) OVER(ORDER BY StartDate) AS cum_hours_film110 FROM ProductionSchedules;

-- 45. View: PendingSchedules
CREATE VIEW PendingSchedules AS SELECT * FROM ProductionSchedules WHERE Status='Pending';

-- 46. Query PendingSchedules
SELECT * FROM PendingSchedules;

-- 47. CTE: MumbaiSchedulesCTE
WITH MumbaiSchedulesCTE AS (SELECT * FROM ProductionSchedules WHERE Location LIKE '%Mumbai%')
SELECT * FROM MumbaiSchedulesCTE;

-- 48. Trigger: log deleted schedules
CREATE TABLE ProductionSchedulesAudit(id INT AUTO_INCREMENT PRIMARY KEY, schedule_id INT, FilmID INT, deleted_at DATETIME);
DELIMITER //
CREATE TRIGGER after_productionschedules_delete AFTER DELETE ON ProductionSchedules
FOR EACH ROW
BEGIN
    INSERT INTO ProductionSchedulesAudit(schedule_id, FilmID, deleted_at) VALUES(OLD.ScheduleID, OLD.FilmID, NOW());
END;
//
DELIMITER ;

-- 49. Select schedules for FilmID=110
SELECT * FROM ProductionSchedules WHERE FilmID=110;

-- 50. Count schedules by Location
SELECT Location, COUNT(*) AS total FROM ProductionSchedules GROUP BY Location;


-- Table 22. ScriptVersions
CREATE TABLE ScriptVersions (
    VersionID INT PRIMARY KEY,
    FilmID INT,
    DraftNumber INT,
    WriterName VARCHAR(100),
    SubmitDate DATE,
    ApprovedBy VARCHAR(100),
    VersionStatus VARCHAR(20),
    ChangeSummary TEXT,
    FilePath VARCHAR(200),
    Notes TEXT
);

-- Insert 20 sample records
INSERT INTO ScriptVersions (versionid,filmid,drftnumber,writename,submitdate,approvedby,versionstatus,changingsummary,filepath,notes) VALUES
(1, 110, 1, 'Ravi Verma', '2022-01-10', 'Anurag Kashyap', 'Approved', 'Initial story outline.', '/scripts/film110_v1.pdf', 'Needs stronger climax.'),
(2, 110, 2, 'Ravi Verma', '2022-01-25', 'Anurag Kashyap', 'Approved', 'Climax enhanced, character names updated.', '/scripts/film110_v2.pdf', 'Final approved version.'),
(3, 111, 1, 'Pooja Sharma', '2022-02-01', 'Zoya Akhtar', 'Pending', 'Romantic subplot added.', '/scripts/film111_v1.pdf', 'Pending revisions from producer.'),
(4, 112, 1, 'Ramesh Iyer', '2022-03-01', 'Rajkumar Hirani', 'Rejected', 'Too much violence for family audience.', '/scripts/film112_v1.pdf', 'Rewrite action sequence.'),
(5, 113, 1, 'Meena Kapoor', '2021-11-10', 'Shoojit Sircar', 'Approved', 'Drama tightened and localized.', '/scripts/film113_v1.pdf', 'Excellent character development.'),
(6, 114, 1, 'Ajay Kulkarni', '2022-04-01', 'Imtiaz Ali', 'Approved', 'Songs added and pacing improved.', '/scripts/film114_v1.pdf', 'Great emotional depth.'),
(7, 115, 1, 'Sunil Dutt', '2021-06-01', 'Ashwiny Iyer Tiwari', 'Pending', 'Final act needs polish.', '/scripts/film115_v1.pdf', 'Rework on antagonist needed.'),
(8, 116, 2, 'Farah Khan', '2021-05-15', 'Karan Johar', 'Approved', 'Dialogue tweaks, location changes.', '/scripts/film116_v2.pdf', 'Passed for casting.'),
(9, 117, 3, 'Anjali Mehra', '2020-08-12', 'Sanjay Leela Bhansali', 'Approved', 'Historical context revised.', '/scripts/film117_v3.pdf', 'Ready for production.'),
(10, 118, 1, 'Manish Joshi', '2022-09-20', 'Shankar', 'Approved', 'Sci-fi twist added.', '/scripts/film118_v1.pdf', 'Interesting use of tech.'),
(11, 119, 1, 'Kavita Nair', '2021-12-01', 'Amit Sharma', 'Approved', 'Slice-of-life additions.', '/scripts/film119_v1.pdf', 'Minimal changes needed.'),
(12, 120, 2, 'Nitin Saxena', '2011-08-20', 'Anand L. Rai', 'Rejected', 'Inconsistent tone.', '/scripts/film120_v2.pdf', 'Rewrite needed from scratch.'),
(13, 121, 1, 'Priyanka Das', '2020-11-01', 'Vikas Bahl', 'Approved', 'Poetic dialogues added.', '/scripts/film121_v1.pdf', 'Greenlit for narration.'),
(14, 122, 1, 'Vikram Batra', '2020-09-05', 'Reema Kagti', 'Approved', 'Thriller pacing adjusted.', '/scripts/film122_v1.pdf', 'Send to editing.'),
(15, 123, 1, 'Deepika Menon', '2009-05-10', 'Rakeysh Mehra', 'Approved', 'Folk music narrative integrated.', '/scripts/film123_v1.pdf', 'Cultural authenticity maintained.'),
(16, 124, 2, 'Sameer Deshpande', '2023-06-01', 'Ali Abbas Zafar', 'Pending', 'High-octane action scene added.', '/scripts/film124_v2.pdf', 'Awaiting final budget match.'),
(17, 125, 1, 'Juhi Thakur', '2019-04-25', 'Nitesh Tiwari', 'Approved', 'Motivational tone enhanced.', '/scripts/film125_v1.pdf', 'Perfect for youth audience.'),
(18, 126, 2, 'Karan Malhotra', '2019-07-10', 'Farhan Akhtar', 'Rejected', 'Too many characters.', '/scripts/film126_v2.pdf', 'Simplify structure.'),
(19, 127, 1, 'Alka Singh', '2014-03-15', 'Neeraj Pandey', 'Approved', 'Crime plot streamlined.', '/scripts/film127_v1.pdf', 'Proceed to location recce.'),
(20, 128, 1, 'Ishaan Bhargava', '2021-01-10', 'S.S. Rajamouli', 'Approved', 'Fantasy lore expanded.', '/scripts/film128_v1.pdf', 'Visual heavy screenplay.');

-- to display table data
SELECT * FROM ScriptVersions;

-- to remove complete records from table
TRUNCATE TABLE ScriptVersions;

-- to remove complete records and attributes from table
DROP TABLE ScriptVersions;

-- 1. Select all scripts
SELECT * FROM ScriptVersions;

-- 2. Approved scripts
SELECT * FROM ScriptVersions WHERE VersionStatus='Approved';

-- 3. Pending scripts
SELECT * FROM ScriptVersions WHERE VersionStatus='Pending';

-- 4. Rejected scripts
SELECT * FROM ScriptVersions WHERE VersionStatus='Rejected';

-- 5. Count scripts by FilmID
SELECT FilmID, COUNT(*) AS TotalVersions FROM ScriptVersions GROUP BY FilmID;

-- 6. Latest script version per FilmID
SELECT * FROM ScriptVersions sv1
WHERE DraftNumber=(SELECT MAX(DraftNumber) FROM ScriptVersions sv2 WHERE sv2.FilmID=sv1.FilmID);

-- 7. Scripts submitted after 2022-01-01
SELECT * FROM ScriptVersions WHERE SubmitDate>'2022-01-01';

-- 8. Scripts by writer 'Ravi Verma'
SELECT * FROM ScriptVersions WHERE WriterName='Ravi Verma';

-- 9. Count by VersionStatus
SELECT VersionStatus, COUNT(*) AS total FROM ScriptVersions GROUP BY VersionStatus;

-- 10. Scripts with 'climax' in ChangeSummary
SELECT * FROM ScriptVersions WHERE ChangeSummary LIKE '%climax%';

-- 11. View: ApprovedScripts
CREATE VIEW ApprovedScripts AS SELECT * FROM ScriptVersions WHERE VersionStatus='Approved';

-- 12. Query ApprovedScripts
SELECT * FROM ApprovedScripts;

-- 13. View: PendingScripts
CREATE VIEW PendingScripts AS SELECT * FROM ScriptVersions WHERE VersionStatus='Pending';

-- 14. Query PendingScripts
SELECT * FROM PendingScripts;

-- 15. CTE: LatestVersionCTE
WITH LatestVersionCTE AS (
  SELECT FilmID, MAX(DraftNumber) AS LatestDraft FROM ScriptVersions GROUP BY FilmID
)
SELECT sv.* FROM ScriptVersions sv
JOIN LatestVersionCTE lvc ON sv.FilmID=lvc.FilmID AND sv.DraftNumber=lvc.LatestDraft;

-- 16. CTE: RejectedScriptsCTE
WITH RejectedScriptsCTE AS (
  SELECT * FROM ScriptVersions WHERE VersionStatus='Rejected'
)
SELECT * FROM RejectedScriptsCTE;

-- 17. Window: Row number by FilmID
SELECT *, ROW_NUMBER() OVER(PARTITION BY FilmID ORDER BY SubmitDate DESC) AS rn FROM ScriptVersions;

-- 18. Window: Rank by DraftNumber
SELECT *, RANK() OVER(PARTITION BY FilmID ORDER BY DraftNumber DESC) AS rnk FROM ScriptVersions;

-- 19. Window: Dense rank by SubmitDate
SELECT *, DENSE_RANK() OVER(PARTITION BY FilmID ORDER BY SubmitDate DESC) AS drnk FROM ScriptVersions;

-- 20. Window: Cumulative drafts per FilmID
SELECT FilmID, DraftNumber, SUM(DraftNumber) OVER(PARTITION BY FilmID ORDER BY DraftNumber) AS cum_drafts FROM ScriptVersions;

-- 21. Stored Procedure: GetScriptsByStatus
DELIMITER //
CREATE PROCEDURE GetScriptsByStatus(IN pStatus VARCHAR(20))
BEGIN
    SELECT * FROM ScriptVersions WHERE VersionStatus=pStatus;
END;
//
DELIMITER ;

-- 22. Call procedure
CALL GetScriptsByStatus('Approved');

-- 23. Stored Procedure: GetScriptsByWriter
DELIMITER //
CREATE PROCEDURE GetScriptsByWriter(IN pWriter VARCHAR(100))
BEGIN
    SELECT * FROM ScriptVersions WHERE WriterName=pWriter;
END;
//
DELIMITER ;

-- 24. Call procedure
CALL GetScriptsByWriter('Ravi Verma');

-- 25. Update script status
UPDATE ScriptVersions SET VersionStatus='Approved' WHERE VersionID=3;

-- 26. Delete a script version
DELETE FROM ScriptVersions WHERE VersionID=12;

-- 27. Insert new script version
INSERT INTO ScriptVersions (VersionID, FilmID, DraftNumber, WriterName, SubmitDate, ApprovedBy, VersionStatus, ChangeSummary, FilePath, Notes)
VALUES (21,110,3,'Ravi Verma','2025-01-05','Anurag Kashyap','Pending','Minor dialogues updated','/scripts/film110_v3.pdf','Awaiting producer review');

-- 28. Transaction commit
START TRANSACTION;
UPDATE ScriptVersions SET VersionStatus='Approved' WHERE VersionID=7;
COMMIT;

-- 29. Transaction rollback
START TRANSACTION;
UPDATE ScriptVersions SET VersionStatus='Rejected' WHERE VersionID=5;
ROLLBACK;

-- 30. Grant SELECT
GRANT SELECT ON ScriptVersions TO 'guest'@'localhost';

-- 31. Revoke SELECT
REVOKE SELECT ON ScriptVersions FROM 'guest'@'localhost';

-- 32. Trigger: before insert
DELIMITER //
CREATE TRIGGER before_scriptversions_insert BEFORE INSERT ON ScriptVersions
FOR EACH ROW
BEGIN
    IF NEW.DraftNumber<=0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='DraftNumber must be positive';
    END IF;
END;
//
DELIMITER ;

-- 33. Trigger: before update
DELIMITER //
CREATE TRIGGER before_scriptversions_update BEFORE UPDATE ON ScriptVersions
FOR EACH ROW
BEGIN
    SET NEW.VersionStatus=IFNULL(NEW.VersionStatus, OLD.VersionStatus);
END;
//
DELIMITER ;

-- 34. Subquery: latest draft per FilmID
SELECT * FROM ScriptVersions sv WHERE DraftNumber=(SELECT MAX(DraftNumber) FROM ScriptVersions WHERE FilmID=sv.FilmID);

-- 35. Subquery: scripts pending approval
SELECT * FROM ScriptVersions WHERE VersionStatus=(SELECT 'Pending');

-- 36. Count scripts per writer
SELECT WriterName, COUNT(*) AS total FROM ScriptVersions GROUP BY WriterName;

-- 37. COALESCE for ApprovedBy
SELECT VersionID, FilmID, COALESCE(ApprovedBy,'Not Assigned') AS ApprovedBy FROM ScriptVersions;

-- 38. IFNULL for Notes
SELECT VersionID, FilmID, IFNULL(Notes,'No Notes') AS Notes FROM ScriptVersions;

-- 39. Latest submitted script
SELECT * FROM ScriptVersions ORDER BY SubmitDate DESC LIMIT 1;

-- 40. Union: Approved and Pending
SELECT VersionID, FilmID, VersionStatus FROM ScriptVersions WHERE VersionStatus='Approved'
UNION
SELECT VersionID, FilmID, VersionStatus FROM ScriptVersions WHERE VersionStatus='Pending';

-- 41. Stored procedure: UpdateScriptStatus
DELIMITER //
CREATE PROCEDURE UpdateScriptStatus(IN pID INT, IN pStatus VARCHAR(20))
BEGIN
    UPDATE ScriptVersions SET VersionStatus=pStatus WHERE VersionID=pID;
END;
//
DELIMITER ;

-- 42. Call procedure
CALL UpdateScriptStatus(4,'Pending');

-- 43. Window: cumulative DraftNumber per FilmID
SELECT VersionID, FilmID, SUM(DraftNumber) OVER(PARTITION BY FilmID ORDER BY DraftNumber) AS cum_drafts FROM ScriptVersions;

-- 44. Window: cumulative drafts only for FilmID=110
SELECT VersionID, FilmID, SUM(CASE WHEN FilmID=110 THEN DraftNumber ELSE 0 END) OVER(ORDER BY DraftNumber) AS cum_drafts_film110 FROM ScriptVersions;

-- 45. View: RejectedScripts
CREATE VIEW RejectedScripts AS SELECT * FROM ScriptVersions WHERE VersionStatus='Rejected';

-- 46. Query RejectedScripts
SELECT * FROM RejectedScripts;

-- 47. CTE: WriterScriptsCTE
WITH WriterScriptsCTE AS (SELECT * FROM ScriptVersions WHERE WriterName='Ravi Verma')
SELECT * FROM WriterScriptsCTE;

-- 48. Trigger: log deleted scripts
CREATE TABLE ScriptVersionsAudit(id INT AUTO_INCREMENT PRIMARY KEY, version_id INT, FilmID INT, deleted_at DATETIME);
DELIMITER //
CREATE TRIGGER after_scriptversions_delete AFTER DELETE ON ScriptVersions
FOR EACH ROW
BEGIN
    INSERT INTO ScriptVersionsAudit(version_id, FilmID, deleted_at) VALUES(OLD.VersionID, OLD.FilmID, NOW());
END;
//
DELIMITER ;

-- 49. Select scripts for FilmID=110
SELECT * FROM ScriptVersions WHERE FilmID=110;

-- 50. Count scripts by VersionStatus
SELECT VersionStatus, COUNT(*) AS total FROM ScriptVersions GROUP BY VersionStatus;


-- Table 23. LegalClearances
CREATE TABLE LegalClearances (
    ClearanceID INT PRIMARY KEY,
    FilmID INT,
    ClearanceType VARCHAR(100),
    IssuedBy VARCHAR(100),
    IssueDate DATE,
    ValidTill DATE,
    ApprovalStatus VARCHAR(20),
    DocumentPath VARCHAR(200),
    ContactPerson VARCHAR(100),
    Remarks TEXT
);

-- Insert 20 sample records
INSERT INTO LegalClearances (clearanceid,filmid,clerancetype,issueby,validtill,approvalstatus,documnetpath,contactperson,remarks) VALUES
(1, 110, 'Shooting Location Permission', 'Mumbai Police', '2022-01-05', '2022-12-31', 'Approved', '/docs/loc_clear_110.pdf', 'Inspector Rajan', 'For Marine Drive night shoots.'),
(2, 111, 'Drone Usage Clearance', 'DGCA India', '2022-02-10', '2022-08-10', 'Approved', '/docs/drone_clear_111.pdf', 'Arun Mehta', 'Daylight drone flying allowed.'),
(3, 112, 'Copyright Clearance', 'IP Office India', '2022-03-01', '2032-03-01', 'Approved', '/docs/copyright_112.pdf', 'Pooja Joshi', 'Original content registered.'),
(4, 113, 'Public Gathering Permit', 'Delhi Police', '2021-12-15', '2022-01-15', 'Approved', '/docs/public_event_113.pdf', 'ACP Raghavan', 'Max crowd: 200 people.'),
(5, 114, 'Music Rights Clearance', 'IMI', '2022-02-20', '2025-02-20', 'Approved', '/docs/music_rights_114.pdf', 'Anil Kumar', 'Third-party song licensed.'),
(6, 115, 'Animal Welfare Clearance', 'AWBI India', '2022-03-10', '2023-03-10', 'Approved', '/docs/animal_clear_115.pdf', 'Dr. S. Murthy', 'Two horses involved in shoot.'),
(7, 116, 'Trademark Usage Clearance', 'Trademark Office India', '2022-04-05', '2027-04-05', 'Approved', '/docs/tm_clear_116.pdf', 'Nidhi Gupta', 'Brand name used in dialogues.'),
(8, 117, 'Firearm Usage Clearance', 'MHA India', '2022-05-01', '2022-08-01', 'Approved', '/docs/firearm_117.pdf', 'Inspector Tiwari', 'Prop weapons only.'),
(9, 118, 'Historical Site Access', 'ASI India', '2022-06-12', '2022-07-12', 'Approved', '/docs/asi_clearance_118.pdf', 'Dr. Anuradha Rao', 'Limited access to ruins allowed.'),
(10, 119, 'Shooting Abroad Approval', 'MEA India', '2022-07-15', '2022-12-15', 'Approved', '/docs/intl_shoot_119.pdf', 'Sandeep Kaul', 'UAE location pre-cleared.'),
(11, 120, 'Minor Artist Permit', 'CWCD Maharashtra', '2022-08-01', '2022-10-01', 'Approved', '/docs/minor_artist_120.pdf', 'Vandana Kulkarni', 'Child artist aged 12 permitted.'),
(12, 121, 'Religious Sensitivity Clearance', 'Cultural Dept.', '2021-11-20', '2022-11-20', 'Approved', '/docs/religious_121.pdf', 'Dr. Iqbal Khan', 'Depiction cleared for temples.'),
(13, 122, 'Noise Pollution Clearance', 'MPCB', '2022-01-10', '2022-03-10', 'Approved', '/docs/noise_122.pdf', 'Shalini Menon', 'Max 80 dB during shooting.'),
(14, 123, 'Environmental Clearance', 'MoEFCC India', '2022-02-25', '2022-09-25', 'Approved', '/docs/enviro_clear_123.pdf', 'Ramesh Nair', 'No disturbance to wetlands.'),
(15, 124, 'Insurance Documentation', 'New India Assurance', '2022-03-30', '2023-03-30', 'Approved', '/docs/insurance_124.pdf', 'Ajay Shetty', 'Covers crew and equipment.'),
(16, 125, 'Foreign Artist Work Permit', 'FRRO Mumbai', '2021-10-05', '2022-10-05', 'Approved', '/docs/frro_125.pdf', 'Komal Agarwal', 'UK actor cleared for 30 days.'),
(17, 126, 'Prop Car Usage Permit', 'RTO Chennai', '2021-09-15', '2022-09-15', 'Approved', '/docs/car_prop_126.pdf', 'Naveen Balan', 'Vintage car licensed.'),
(18, 127, 'Script Legal Vetting', 'Media Law Associates', '2021-08-20', '2022-08-20', 'Approved', '/docs/script_legal_127.pdf', 'Adv. Sneha T', 'No defamation found.'),
(19, 128, 'Cyber Scene Approval', 'Cyber Cell Mumbai', '2021-07-10', '2022-07-10', 'Approved', '/docs/cyber_scene_128.pdf', 'Inspector Goyal', 'Hacking content permitted.'),
(20, 109, 'Festival Participation NOC', 'IFFI India', '2022-09-01', '2023-09-01', 'Approved', '/docs/iffi_noc_109.pdf', 'Rajendra Mishra', 'Eligible for screening and awards.');

-- to display table data
SELECT * FROM LegalClearances;

-- to remove complete records from table
TRUNCATE TABLE LegalClearances;

-- to remove complete records and attributes from table
DROP TABLE LegalClearances;

-- 1. Select all clearances
SELECT * FROM LegalClearances;

-- 2. Approved clearances
SELECT * FROM LegalClearances WHERE ApprovalStatus='Approved';

-- 3. Pending clearances
SELECT * FROM LegalClearances WHERE ApprovalStatus='Pending';

-- 4. Expired clearances
SELECT * FROM LegalClearances WHERE ValidTill<CURDATE();

-- 5. Count clearances by FilmID
SELECT FilmID, COUNT(*) AS TotalClearances FROM LegalClearances GROUP BY FilmID;

-- 6. Latest clearance per FilmID
SELECT * FROM LegalClearances lc1
WHERE IssueDate=(SELECT MAX(IssueDate) FROM LegalClearances lc2 WHERE lc2.FilmID=lc1.FilmID);

-- 7. Clearances issued after 2022-01-01
SELECT * FROM LegalClearances WHERE IssueDate>'2022-01-01';

-- 8. Clearances by 'Mumbai Police'
SELECT * FROM LegalClearances WHERE IssuedBy='Mumbai Police';

-- 9. Count by ApprovalStatus
SELECT ApprovalStatus, COUNT(*) AS total FROM LegalClearances GROUP BY ApprovalStatus;

-- 10. Clearances expiring this year
SELECT * FROM LegalClearances WHERE YEAR(ValidTill)=2022;

-- 11. View: ApprovedClearances
CREATE VIEW ApprovedClearances AS SELECT * FROM LegalClearances WHERE ApprovalStatus='Approved';

-- 12. Query ApprovedClearances
SELECT * FROM ApprovedClearances;

-- 13. View: PendingClearances
CREATE VIEW PendingClearances AS SELECT * FROM LegalClearances WHERE ApprovalStatus='Pending';

-- 14. Query PendingClearances
SELECT * FROM PendingClearances;

-- 15. CTE: LatestClearanceCTE
WITH LatestClearanceCTE AS (
  SELECT FilmID, MAX(IssueDate) AS LatestIssue FROM LegalClearances GROUP BY FilmID
)
SELECT lc.* FROM LegalClearances lc
JOIN LatestClearanceCTE lct ON lc.FilmID=lct.FilmID AND lc.IssueDate=lct.LatestIssue;

-- 16. CTE: ExpiredClearancesCTE
WITH ExpiredClearancesCTE AS (
  SELECT * FROM LegalClearances WHERE ValidTill<CURDATE()
)
SELECT * FROM ExpiredClearancesCTE;

-- 17. Window: Row number by FilmID
SELECT *, ROW_NUMBER() OVER(PARTITION BY FilmID ORDER BY IssueDate DESC) AS rn FROM LegalClearances;

-- 18. Window: Rank by ValidTill
SELECT *, RANK() OVER(PARTITION BY FilmID ORDER BY ValidTill DESC) AS rnk FROM LegalClearances;

-- 19. Window: Dense rank by IssueDate
SELECT *, DENSE_RANK() OVER(PARTITION BY FilmID ORDER BY IssueDate DESC) AS drnk FROM LegalClearances;

-- 20. Window: Cumulative clearances per FilmID
SELECT FilmID, ClearanceID, SUM(ClearanceID) OVER(PARTITION BY FilmID ORDER BY IssueDate) AS cum_clearances FROM LegalClearances;

-- 21. Stored Procedure: GetClearancesByStatus
DELIMITER //
CREATE PROCEDURE GetClearancesByStatus(IN pStatus VARCHAR(20))
BEGIN
    SELECT * FROM LegalClearances WHERE ApprovalStatus=pStatus;
END;
//
DELIMITER ;

-- 22. Call procedure
CALL GetClearancesByStatus('Approved');

-- 23. Stored Procedure: GetClearancesByIssuer
DELIMITER //
CREATE PROCEDURE GetClearancesByIssuer(IN pIssuer VARCHAR(100))
BEGIN
    SELECT * FROM LegalClearances WHERE IssuedBy=pIssuer;
END;
//
DELIMITER ;

-- 24. Call procedure
CALL GetClearancesByIssuer('Mumbai Police');

-- 25. Update clearance status
UPDATE LegalClearances SET ApprovalStatus='Pending' WHERE ClearanceID=5;

-- 26. Delete a clearance
DELETE FROM LegalClearances WHERE ClearanceID=20;

-- 27. Insert new clearance
INSERT INTO LegalClearances (ClearanceID, FilmID, ClearanceType, IssuedBy, IssueDate, ValidTill, ApprovalStatus, DocumentPath, ContactPerson, Remarks)
VALUES (21,110,'Special Effects Clearance','VFX Dept','2025-01-10','2026-01-10','Pending','/docs/vfx_110.pdf','Mr. Sharma','Pending approval');

-- 28. Transaction commit
START TRANSACTION;
UPDATE LegalClearances SET ApprovalStatus='Approved' WHERE ClearanceID=7;
COMMIT;

-- 29. Transaction rollback
START TRANSACTION;
UPDATE LegalClearances SET ApprovalStatus='Rejected' WHERE ClearanceID=6;
ROLLBACK;

-- 30. Grant SELECT
GRANT SELECT ON LegalClearances TO 'guest'@'localhost';

-- 31. Revoke SELECT
REVOKE SELECT ON LegalClearances FROM 'guest'@'localhost';

-- 32. Trigger: before insert
DELIMITER //
CREATE TRIGGER before_legalclearances_insert BEFORE INSERT ON LegalClearances
FOR EACH ROW
BEGIN
    IF NEW.IssueDate>NEW.ValidTill THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='ValidTill must be after IssueDate';
    END IF;
END;
//
DELIMITER ;

-- 33. Trigger: before update
DELIMITER //
CREATE TRIGGER before_legalclearances_update BEFORE UPDATE ON LegalClearances
FOR EACH ROW
BEGIN
    SET NEW.ApprovalStatus=IFNULL(NEW.ApprovalStatus, OLD.ApprovalStatus);
END;
//
DELIMITER ;

-- 34. Subquery: latest clearance per FilmID
SELECT * FROM LegalClearances lc WHERE IssueDate=(SELECT MAX(IssueDate) FROM LegalClearances WHERE FilmID=lc.FilmID);

-- 35. Subquery: clearances pending approval
SELECT * FROM LegalClearances WHERE ApprovalStatus=(SELECT 'Pending');

-- 36. Count clearances per issuer
SELECT IssuedBy, COUNT(*) AS total FROM LegalClearances GROUP BY IssuedBy;

-- 37. COALESCE for ContactPerson
SELECT ClearanceID, FilmID, COALESCE(ContactPerson,'Not Assigned') AS ContactPerson FROM LegalClearances;

-- 38. IFNULL for Remarks
SELECT ClearanceID, FilmID, IFNULL(Remarks,'No Remarks') AS Remarks FROM LegalClearances;

-- 39. Latest issued clearance
SELECT * FROM LegalClearances ORDER BY IssueDate DESC LIMIT 1;

-- 40. Union: Approved and Pending
SELECT ClearanceID, FilmID, ApprovalStatus FROM LegalClearances WHERE ApprovalStatus='Approved'
UNION
SELECT ClearanceID, FilmID, ApprovalStatus FROM LegalClearances WHERE ApprovalStatus='Pending';

-- 41. Stored procedure: UpdateClearanceStatus
DELIMITER //
CREATE PROCEDURE UpdateClearanceStatus(IN pID INT, IN pStatus VARCHAR(20))
BEGIN
    UPDATE LegalClearances SET ApprovalStatus=pStatus WHERE ClearanceID=pID;
END;
//
DELIMITER ;

-- 42. Call procedure
CALL UpdateClearanceStatus(4,'Pending');

-- 43. Window: cumulative clearances per FilmID
SELECT ClearanceID, FilmID, SUM(ClearanceID) OVER(PARTITION BY FilmID ORDER BY IssueDate) AS cum_clearances FROM LegalClearances;

-- 44. Window: cumulative clearances only for FilmID=110
SELECT ClearanceID, FilmID, SUM(CASE WHEN FilmID=110 THEN ClearanceID ELSE 0 END) OVER(ORDER BY IssueDate) AS cum_clearances_film110 FROM LegalClearances;

-- 45. View: ExpiredClearances
CREATE VIEW ExpiredClearances AS SELECT * FROM LegalClearances WHERE ValidTill<CURDATE();

-- 46. Query ExpiredClearances
SELECT * FROM ExpiredClearances;

-- 47. CTE: IssuerClearancesCTE
WITH IssuerClearancesCTE AS (SELECT * FROM LegalClearances WHERE IssuedBy='Mumbai Police')
SELECT * FROM IssuerClearancesCTE;

-- 48. Trigger: log deleted clearances
CREATE TABLE LegalClearancesAudit(id INT AUTO_INCREMENT PRIMARY KEY, clearance_id INT, FilmID INT, deleted_at DATETIME);
DELIMITER //
CREATE TRIGGER after_legalclearances_delete AFTER DELETE ON LegalClearances
FOR EACH ROW
BEGIN
    INSERT INTO LegalClearancesAudit(clearance_id, FilmID, deleted_at) VALUES(OLD.ClearanceID, OLD.FilmID, NOW());
END;
//
DELIMITER ;

-- 49. Select clearances for FilmID=110
SELECT * FROM LegalClearances WHERE FilmID=110;

-- 50. Count clearances by ApprovalStatus
SELECT ApprovalStatus, COUNT(*) AS total FROM LegalClearances GROUP BY ApprovalStatus;



-- Table 24. PostProduction
CREATE TABLE PostProduction (
    PostID INT PRIMARY KEY,
    FilmID INT,
    EditorName VARCHAR(100),
    VFXStudio VARCHAR(100),
    SoundEngineer VARCHAR(100),
    ColorGradingStudio VARCHAR(100),
    StartDate DATE,
    EndDate DATE,
    Status VARCHAR(20),
    Remarks TEXT
);

-- Insert 20 sample records
INSERT INTO PostProduction  (postid,filmid,editorname,vfxstudioo,soundengineer,colourgradingvideo,startdate,enddate,status,remarks) VALUES
(1, 110, 'Ritesh Mehra', 'Red Chillies VFX', 'Sanjay Varma', 'Prime Focus', '2022-01-15', '2022-03-01', 'Completed', 'Delivered ahead of schedule.'),
(2, 111, 'Anita Sharma', 'Makuta VFX', 'Kavita Rao', 'FutureWorks', '2022-02-01', '2022-04-15', 'Completed', 'VFX-intensive scenes rendered well.'),
(3, 112, 'Deepak Menon', 'PhantomFX', 'Rohit Saxena', 'Red Chillies VFX', '2022-03-10', '2022-05-01', 'Completed', 'High attention to sound detail.'),
(4, 113, 'Meera Iyer', 'BOT VFX', 'Tapan Bose', 'Famous Studios', '2022-04-01', '2022-06-15', 'Completed', 'Excellent color correction.'),
(5, 114, 'Sameer Joshi', 'Tata Elxsi', 'Riya Kulkarni', 'Qube Cinema', '2022-05-20', '2022-07-10', 'Completed', 'Realistic visual integration.'),
(6, 115, 'Ajay Sinha', 'NY VFXWAALA', 'Rahul Sen', 'Famous Studios', '2022-06-01', '2022-08-01', 'Completed', 'Multiple audio re-recordings done.'),
(7, 116, 'Nidhi Verma', 'Prana Studios', 'Aditya Pillai', 'Pixel Studios', '2022-07-05', '2022-09-15', 'Completed', 'Minor sync issues resolved.'),
(8, 117, 'Kabir Shah', 'Red Chillies VFX', 'Reema Desai', 'After Studios', '2022-08-10', '2022-10-05', 'Completed', 'HDR mastering completed.'),
(9, 118, 'Ankur Rathi', 'Makuta VFX', 'Divya Shastri', 'Qube Cinema', '2022-09-01', '2022-10-30', 'Completed', 'CGI rain sequences perfected.'),
(10, 119, 'Swati Kaul', 'PhantomFX', 'Vinay Patil', 'Prime Focus', '2022-10-10', '2022-12-05', 'Completed', 'Subtitles and final mix added.'),
(11, 120, 'Vikas Kapoor', 'Bot VFX', 'Neeraj Das', 'Red Chillies VFX', '2021-11-01', '2022-01-15', 'Completed', 'Award-nominated editing.'),
(12, 121, 'Shraddha Deshpande', 'Tata Elxsi', 'Zubin Irani', 'FutureWorks', '2021-12-01', '2022-02-20', 'Completed', 'Fully Dolby Atmos compatible.'),
(13, 122, 'Harshad Malhotra', 'Prana Studios', 'Jyoti Balan', 'Pixel Studios', '2020-01-15', '2020-03-10', 'Completed', 'Final version for theatrical release.'),
(14, 123, 'Anita Pillai', 'NY VFXWAALA', 'Tarun Mehta', 'Famous Studios', '2020-03-01', '2020-05-01', 'Completed', 'Minor color fixes applied.'),
(15, 124, 'Shyam Mohan', 'Red Chillies VFX', 'Sanjana Rao', 'Qube Cinema', '2020-04-10', '2020-06-15', 'Completed', 'Extended cut version delivered.'),
(16, 125, 'Alok Tiwari', 'BOT VFX', 'Pritam Sen', 'Prime Focus', '2020-06-20', '2020-08-30', 'Completed', 'Clean audio output achieved.'),
(17, 126, 'Rupal Sheth', 'PhantomFX', 'Ramesh Iyer', 'After Studios', '2021-01-05', '2021-03-01', 'Completed', 'Ready for OTT platform.'),
(18, 127, 'Zoya Dhanraj', 'Makuta VFX', 'Rachit Goyal', 'Famous Studios', '2021-02-10', '2021-04-05', 'Completed', 'No delay in post timeline.'),
(19, 128, 'Gaurav Prasad', 'Tata Elxsi', 'Sneha Nair', 'Pixel Studios', '2021-03-15', '2021-05-10', 'Completed', 'Final print delivered to censor board.'),
(20, 109, 'Tanvi Reddy', 'NY VFXWAALA', 'Akhil Raut', 'FutureWorks', '2021-04-01', '2021-06-01', 'Completed', 'Multiple trailers edited.');

-- to display table data
SELECT * FROM PostProduction;

-- to remove complete records from table
TRUNCATE TABLE PostProduction;

-- to remove complete records and attributes from table
DROP TABLE PostProduction;

-- 1. Select all post-productions
SELECT * FROM PostProduction;

-- 2. Completed post-productions
SELECT * FROM PostProduction WHERE Status='Completed';

-- 3. Post-productions started in 2022
SELECT * FROM PostProduction WHERE YEAR(StartDate)=2022;

-- 4. Post-productions ending after 2022-06-01
SELECT * FROM PostProduction WHERE EndDate>'2022-06-01';

-- 5. Count post-productions by VFXStudio
SELECT VFXStudio, COUNT(*) AS TotalProjects FROM PostProduction GROUP BY VFXStudio;

-- 6. Latest post-production per FilmID
SELECT * FROM PostProduction pp1
WHERE EndDate=(SELECT MAX(EndDate) FROM PostProduction pp2 WHERE pp2.FilmID=pp1.FilmID);

-- 7. Post-productions handled by 'Red Chillies VFX'
SELECT * FROM PostProduction WHERE VFXStudio='Red Chillies VFX';

-- 8. Post-productions with Prime Focus color grading
SELECT * FROM PostProduction WHERE ColorGradingStudio='Prime Focus';

-- 9. Count projects by Status
SELECT Status, COUNT(*) AS Total FROM PostProduction GROUP BY Status;

-- 10. Average crew per VFXStudio
SELECT VFXStudio, AVG(CrewCount) AS AvgCrew FROM (SELECT VFXStudio, CrewCount FROM PostProduction) AS t GROUP BY VFXStudio;

-- 11. View: CompletedPostProductions
CREATE VIEW CompletedPostProductions AS SELECT * FROM PostProduction WHERE Status='Completed';

-- 12. Query CompletedPostProductions
SELECT * FROM CompletedPostProductions;

-- 13. View: OngoingPostProductions
CREATE VIEW OngoingPostProductions AS SELECT * FROM PostProduction WHERE Status!='Completed';

-- 14. Query OngoingPostProductions
SELECT * FROM OngoingPostProductions;

-- 15. CTE: LatestPostCTE
WITH LatestPostCTE AS (
  SELECT FilmID, MAX(EndDate) AS LatestEnd FROM PostProduction GROUP BY FilmID
)
SELECT pp.* FROM PostProduction pp JOIN LatestPostCTE lct ON pp.FilmID=lct.FilmID AND pp.EndDate=lct.LatestEnd;

-- 16. CTE: VFXRedChilliesCTE
WITH VFXRedChilliesCTE AS (SELECT * FROM PostProduction WHERE VFXStudio='Red Chillies VFX')
SELECT * FROM VFXRedChilliesCTE;

-- 17. Window: Row number per FilmID
SELECT *, ROW_NUMBER() OVER(PARTITION BY FilmID ORDER BY EndDate DESC) AS rn FROM PostProduction;

-- 18. Window: Rank by EndDate
SELECT *, RANK() OVER(PARTITION BY FilmID ORDER BY EndDate DESC) AS rnk FROM PostProduction;

-- 19. Window: Dense rank by StartDate
SELECT *, DENSE_RANK() OVER(PARTITION BY FilmID ORDER BY StartDate DESC) AS drnk FROM PostProduction;

-- 20. Window: Cumulative count of projects
SELECT FilmID, PostID, SUM(PostID) OVER(PARTITION BY FilmID ORDER BY EndDate) AS cum_projects FROM PostProduction;

-- 21. Stored Procedure: GetPostByStatus
DELIMITER //
CREATE PROCEDURE GetPostByStatus(IN pStatus VARCHAR(20))
BEGIN
    SELECT * FROM PostProduction WHERE Status=pStatus;
END;
//
DELIMITER ;

-- 22. Call procedure
CALL GetPostByStatus('Completed');

-- 23. Stored Procedure: GetPostByVFX
DELIMITER //
CREATE PROCEDURE GetPostByVFX(IN pVFX VARCHAR(100))
BEGIN
    SELECT * FROM PostProduction WHERE VFXStudio=pVFX;
END;
//
DELIMITER ;

-- 24. Call procedure
CALL GetPostByVFX('Red Chillies VFX');

-- 25. Update status of a project
UPDATE PostProduction SET Status='Ongoing' WHERE PostID=5;

-- 26. Delete a post-production record
DELETE FROM PostProduction WHERE PostID=20;

-- 27. Insert a new post-production
INSERT INTO PostProduction (PostID, FilmID, EditorName, VFXStudio, SoundEngineer, ColorGradingStudio, StartDate, EndDate, Status, Remarks)
VALUES (21,110,'Rajiv Malhotra','Bot VFX','Neha Joshi','Prime Focus','2025-01-01','2025-03-01','Ongoing','Initial edits started');

-- 28. Transaction commit
START TRANSACTION;
UPDATE PostProduction SET Status='Completed' WHERE PostID=7;
COMMIT;

-- 29. Transaction rollback
START TRANSACTION;
UPDATE PostProduction SET Status='Delayed' WHERE PostID=6;
ROLLBACK;

-- 30. Grant SELECT
GRANT SELECT ON PostProduction TO 'guest'@'localhost';

-- 31. Revoke SELECT
REVOKE SELECT ON PostProduction FROM 'guest'@'localhost';

-- 32. Trigger: before insert
DELIMITER //
CREATE TRIGGER before_postproduction_insert BEFORE INSERT ON PostProduction
FOR EACH ROW
BEGIN
    IF NEW.StartDate>NEW.EndDate THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='EndDate must be after StartDate';
    END IF;
END;
//
DELIMITER ;

-- 33. Trigger: before update
DELIMITER //
CREATE TRIGGER before_postproduction_update BEFORE UPDATE ON PostProduction
FOR EACH ROW
BEGIN
    SET NEW.Status=IFNULL(NEW.Status, OLD.Status);
END;
//
DELIMITER ;

-- 34. Subquery: latest post-production per FilmID
SELECT * FROM PostProduction pp WHERE EndDate=(SELECT MAX(EndDate) FROM PostProduction WHERE FilmID=pp.FilmID);

-- 35. Subquery: ongoing projects
SELECT * FROM PostProduction WHERE Status=(SELECT 'Ongoing');

-- 36. Count projects by VFXStudio
SELECT VFXStudio, COUNT(*) AS total FROM PostProduction GROUP BY VFXStudio;

-- 37. COALESCE for SoundEngineer
SELECT PostID, FilmID, COALESCE(SoundEngineer,'Not Assigned') AS SoundEngineer FROM PostProduction;

-- 38. IFNULL for Remarks
SELECT PostID, FilmID, IFNULL(Remarks,'No Remarks') AS Remarks FROM PostProduction;

-- 39. Latest post-production
SELECT * FROM PostProduction ORDER BY EndDate DESC LIMIT 1;

-- 40. Union: Completed and Ongoing
SELECT PostID, FilmID, Status FROM PostProduction WHERE Status='Completed'
UNION
SELECT PostID, FilmID, Status FROM PostProduction WHERE Status='Ongoing';

-- 41. Stored procedure: UpdatePostStatus
DELIMITER //
CREATE PROCEDURE UpdatePostStatus(IN pID INT, IN pStatus VARCHAR(20))
BEGIN
    UPDATE PostProduction SET Status=pStatus WHERE PostID=pID;
END;
//
DELIMITER ;

-- 42. Call procedure
CALL UpdatePostStatus(4,'Ongoing');

-- 43. Window: cumulative projects per FilmID
SELECT PostID, FilmID, SUM(PostID) OVER(PARTITION BY FilmID ORDER BY EndDate) AS cum_projects FROM PostProduction;

-- 44. Window: cumulative projects only FilmID=110
SELECT PostID, FilmID, SUM(CASE WHEN FilmID=110 THEN PostID ELSE 0 END) OVER(ORDER BY EndDate) AS cum_projects_film110 FROM PostProduction;

-- 45. View: DelayedPostProductions
CREATE VIEW DelayedPostProductions AS SELECT * FROM PostProduction WHERE Status='Delayed';

-- 46. Query DelayedPostProductions
SELECT * FROM DelayedPostProductions;

-- 47. CTE: VFXMakutaCTE
WITH VFXMakutaCTE AS (SELECT * FROM PostProduction WHERE VFXStudio='Makuta VFX')
SELECT * FROM VFXMakutaCTE;

-- 48. Trigger: log deleted post-productions
CREATE TABLE PostProductionAudit(id INT AUTO_INCREMENT PRIMARY KEY, post_id INT, FilmID INT, deleted_at DATETIME);
DELIMITER //
CREATE TRIGGER after_postproduction_delete AFTER DELETE ON PostProduction
FOR EACH ROW
BEGIN
    INSERT INTO PostProductionAudit(post_id, FilmID, deleted_at) VALUES(OLD.PostID, OLD.FilmID, NOW());
END;
//
DELIMITER ;

-- 49. Select post-productions for FilmID=110
SELECT * FROM PostProduction WHERE FilmID=110;

-- 50. Count post-productions by Status
SELECT Status, COUNT(*) AS total FROM PostProduction GROUP BY Status;


-- Table 25. AudienceSurveys
CREATE TABLE AudienceSurveys (
    SurveyID INT PRIMARY KEY,
    FilmID INT,
    SurveyDate DATE,
    AgeGroup VARCHAR(20),
    Gender VARCHAR(10),
    Region VARCHAR(50),
    Rating INT,
    Feedback TEXT,
    ConductedBy VARCHAR(100),
    ResponseCount INT
);

-- Insert 20 sample records
INSERT INTO AudienceSurveys (surveyid,filmid,surveydate,agegroup,gender,region,rating,feedback,conductedby,responsecount) VALUES
(1, 110, '2022-03-05', '18-25', 'Female', 'Mumbai', 8, 'Loved the soundtrack and visuals.', 'Ormax Media', 150),
(2, 110, '2022-03-06', '26-35', 'Male', 'Delhi', 7, 'Storyline was engaging but slightly slow.', 'Kantar IMRB', 200),
(3, 111, '2022-04-10', '36-45', 'Female', 'Bangalore', 9, 'Outstanding performances!', 'Ormax Media', 180),
(4, 111, '2022-04-11', '18-25', 'Male', 'Hyderabad', 6, 'Editing could be tighter.', 'Cinemark Research', 120),
(5, 112, '2022-05-02', '46-60', 'Female', 'Chennai', 8, 'Beautiful cinematography.', 'Nielsen India', 90),
(6, 112, '2022-05-03', '26-35', 'Male', 'Kolkata', 5, 'Plot was a bit predictable.', 'Ormax Media', 130),
(7, 113, '2022-06-15', '18-25', 'Female', 'Pune', 9, 'Great humor and emotional depth.', 'Kantar IMRB', 170),
(8, 113, '2022-06-16', '36-45', 'Male', 'Ahmedabad', 7, 'Could improve background score.', 'Cinemark Research', 110),
(9, 114, '2022-07-01', '26-35', 'Female', 'Lucknow', 6, 'Dialogues were powerful.', 'Ormax Media', 140),
(10, 114, '2022-07-02', '18-25', 'Male', 'Nagpur', 8, 'Loved the emotional scenes.', 'Nielsen India', 160),
(11, 115, '2022-08-05', '26-35', 'Female', 'Indore', 9, 'Top-notch acting and direction.', 'Cinemark Research', 200),
(12, 115, '2022-08-06', '46-60', 'Male', 'Bhopal', 6, 'Could’ve been shorter.', 'Ormax Media', 100),
(13, 116, '2022-09-12', '36-45', 'Female', 'Thane', 7, 'Strong message and execution.', 'Kantar IMRB', 180),
(14, 116, '2022-09-13', '26-35', 'Male', 'Vadodara', 5, 'Weak plot twist.', 'Nielsen India', 90),
(15, 117, '2022-10-20', '18-25', 'Female', 'Patna', 8, 'Very relatable characters.', 'Cinemark Research', 140),
(16, 117, '2022-10-21', '26-35', 'Male', 'Raipur', 6, 'Average screenplay.', 'Ormax Media', 120),
(17, 118, '2022-11-01', '36-45', 'Female', 'Surat', 9, 'Brilliant visuals.', 'Nielsen India', 130),
(18, 118, '2022-11-02', '18-25', 'Male', 'Guwahati', 7, 'Good watch but lacked climax.', 'Ormax Media', 110),
(19, 119, '2022-12-10', '26-35', 'Female', 'Coimbatore', 8, 'Great for family audience.', 'Kantar IMRB', 150),
(20, 119, '2022-12-11', '36-45', 'Male', 'Amritsar', 6, 'Expected more suspense.', 'Ormax Media', 100);

-- to display table data
SELECT * FROM AudienceSurveys;

-- to remove complete records from table
TRUNCATE TABLE AudienceSurveys;

-- to remove complete records and attributes from table
DROP TABLE AudienceSurveys;

-- 1. Select all surveys
SELECT * FROM AudienceSurveys;

-- 2. Surveys with rating >=8
SELECT * FROM AudienceSurveys WHERE Rating>=8;

-- 3. Surveys conducted in Mumbai
SELECT * FROM AudienceSurveys WHERE Region='Mumbai';

-- 4. Surveys for FilmID=110
SELECT * FROM AudienceSurveys WHERE FilmID=110;

-- 5. Count of surveys by AgeGroup
SELECT AgeGroup, COUNT(*) AS TotalSurveys FROM AudienceSurveys GROUP BY AgeGroup;

-- 6. Average rating by FilmID
SELECT FilmID, AVG(Rating) AS AvgRating FROM AudienceSurveys GROUP BY FilmID;

-- 7. Maximum rating per FilmID
SELECT FilmID, MAX(Rating) AS MaxRating FROM AudienceSurveys GROUP BY FilmID;

-- 8. Minimum rating per FilmID
SELECT FilmID, MIN(Rating) AS MinRating FROM AudienceSurveys GROUP BY FilmID;

-- 9. Total responses by Region
SELECT Region, SUM(ResponseCount) AS TotalResponses FROM AudienceSurveys GROUP BY Region;

-- 10. Count of surveys by Gender
SELECT Gender, COUNT(*) AS Total FROM AudienceSurveys GROUP BY Gender;

-- 11. View: HighRatedSurveys
CREATE VIEW HighRatedSurveys AS SELECT * FROM AudienceSurveys WHERE Rating>=8;

-- 12. Query HighRatedSurveys
SELECT * FROM HighRatedSurveys;

-- 13. View: LowRatedSurveys
CREATE VIEW LowRatedSurveys AS SELECT * FROM AudienceSurveys WHERE Rating<=6;

-- 14. Query LowRatedSurveys
SELECT * FROM LowRatedSurveys;

-- 15. CTE: AvgRatingCTE
WITH AvgRatingCTE AS (SELECT FilmID, AVG(Rating) AS AvgRating FROM AudienceSurveys GROUP BY FilmID)
SELECT * FROM AvgRatingCTE;

-- 16. CTE: TopRatedSurveysCTE
WITH TopRatedSurveysCTE AS (SELECT * FROM AudienceSurveys WHERE Rating>=9)
SELECT * FROM TopRatedSurveysCTE;

-- 17. Window: Row number by FilmID
SELECT *, ROW_NUMBER() OVER(PARTITION BY FilmID ORDER BY SurveyDate DESC) AS rn FROM AudienceSurveys;

-- 18. Window: Rank by Rating
SELECT *, RANK() OVER(PARTITION BY FilmID ORDER BY Rating DESC) AS rnk FROM AudienceSurveys;

-- 19. Window: Dense rank by ResponseCount
SELECT *, DENSE_RANK() OVER(PARTITION BY FilmID ORDER BY ResponseCount DESC) AS drnk FROM AudienceSurveys;

-- 20. Window: Cumulative responses by FilmID
SELECT FilmID, SurveyID, SUM(ResponseCount) OVER(PARTITION BY FilmID ORDER BY SurveyDate) AS CumResponses FROM AudienceSurveys;

-- 21. Stored Procedure: GetSurveysByFilm
DELIMITER //
CREATE PROCEDURE GetSurveysByFilm(IN pFilmID INT)
BEGIN
    SELECT * FROM AudienceSurveys WHERE FilmID=pFilmID;
END;
//
DELIMITER ;

-- 22. Call procedure
CALL GetSurveysByFilm(110);

-- 23. Stored Procedure: GetSurveysByRegion
DELIMITER //
CREATE PROCEDURE GetSurveysByRegion(IN pRegion VARCHAR(50))
BEGIN
    SELECT * FROM AudienceSurveys WHERE Region=pRegion;
END;
//
DELIMITER ;

-- 24. Call procedure
CALL GetSurveysByRegion('Mumbai');

-- 25. Update survey rating
UPDATE AudienceSurveys SET Rating=9 WHERE SurveyID=6;

-- 26. Delete a survey
DELETE FROM AudienceSurveys WHERE SurveyID=20;

-- 27. Insert new survey
INSERT INTO AudienceSurveys (SurveyID, FilmID, SurveyDate, AgeGroup, Gender, Region, Rating, Feedback, ConductedBy, ResponseCount)
VALUES (21,120,'2023-01-10','26-35','Female','Pune',8,'Good visual effects.','Ormax Media',130);

-- 28. Transaction commit
START TRANSACTION;
UPDATE AudienceSurveys SET Rating=10 WHERE SurveyID=1;
COMMIT;

-- 29. Transaction rollback
START TRANSACTION;
UPDATE AudienceSurveys SET Rating=4 WHERE SurveyID=2;
ROLLBACK;

-- 30. Grant SELECT
GRANT SELECT ON AudienceSurveys TO 'guest'@'localhost';

-- 31. Revoke SELECT
REVOKE SELECT ON AudienceSurveys FROM 'guest'@'localhost';

-- 32. Trigger: before insert to check rating
DELIMITER //
CREATE TRIGGER before_audiencesurveys_insert BEFORE INSERT ON AudienceSurveys
FOR EACH ROW
BEGIN
    IF NEW.Rating<1 OR NEW.Rating>10 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Rating must be between 1 and 10';
    END IF;
END;
//
DELIMITER ;

-- 33. Trigger: before update to prevent negative responses
DELIMITER //
CREATE TRIGGER before_audiencesurveys_update BEFORE UPDATE ON AudienceSurveys
FOR EACH ROW
BEGIN
    IF NEW.ResponseCount<0 THEN
        SET NEW.ResponseCount=OLD.ResponseCount;
    END IF;
END;
//
DELIMITER ;

-- 34. Subquery: surveys with max rating
SELECT * FROM AudienceSurveys WHERE Rating=(SELECT MAX(Rating) FROM AudienceSurveys);

-- 35. Subquery: surveys with min rating
SELECT * FROM AudienceSurveys WHERE Rating=(SELECT MIN(Rating) FROM AudienceSurveys);

-- 36. Count surveys by FilmID
SELECT FilmID, COUNT(*) AS total FROM AudienceSurveys GROUP BY FilmID;

-- 37. COALESCE for Feedback
SELECT SurveyID, FilmID, COALESCE(Feedback,'No Feedback') AS Feedback FROM AudienceSurveys;

-- 38. IFNULL for ConductedBy
SELECT SurveyID, FilmID, IFNULL(ConductedBy,'Unknown') AS ConductedBy FROM AudienceSurveys;

-- 39. Latest survey
SELECT * FROM AudienceSurveys ORDER BY SurveyDate DESC LIMIT 1;

-- 40. Union: Male and Female surveys
SELECT SurveyID, FilmID, Gender, Rating FROM AudienceSurveys WHERE Gender='Male'
UNION
SELECT SurveyID, FilmID, Gender, Rating FROM AudienceSurveys WHERE Gender='Female';

-- 41. Stored Procedure: UpdateSurveyRating
DELIMITER //
CREATE PROCEDURE UpdateSurveyRating(IN pID INT, IN pRating INT)
BEGIN
    UPDATE AudienceSurveys SET Rating=pRating WHERE SurveyID=pID;
END;
//
DELIMITER ;

-- 42. Call procedure
CALL UpdateSurveyRating(5,10);

-- 43. Window: cumulative responses
SELECT SurveyID, FilmID, SUM(ResponseCount) OVER(PARTITION BY FilmID ORDER BY SurveyDate) AS cum_responses FROM AudienceSurveys;

-- 44. Window: cumulative rating per FilmID=110
SELECT SurveyID, FilmID, SUM(CASE WHEN FilmID=110 THEN Rating ELSE 0 END) OVER(ORDER BY SurveyDate) AS cum_rating_film110 FROM AudienceSurveys;

-- 45. View: LowResponseSurveys
CREATE VIEW LowResponseSurveys AS SELECT * FROM AudienceSurveys WHERE ResponseCount<120;

-- 46. Query LowResponseSurveys
SELECT * FROM LowResponseSurveys;

-- 47. CTE: SurveysAbove8
WITH SurveysAbove8 AS (SELECT * FROM AudienceSurveys WHERE Rating>=8)
SELECT * FROM SurveysAbove8;

-- 48. Trigger: log deleted surveys
CREATE TABLE SurveyAudit(id INT AUTO_INCREMENT PRIMARY KEY, SurveyID INT, FilmID INT, deleted_at DATETIME);
DELIMITER //
CREATE TRIGGER after_audiencesurveys_delete AFTER DELETE ON AudienceSurveys
FOR EACH ROW
BEGIN
    INSERT INTO SurveyAudit(SurveyID, FilmID, deleted_at) VALUES(OLD.SurveyID, OLD.FilmID, NOW());
END;
//
DELIMITER ;

-- 49. Select surveys for FilmID=111
SELECT * FROM AudienceSurveys WHERE FilmID=111;

-- 50. Count surveys by Rating
SELECT Rating, COUNT(*) AS total FROM AudienceSurveys GROUP BY Rating;