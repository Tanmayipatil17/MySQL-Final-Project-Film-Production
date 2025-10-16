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

-- 1. Inner Join Films with ProductionCompanies (only matching records)
SELECT f.Title, f.Language, pc.CompanyName, pc.Headquarters
FROM Films f
INNER JOIN ProductionCompanies pc
ON f.ProductionCompany = pc.CompanyName;

-- 2. Left Join to show all films even if company not found
SELECT f.Title, pc.CompanyName
FROM Films f
LEFT JOIN ProductionCompanies pc
ON f.ProductionCompany = pc.CompanyName;

-- 3. Right Join (companies without films will also appear)
SELECT pc.CompanyName, f.Title
FROM Films f
RIGHT JOIN ProductionCompanies pc
ON f.ProductionCompany = pc.CompanyName;

-- 4. Self Join: Find films made by the same ProductionCompany
SELECT f1.Title AS Film1, f2.Title AS Film2, f1.ProductionCompany
FROM Films f1
JOIN Films f2
ON f1.ProductionCompany = f2.ProductionCompany
AND f1.FilmID < f2.FilmID;

-- 5. Join with Genres table to get Category
SELECT f.Title, g.Category
FROM Films f
JOIN Genres g
ON f.Genre = g.GenreName;

-- 6. Films with same language and same production house
SELECT f1.Title, f2.Title, f1.Language
FROM Films f1
JOIN Films f2
ON f1.Language = f2.Language
AND f1.ProductionCompany = f2.ProductionCompany
AND f1.FilmID <> f2.FilmID;

-- 7. Cross Join (Cartesian product: all films × all genres)
SELECT f.Title, g.GenreName
FROM Films f
CROSS JOIN Genres g;

-- 8. Films of Action genre with duration > 150 mins
SELECT f.Title, pc.CompanyName
FROM Films f
JOIN ProductionCompanies pc
ON f.ProductionCompany = pc.CompanyName
WHERE f.Genre LIKE '%Action%' AND f.DurationMinutes > 150;

-- 9. Average budget of films produced by each company
SELECT pc.CompanyName, AVG(f.Budget) AS AvgBudget
FROM Films f
JOIN ProductionCompanies pc
ON f.ProductionCompany = pc.CompanyName
GROUP BY pc.CompanyName;

-- 10. Top 3 highest budget films per company
SELECT f.Title, f.Budget, pc.CompanyName
FROM Films f
JOIN ProductionCompanies pc
ON f.ProductionCompany = pc.CompanyName
ORDER BY pc.CompanyName, f.Budget DESC
LIMIT 3;

-- 11. FULL OUTER JOIN emulation in MySQL/SQLite
SELECT f.Title, pc.CompanyName
FROM Films f
LEFT JOIN ProductionCompanies pc
  ON f.ProductionCompany = pc.CompanyName

UNION

SELECT f.Title, pc.CompanyName
FROM Films f
RIGHT JOIN ProductionCompanies pc
  ON f.ProductionCompany = pc.CompanyName;

-- 12. Films released after 2020 along with company details
SELECT f.Title, f.ReleaseDate, pc.CompanyName
FROM Films f
JOIN ProductionCompanies pc
ON f.ProductionCompany = pc.CompanyName
WHERE f.ReleaseDate > '2020-01-01';

-- 13. Count films per production company
SELECT pc.CompanyName, COUNT(f.FilmID) AS TotalFilms
FROM ProductionCompanies pc
LEFT JOIN Films f
ON f.ProductionCompany = pc.CompanyName
GROUP BY pc.CompanyName;

-- 14. Films with matching Genre and Company headquarters city
SELECT f.Title, g.Category, pc.Headquarters
FROM Films f
JOIN Genres g ON f.Genre = g.GenreName
JOIN ProductionCompanies pc ON f.ProductionCompany = pc.CompanyName;

-- 15. Films produced by companies founded before 2000
SELECT f.Title, pc.CompanyName, pc.FoundedYear
FROM Films f
JOIN ProductionCompanies pc
ON f.ProductionCompany = pc.CompanyName
WHERE pc.FoundedYear < 2000;


-- 16. Films with budget above average budget of all films
SELECT Title, Budget
FROM Films
WHERE Budget > (SELECT AVG(Budget) FROM Films);

-- 17. Film(s) with maximum duration
SELECT Title, DurationMinutes
FROM Films
WHERE DurationMinutes = (SELECT MAX(DurationMinutes) FROM Films);

-- 18. Company with highest total film budget
SELECT ProductionCompany
FROM Films
GROUP BY ProductionCompany
ORDER BY SUM(Budget) DESC
LIMIT 1;

-- 19. Correlated subquery: Films longer than their company’s avg duration
SELECT Title, DurationMinutes, ProductionCompany
FROM Films f1
WHERE DurationMinutes > (
    SELECT AVG(DurationMinutes)
    FROM Films f2
    WHERE f1.ProductionCompany = f2.ProductionCompany
);

-- 20. Films released after the latest film from Zee Studios
SELECT Title, ReleaseDate
FROM Films
WHERE ReleaseDate > (
    SELECT MAX(ReleaseDate) 
    FROM Films 
    WHERE ProductionCompany = 'Zee Studios'
);

-- 21. Films that share budget with any other film
SELECT Title, Budget
FROM Films
WHERE Budget IN (SELECT Budget FROM Films GROUP BY Budget HAVING COUNT(*) > 1);

-- 22. Films whose rating is unique
SELECT Title, Rating
FROM Films
WHERE Rating IN (
    SELECT Rating FROM Films GROUP BY Rating HAVING COUNT(*) = 1
);

-- 23. Films from companies having more than 2 films
SELECT Title, ProductionCompany
FROM Films
WHERE ProductionCompany IN (
    SELECT ProductionCompany
    FROM Films
    GROUP BY ProductionCompany
    HAVING COUNT(*) > 2
);

-- 24. Films with budget equal to max of their language
SELECT Title, Budget, Language
FROM Films f1
WHERE Budget = (
    SELECT MAX(Budget) 
    FROM Films f2 
    WHERE f1.Language = f2.Language
);

-- 25. Films whose budget is not the minimum of any language
SELECT Title, Budget
FROM Films f
WHERE Budget NOT IN (
    SELECT MIN(Budget) FROM Films GROUP BY Language
);

-- 26. Films where release date is older than average release year
SELECT Title, ReleaseDate
FROM Films
WHERE YEAR(ReleaseDate) < (
    SELECT AVG(YEAR(ReleaseDate)) FROM Films
);

-- 27. Films whose production company made a blockbuster (>1000 Cr)
SELECT Title, ProductionCompany
FROM Films
WHERE ProductionCompany IN (
    SELECT ProductionCompany FROM Films WHERE Budget > 1000000000
);

-- 28. Films having same duration as ‘Jawan’
SELECT Title, DurationMinutes
FROM Films
WHERE DurationMinutes = (
    SELECT DurationMinutes FROM Films WHERE Title = 'Jawan'
);

-- 29. Films released before the earliest film of ‘Red Chillies Entertainment’
SELECT Title, ReleaseDate
FROM Films
WHERE ReleaseDate < (
    SELECT MIN(ReleaseDate) FROM Films WHERE ProductionCompany = 'Red Chillies Entertainment'
);

-- 30. Films in top 5 highest budgets
SELECT Title, Budget
FROM Films
WHERE Budget IN (
    SELECT Budget FROM Films ORDER BY Budget DESC LIMIT 5
);

-- 31. Convert titles to uppercase
SELECT UPPER(Title) AS UpperTitle FROM Films;

-- 32. Find length of each film title
SELECT Title, LENGTH(Title) AS TitleLength FROM Films;

-- 33. Round budget into crores
SELECT Title, ROUND(Budget/10000000,2) AS BudgetInCrores FROM Films;

-- 34. Extract release year
SELECT Title, YEAR(ReleaseDate) AS ReleaseYear FROM Films;

-- 35. Find release day of week
SELECT Title, DAYNAME(ReleaseDate) AS ReleaseDay FROM Films;

-- 36. Count films per language
SELECT Language, COUNT(*) AS FilmCount FROM Films GROUP BY Language;

-- 37. Rank films by budget (highest first)
SELECT Title, Budget, RANK() OVER (ORDER BY Budget DESC) AS BudgetRank FROM Films;

-- 38. Running total of budget per company
SELECT Title, ProductionCompany, 
       SUM(Budget) OVER (PARTITION BY ProductionCompany ORDER BY ReleaseDate) AS RunningTotal
FROM Films;

-- 39. Replace spaces with underscores in film titles
SELECT REPLACE(Title, ' ', '_') AS ModifiedTitle FROM Films;

-- 40. Categorize films as Blockbuster (>1000 Cr) or Normal
SELECT Title, Budget,
       CASE WHEN Budget > 1000000000 THEN 'Blockbuster' ELSE 'Normal' END AS Category
FROM Films;

-- 41. Create UDF: Convert budget into Crores
CREATE FUNCTION BudgetInCrores(budget DECIMAL(12,2))
RETURNS DECIMAL(10,2)
RETURN budget / 10000000;

-- 42. Use BudgetInCrores UDF
SELECT Title, BudgetInCrores(Budget) AS BudgetCrores FROM Films;

-- 43. Create UDF: Categorize film as Long (>150 mins) or Short
CREATE FUNCTION FilmLengthCategory(duration INT)
RETURNS VARCHAR(10)
RETURN (CASE WHEN duration > 150 THEN 'Long' ELSE 'Short' END);

-- 44. Use FilmLengthCategory UDF
SELECT Title, FilmLengthCategory(DurationMinutes) AS LengthType FROM Films;

-- 45. Create UDF: Mask rating (e.g., UA -> *A)
CREATE FUNCTION MaskRating(rating VARCHAR(10))
RETURNS VARCHAR(10)
RETURN CONCAT('*', RIGHT(rating,1));

-- 46. Join + Window function: Rank films inside each company by budget
SELECT f.Title, f.Budget, pc.CompanyName,
       RANK() OVER (PARTITION BY pc.CompanyName ORDER BY f.Budget DESC) AS RankInCompany
FROM Films f
JOIN ProductionCompanies pc
ON f.ProductionCompany = pc.CompanyName;

-- 47. Subquery + Join: Films above company’s average budget
SELECT f.Title, f.Budget
FROM Films f
JOIN (
    SELECT ProductionCompany, AVG(Budget) AS AvgBudget
    FROM Films
    GROUP BY ProductionCompany
) t
ON f.ProductionCompany = t.ProductionCompany
WHERE f.Budget > t.AvgBudget;

-- 48. UDF + Built-in function together
SELECT Title, UPPER(Title) AS UpperName, BudgetInCrores(Budget) AS BudgetCrores
FROM Films;

-- 49. Nested subquery + built-in function
SELECT Title, ROUND(Budget / 10000000,2) AS BudgetCrores
FROM Films
WHERE Budget > (SELECT AVG(Budget) FROM Films);

-- 50. Final Complex: Join + Subquery + Window function
SELECT f.Title, f.Language, f.Budget,
       DENSE_RANK() OVER (PARTITION BY f.Language ORDER BY f.Budget DESC) AS RankInLang
FROM Films f
WHERE f.Budget > (
    SELECT AVG(Budget) 
    FROM Films 
    WHERE Language = f.Language
);



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


-- 1. INNER JOIN with a Films table (directors and their films)
SELECT d.Name, f.Title
FROM Directors d
INNER JOIN Films f ON d.DirectorID = f.DirectorID;

-- 2. LEFT JOIN (all directors, even if no films)
SELECT d.Name, f.Title
FROM Directors d
LEFT JOIN Films f ON d.DirectorID = f.DirectorID;

-- 3. RIGHT JOIN (all films, even if director missing)
SELECT d.Name, f.Title
FROM Directors d
RIGHT JOIN Films f ON d.DirectorID = f.DirectorID;

-- 4. FULL OUTER JOIN equivalent in MySQL
SELECT d.Name, f.Title
FROM Directors d
LEFT JOIN Films f ON d.DirectorID = f.DirectorID

UNION

SELECT d.Name, f.Title
FROM Directors d
RIGHT JOIN Films f ON d.DirectorID = f.DirectorID;


-- 5. Directors who directed films after 2010
SELECT d.Name, f.Title, f.ReleaseYear
FROM Directors d
JOIN Films f ON d.DirectorID = f.DirectorID
WHERE f.ReleaseYear > 2010;

-- 6. Directors specialized in Drama with their films
SELECT d.Name, f.Title
FROM Directors d
JOIN Films f ON d.DirectorID = f.DirectorID
WHERE d.Specialization LIKE '%Drama%';

-- 7. Directors with multiple films (GROUP BY + JOIN)
SELECT d.Name, COUNT(f.FilmID) AS FilmCount
FROM Directors d
JOIN Films f ON d.DirectorID = f.DirectorID
GROUP BY d.Name
HAVING COUNT(f.FilmID) > 1;

-- 8. Directors and their film budgets
SELECT d.Name, f.Title, f.Budget
FROM Directors d
JOIN Films f ON d.DirectorID = f.DirectorID;

-- 9. Directors and box office > 1000 Cr
SELECT d.Name, f.Title, f.BoxOffice
FROM Directors d
JOIN Films f ON d.DirectorID = f.DirectorID
WHERE f.BoxOffice > 10000000000;

-- 10. Directors and genres of their films
SELECT d.Name, f.Title, f.Genre
FROM Directors d
JOIN Films f ON d.DirectorID = f.DirectorID;

-- 11. Directors debut year vs first film release
SELECT d.Name, d.DebutYear, MIN(f.ReleaseYear) AS FirstFilm
FROM Directors d
JOIN Films f ON d.DirectorID = f.DirectorID
GROUP BY d.Name, d.DebutYear;

-- 12. Directors with at least one award-winning film (assuming Films has Awards)
SELECT DISTINCT d.Name
FROM Directors d
JOIN Films f ON d.DirectorID = f.DirectorID
WHERE f.BoxOffice > 1000000000;

-- 13. Directors with more awards than the average
SELECT Name, AwardsWon
FROM Directors
WHERE AwardsWon > (SELECT AVG(AwardsWon) FROM Directors);

-- 14. Director with maximum awards
SELECT Name
FROM Directors
WHERE AwardsWon = (SELECT MAX(AwardsWon) FROM Directors);

-- 15. Director with minimum experience
SELECT Name
FROM Directors
WHERE ExperienceYears = (SELECT MIN(ExperienceYears) FROM Directors);

-- 16. Directors whose debut year is before 2000
SELECT Name
FROM Directors
WHERE DebutYear < (SELECT MIN(DebutYear) FROM Directors WHERE ExperienceYears > 20);

-- 17. Directors who have at least 10 awards
SELECT Name
FROM Directors d
WHERE EXISTS (SELECT 1 FROM Directors WHERE d.AwardsWon >= 10);

-- 18. Count directors who directed films after 2015
SELECT COUNT(*)
FROM Directors
WHERE DirectorID IN (SELECT DirectorID FROM Films WHERE ReleaseYear > 2015);

-- 19. Find the top 3 directors by awards
SELECT Name, AwardsWon
FROM Directors d
WHERE AwardsWon IN (SELECT AwardsWon FROM Directors ORDER BY AwardsWon DESC LIMIT 3);

-- 20. Directors who directed same year as debut year
SELECT Name
FROM Directors d
WHERE DebutYear = (SELECT MIN(ReleaseYear) FROM Films WHERE DirectorID = d.DirectorID);

-- 21. Directors who never won awards
SELECT Name
FROM Directors
WHERE DirectorID NOT IN (SELECT DirectorID FROM Films WHERE BoxOffice > 100000000);

-- 22. Find directors who directed films with budget > average
SELECT Name
FROM Directors
WHERE DirectorID IN (SELECT DirectorID FROM Films WHERE Budget > (SELECT AVG(Budget) FROM Films));

-- 23. Directors with more than 2 films
SELECT Name
FROM Directors
WHERE DirectorID IN (SELECT DirectorID FROM Films GROUP BY DirectorID HAVING COUNT(*) > 2);

-- 24. Directors who directed films of same genre
SELECT DISTINCT d.Name
FROM Directors d
WHERE d.DirectorID IN (SELECT DirectorID FROM Films f GROUP BY f.Genre HAVING COUNT(DISTINCT f.Genre) = 1);


-- 25. String: Get domain of director emails
SELECT Name, SUBSTRING(Email, LOCATE('@', Email) + 1) AS Domain
FROM Directors;

-- 26. Math: Awards per year of experience
SELECT Name, ROUND(AwardsWon / ExperienceYears, 2) AS AwardsPerYear
FROM Directors;

-- 27. Aggregate: Average awards won
SELECT AVG(AwardsWon) AS AvgAwards FROM Directors;

-- 28. Aggregate: Max experience
SELECT MAX(ExperienceYears) FROM Directors;

-- 29. Aggregate: Total awards won by Indian directors
SELECT SUM(AwardsWon) FROM Directors WHERE Nationality = 'Indian';

-- 30. Count number of directors specialized in Drama
SELECT COUNT(*) FROM Directors WHERE Specialization LIKE '%Drama%';

-- 31. Directors with uppercase names
SELECT UPPER(Name) AS DirectorName FROM Directors;

-- 32. Lowercase email addresses
SELECT LOWER(Email) FROM Directors;

-- 33. Length of director names
SELECT Name, LENGTH(Name) AS NameLength FROM Directors;

-- 34. Find substring "Drama" in specialization
SELECT Name, Specialization, LOCATE('Drama', Specialization) AS DramaPos FROM Directors;

-- 35. Replace 'Drama' with 'Dramatic'
SELECT Name, REPLACE(Specialization, 'Drama', 'Dramatic') FROM Directors;

-- 36. Active years till 2025
SELECT Name, (2025 - DebutYear) AS ActiveYears FROM Directors;

-- 37. Round experience years / 5
SELECT Name, ROUND(ExperienceYears/5,0) AS ExperienceCategory FROM Directors;

-- 38. Awards ranking (dense_rank in PostgreSQL/MySQL 8+)
SELECT Name, AwardsWon,
       RANK() OVER (ORDER BY AwardsWon DESC) AS AwardRank
FROM Directors;

🔹 Section 4: User Defined Function (UDF) (12 Queries)
-- 39. Create UDF: Categorize by experience
DELIMITER $$
CREATE FUNCTION DirectorCategory(exp INT)
RETURNS VARCHAR(20)
DETERMINISTIC
BEGIN
    DECLARE category VARCHAR(20);
    IF exp < 10 THEN
        SET category = 'Beginner';
    ELSEIF exp BETWEEN 10 AND 20 THEN
        SET category = 'Intermediate';
    ELSE
        SET category = 'Veteran';
    END IF;
    RETURN category;
END $$
DELIMITER ;

-- 40. Use UDF for categorization
SELECT Name, ExperienceYears, DirectorCategory(ExperienceYears) AS Category
FROM Directors;

-- 41. Create UDF: Calculate years active
DELIMITER $$
CREATE FUNCTION YearsActive(debut INT)
RETURNS INT
DETERMINISTIC
BEGIN
    RETURN (2025 - debut);
END $$
DELIMITER ;

-- 42. Use UDF: Years active per director
SELECT Name, YearsActive(DebutYear) AS ActiveYears FROM Directors;

-- 43. UDF: Award efficiency (Awards per year)
DELIMITER $$
CREATE FUNCTION AwardEfficiency(awards INT, years INT)
RETURNS DECIMAL(5,2)
DETERMINISTIC
BEGIN
    RETURN awards / years;
END $$
DELIMITER ;

-- 44. Use UDF: Award efficiency
SELECT Name, AwardEfficiency(AwardsWon, ExperienceYears) AS Efficiency
FROM Directors;

-- 45. UDF: ShortName (first 3 letters)
DELIMITER $$
CREATE FUNCTION ShortName(n VARCHAR(100))
RETURNS VARCHAR(10)
DETERMINISTIC
BEGIN
    RETURN SUBSTRING(n,1,3);
END $$
DELIMITER ;

-- 46. Use UDF
SELECT Name, ShortName(Name) FROM Directors;

-- 47. UDF: HighAwardDirector (boolean if > 10 awards)
DELIMITER $$
CREATE FUNCTION HighAwardDirector(awards INT)
RETURNS VARCHAR(5)
DETERMINISTIC
BEGIN
    IF awards > 10 THEN
        RETURN 'YES';
    ELSE
        RETURN 'NO';
    END IF;
END $$
DELIMITER ;

-- 48. Use UDF
SELECT Name, HighAwardDirector(AwardsWon) FROM Directors;

-- 49. Combine UDF with joins
SELECT d.Name, f.Title, DirectorCategory(d.ExperienceYears) AS Category
FROM Directors d
JOIN Films f ON d.DirectorID = f.DirectorID;

-- 50. UDF + Built-in
SELECT Name, ShortName(Name), UPPER(Specialization)
FROM Directors;



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

-- 1. Retrieve all actors
SELECT * FROM Actors;

-- 2. List only names and debut years of actors
SELECT Name, DebutYear FROM Actors;

-- 3. Find distinct agencies
SELECT DISTINCT Agency FROM Actors;

-- 4. Count total actors
SELECT COUNT(*) AS TotalActors FROM Actors;

-- 5. Find all female actors
SELECT * FROM Actors WHERE Gender = 'Female';

-- 6. Find youngest actor
SELECT Name, MIN(DateOfBirth) AS Youngest FROM Actors;

-- 7. Find oldest actor
SELECT Name, MAX(DateOfBirth) AS Oldest FROM Actors;

-- 8. Average awards won
SELECT AVG(AwardsWon) AS AvgAwards FROM Actors;

-- 9. Total awards won
SELECT SUM(AwardsWon) AS TotalAwards FROM Actors;

-- 10. Find actors with more than 15 awards
SELECT Name, AwardsWon FROM Actors WHERE AwardsWon > 15;

-- 11. Extract year of birth
SELECT Name, YEAR(DateOfBirth) AS BirthYear FROM Actors;

-- 12. Find actors whose name starts with 'A'
SELECT Name FROM Actors WHERE Name LIKE 'A%';

-- 13. Length of each actor’s name
SELECT Name, LENGTH(Name) AS NameLength FROM Actors;

-- 14. Convert names to uppercase
SELECT UPPER(Name) AS UpperName FROM Actors;

-- 15. Round average awards won
SELECT ROUND(AVG(AwardsWon), 2) AS RoundedAvgAwards FROM Actors;

CREATE TABLE Films (
    FilmID INT PRIMARY KEY,
    Title VARCHAR(100),
    ReleaseYear INT,
    Genre VARCHAR(50),
    ActorID INT,
    FOREIGN KEY (ActorID) REFERENCES Actors(ActorID)
);

-- 16. Inner join actors with films
SELECT a.Name, f.Title 
FROM Actors a 
INNER JOIN Films f ON a.ActorID = f.ActorID;

-- 17. Left join actors with films (actors without films included)
SELECT a.Name, f.Title 
FROM Actors a 
LEFT JOIN Films f ON a.ActorID = f.ActorID;

-- 18. Right join (films without actors included)
SELECT a.Name, f.Title 
FROM Actors a 
RIGHT JOIN Films f ON a.ActorID = f.ActorID;

-- 19. Actors who worked in more than 1 film
SELECT a.Name, COUNT(f.FilmID) AS FilmCount
FROM Actors a 
JOIN Films f ON a.ActorID = f.ActorID
GROUP BY a.Name HAVING COUNT(f.FilmID) > 1;

-- 20. Full Outer Join equivalent in MySQL
SELECT a.Name, f.Title
FROM Actors a
LEFT JOIN Films f ON a.ActorID = f.ActorID

UNION

SELECT a.Name, f.Title
FROM Actors a
RIGHT JOIN Films f ON a.ActorID = f.ActorID;


-- 21. List films with actor debut year
SELECT f.Title, a.DebutYear 
FROM Films f
JOIN Actors a ON f.ActorID = a.ActorID;

-- 22. List actors and film genres
SELECT a.Name, f.Genre 
FROM Actors a
JOIN Films f ON a.ActorID = f.ActorID;

-- 23. Find actors who acted in films released after 2010
SELECT a.Name, f.Title 
FROM Actors a 
JOIN Films f ON a.ActorID = f.ActorID
WHERE f.ReleaseYear > 2010;

-- 24. Actors and count of genres they acted in
SELECT a.Name, COUNT(DISTINCT f.Genre) AS GenreCount
FROM Actors a
JOIN Films f ON a.ActorID = f.ActorID
GROUP BY a.Name;

-- 25. Actors with no films (using LEFT JOIN + IS NULL)
SELECT a.Name 
FROM Actors a 
LEFT JOIN Films f ON a.ActorID = f.ActorID
WHERE f.FilmID IS NULL;

-- 26. Find actors with max awards
SELECT Name 
FROM Actors
WHERE AwardsWon = (SELECT MAX(AwardsWon) FROM Actors);

-- 27. Actors who debuted before Amitabh Bachchan
SELECT Name FROM Actors
WHERE DebutYear < (SELECT DebutYear FROM Actors WHERE Name = 'Amitabh Bachchan');

-- 28. Actors older than average age
SELECT Name FROM Actors
WHERE DateOfBirth < (SELECT AVG(DateOfBirth) FROM Actors);

-- 29. Agencies managing more than 1 actor
SELECT Agency FROM Actors
GROUP BY Agency HAVING COUNT(*) > 1;

-- 30. Actors with awards more than average
SELECT Name FROM Actors
WHERE AwardsWon > (SELECT AVG(AwardsWon) FROM Actors);

-- 31. Top 3 actors with most awards
SELECT Name FROM Actors
ORDER BY AwardsWon DESC
LIMIT 3;

-- 32. Actor(s) who debuted earliest
SELECT Name FROM Actors
WHERE DebutYear = (SELECT MIN(DebutYear) FROM Actors);

-- 33. Actors with same debut year as Alia Bhatt
SELECT Name FROM Actors
WHERE DebutYear = (SELECT DebutYear FROM Actors WHERE Name = 'Alia Bhatt');

-- 34. List actors not in any agency (NULL check)
SELECT Name FROM Actors
WHERE Agency IS NULL;

-- 35. Actors who worked in films of the same genre as 'Dilwale Dulhania Le Jayenge'
SELECT Name FROM Actors
WHERE ActorID IN (
    SELECT ActorID FROM Films WHERE Genre = 
    (SELECT Genre FROM Films WHERE Title = 'Dilwale Dulhania Le Jayenge')
);

-- 36. Function to calculate age in MySQL
DELIMITER //

CREATE FUNCTION GetActorAge(dob DATE)
RETURNS INT
DETERMINISTIC
BEGIN
    RETURN TIMESTAMPDIFF(YEAR, dob, CURDATE());
END //

DELIMITER ;

DELIMITER //

-- 38. Function to return award category
DELIMITER //

CREATE FUNCTION AwardLevel(awards INT)
RETURNS VARCHAR(20)
DETERMINISTIC
BEGIN
    DECLARE level_name VARCHAR(20);

    IF awards >= 15 THEN
        SET level_name = 'Superstar';
    ELSEIF awards >= 10 THEN
        SET level_name = 'Star';
    ELSE
        SET level_name = 'Rising';
    END IF;

    RETURN level_name;
END //

DELIMITER ;

--  Usage
SELECT Name, AwardLevel(AwardsWon) AS AwardCategory
FROM Actors;


-- 39. Window function: rank actors by awards
SELECT Name, AwardsWon, RANK() OVER (ORDER BY AwardsWon DESC) AS RankPosition
FROM Actors;

-- 40. Find average awards by gender
SELECT Gender, AVG(AwardsWon) AS AvgAwards FROM Actors GROUP BY Gender;

-- 41. CTE: actors who debuted after 2010
WITH RecentActors AS (
    SELECT * FROM Actors WHERE DebutYear > 2010
)
SELECT * FROM RecentActors;

-- 42. Actors grouped by decade of debut
SELECT (DebutYear/10)*10 AS DebutDecade, COUNT(*) AS ActorCount
FROM Actors
GROUP BY (DebutYear/10)*10;

-- 43. Actors whose email contains their name
SELECT Name, Email FROM Actors
WHERE Email LIKE CONCAT('%', LOWER(REPLACE(Name, ' ', '')), '%');


-- 44. Create a view for top 5 award-winning actors
CREATE VIEW TopActors AS
SELECT Name, AwardsWon FROM Actors
ORDER BY AwardsWon DESC LIMIT 5;

-- 45. Select from view
SELECT * FROM TopActors;

-- 46. Grant select permission on Actors to user 'student'
GRANT SELECT ON Actors TO student;

-- 47. Revoke permission
REVOKE SELECT ON Actors FROM student;

-- 48. Start transaction
BEGIN;
UPDATE Actors SET AwardsWon = AwardsWon + 1 WHERE Name = 'Deepika Padukone';
ROLLBACK; -- undo

-- 49. Commit example
BEGIN;
UPDATE Actors SET AwardsWon = AwardsWon + 1 WHERE Name = 'Amitabh Bachchan';
COMMIT;

-- 50. Create view as synonym replacement
CREATE VIEW Act AS SELECT * FROM Actors;

-- Use it
SELECT * FROM Act;


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

-- 1. INNER JOIN: list films and their studio names (only matching rows)
SELECT f.FilmID, f.Title, s.Name AS StudioName
FROM Films f
INNER JOIN Studios s ON f.StudioID = s.StudioID;

-- 2. LEFT JOIN: show all studios and any films they host (studios without films included)
SELECT s.StudioID, s.Name AS StudioName, f.Title AS FilmTitle
FROM Studios s
LEFT JOIN Films f ON s.StudioID = f.StudioID;

-- 3. RIGHT JOIN: show all films and studio info when available (MySQL/Postgres; SQLite doesn't support RIGHT JOIN)
SELECT f.Title, s.Name AS StudioName
FROM Films f
RIGHT JOIN Studios s ON f.StudioID = s.StudioID;

-- 4. FULL OUTER JOIN emulation for engines that don't support FULL JOIN (MySQL / SQLite)
-- (use UNION of LEFT and RIGHT joins to emulate FULL OUTER JOIN)
SELECT s.StudioID, s.Name AS StudioName, f.Title AS FilmTitle
FROM Studios s
LEFT JOIN Films f ON s.StudioID = f.StudioID
UNION
SELECT s.StudioID, s.Name AS StudioName, f.Title AS FilmTitle
FROM Studios s
RIGHT JOIN Films f ON s.StudioID = f.StudioID;

-- 5. Self JOIN: find pairs of studios in the same Location (avoid duplicate pairs)
SELECT a.Name AS StudioA, b.Name AS StudioB, a.Location
FROM Studios a
JOIN Studios b ON a.Location = b.Location AND a.StudioID < b.StudioID;

-- 6. CROSS JOIN: all combinations of studios and films (useful for planning)
SELECT s.Name AS StudioName, f.Title AS FilmTitle
FROM Studios s
CROSS JOIN Films f
LIMIT 100; -- limit to avoid huge result set

-- 7. JOIN + WHERE: available studios in Mumbai with capacity > 200
SELECT s.Name, s.Location, s.Capacity
FROM Studios s
WHERE s.AvailabilityStatus = 'Available' AND s.Location LIKE '%Mumbai%' AND s.Capacity > 200;

-- 8. JOIN + AGGREGATE: count films produced at each studio
SELECT s.Name AS StudioName, COUNT(f.FilmID) AS NumberOfFilms
FROM Studios s
LEFT JOIN Films f ON s.StudioID = f.StudioID
GROUP BY s.Name
ORDER BY NumberOfFilms DESC;

-- 9. JOIN + HAVING: studios with more than 3 films
SELECT s.Name, COUNT(f.FilmID) AS FilmCount
FROM Studios s
JOIN Films f ON s.StudioID = f.StudioID
GROUP BY s.Name
HAVING COUNT(f.FilmID) > 3;

-- 10. JOIN + STRING FUNC: uppercase studio names that hosted films after 2020
SELECT UPPER(s.Name) AS StudioName, f.Title, f.ReleaseYear
FROM Studios s
JOIN Films f ON s.StudioID = f.StudioID
WHERE f.ReleaseYear > 2020;

-- 11. JOIN + MULTI-TABLE: list studio, film and director (assumes Directors table exists)
SELECT s.Name AS Studio, f.Title AS Film, d.Name AS Director
FROM Films f
JOIN Studios s ON f.StudioID = s.StudioID
LEFT JOIN Directors d ON f.DirectorID = d.DirectorID;

-- 12. JOIN + DISTINCT: list distinct studio locations that hosted action films
SELECT DISTINCT s.Location
FROM Studios s
JOIN Films f ON s.StudioID = f.StudioID
WHERE f.Genre LIKE '%Action%';

-- 13. JOIN + TOP/N (MySQL uses LIMIT): top 3 studios by number of films
SELECT s.Name, COUNT(f.FilmID) AS FilmCount
FROM Studios s
LEFT JOIN Films f ON s.StudioID = f.StudioID
GROUP BY s.StudioID, s.Name
ORDER BY FilmCount DESC
LIMIT 3;

-- 14. JOIN + FILTER on facilities (find studios with 'VFX' or 'post-production')
SELECT s.Name, s.Facilities
FROM Studios s
WHERE s.Facilities LIKE '%post-production%' OR s.Facilities LIKE '%VFX%';

-- 15. JOIN + complex condition: films whose studio capacity is less than film crew size (assumes Films.CrewSize)
SELECT f.Title, s.Name, s.Capacity, f.CrewSize
FROM Films f
JOIN Studios s ON f.StudioID = s.StudioID
WHERE f.CrewSize > s.Capacity;

-- 16. Subquery: Studios with area greater than the average area
SELECT Name, AreaSqFt
FROM Studios
WHERE AreaSqFt > (SELECT AVG(AreaSqFt) FROM Studios);

-- 17. Subquery (IN): Studios located in the same city as 'Yash Raj Studios'
SELECT Name, Location
FROM Studios
WHERE Location IN (
  SELECT Location FROM Studios WHERE Name = 'Yash Raj Studios'
);

-- 18. Correlated subquery: Studios that have more films than the studio average
SELECT s.Name, (SELECT COUNT(*) FROM Films f WHERE f.StudioID = s.StudioID) AS FilmCount
FROM Studios s
WHERE (SELECT COUNT(*) FROM Films f WHERE f.StudioID = s.StudioID)
      > (SELECT AVG(cnt) FROM (SELECT COUNT(*) AS cnt FROM Films GROUP BY StudioID) AS counts);

-- 19. EXISTS: studios that have at least one film released after 2020
SELECT s.Name
FROM Studios s
WHERE EXISTS (
  SELECT 1 FROM Films f WHERE f.StudioID = s.StudioID AND f.ReleaseYear > 2020
);

-- 20. NOT EXISTS: studios with no films recorded
SELECT s.Name, s.Location
FROM Studios s
WHERE NOT EXISTS (SELECT 1 FROM Films f WHERE f.StudioID = s.StudioID);

-- 21. Subquery + aggregation: studio(s) with maximum number of films
SELECT Name
FROM Studios
WHERE StudioID IN (
  SELECT StudioID
  FROM Films
  GROUP BY StudioID
  ORDER BY COUNT(*) DESC
  LIMIT 1
);

-- 22. Nested subqueries: studios that hosted films with budget above overall avg
SELECT DISTINCT s.Name
FROM Studios s
JOIN Films f ON s.StudioID = f.StudioID
WHERE f.Budget > (SELECT AVG(Budget) FROM Films);

-- 24. Use IN with GROUP: agencies/studios with multiple availability statuses (example)
SELECT Location
FROM Studios
GROUP BY Location
HAVING COUNT(DISTINCT AvailabilityStatus) > 1;

-- 25. Subquery: Studios whose area equals the max area
SELECT Name, AreaSqFt
FROM Studios
WHERE AreaSqFt = (SELECT MAX(AreaSqFt) FROM Studios);

-- 26. Correlated subquery: find studios that host more films than any studio in Chennai
SELECT Name
FROM Studios s1
WHERE (SELECT COUNT(*) FROM Films f WHERE f.StudioID = s1.StudioID)
    > (SELECT MAX(cnt) FROM (SELECT COUNT(*) AS cnt FROM Films f JOIN Studios s2 ON f.StudioID = s2.StudioID WHERE s2.Location LIKE '%Chennai%' GROUP BY f.StudioID) AS t);

-- 27. Subquery + LIKE: studios with facilities similar to 'green screen'
SELECT Name, Facilities
FROM Studios
WHERE Facilities LIKE '%' || 'green screen' || '%' -- for ANSI SQL; replace with CONCAT or + depending on DB
  OR Facilities LIKE '%green screen%';

-- 28. Use IN to find studios that appear in a list of busy studio names
SELECT Name, AvailabilityStatus
FROM Studios
WHERE Name IN ('Ramoji Film City','Film City Goregaon','Balaji Telefilms Studio');

-- 29. Subquery for comparison: studios whose capacity is above the average capacity of studios in same city
SELECT s.Name, s.Capacity, s.Location
FROM Studios s
WHERE s.Capacity > (
    SELECT AVG(s2.Capacity) FROM Studios s2 WHERE s2.Location = s.Location
);

-- 30. Subquery to find studios that became available after maintenance (assumes StatusChangeHistory table)
-- Example showing how subqueries connect to history/log tables (pseudo)
SELECT s.Name
FROM Studios s
WHERE s.AvailabilityStatus = 'Available'
  AND s.StudioID IN (
    SELECT StudioID FROM StatusHistory WHERE NewStatus = 'Available' AND ChangedAt > '2025-01-01'
  );

-- 31. String functions: extract email domain (MySQL syntax)
SELECT Name, SUBSTRING_INDEX(Email, '@', -1) AS EmailDomain FROM Studios;

-- 32. Numeric functions: studios area in acres (1 acre = 43560 sq ft) rounded to 2 decimals
SELECT Name, ROUND(AreaSqFt / 43560.0, 2) AS AreaInAcres FROM Studios;

-- 33. Date math: years since debut (if a CreatedYear existed); here example of using current year
SELECT Name, (YEAR(CURDATE())) - 2025 + 0 AS YearsPlaceholder; -- replace with real column if available

-- 34. Aggregate: average capacity of available studios
SELECT AVG(Capacity) AS AvgAvailableCapacity
FROM Studios
WHERE AvailabilityStatus = 'Available';

-- 35. COUNT with FILTER: number of booked vs available studios (Postgres style) — portable version:
SELECT AvailabilityStatus, COUNT(*) AS CountByStatus
FROM Studios
GROUP BY AvailabilityStatus;

-- 36. Window function: rank studios by AreaSqFt (requires MySQL 8+/Postgres/SQL Server)
SELECT StudioID, Name, AreaSqFt,
       RANK() OVER (ORDER BY AreaSqFt DESC) AS AreaRank
FROM Studios;

-- 37. CASE expression: categorize studios by size
SELECT Name, AreaSqFt,
  CASE
    WHEN AreaSqFt >= 200000 THEN 'Mega'
    WHEN AreaSqFt >= 50000 THEN 'Large'
    WHEN AreaSqFt >= 30000 THEN 'Medium'
    ELSE 'Small'
  END AS SizeCategory
FROM Studios;

-- 38. REPLACE/LOWER: normalize contact person names
SELECT Name, LOWER(REPLACE(ContactPerson, '  ', ' ')) AS ContactNormalized FROM Studios;

-- 39. CONCAT: human-readable contact summary
SELECT Name, CONCAT(Name, ' — ', Location, ' (Contact: ', ContactPerson, ')') AS ContactSummary
FROM Studios;

-- 40. JSON/text search (if your DB supports JSON): check for 'editing' in Facilities (here simple LIKE)
SELECT Name, Facilities
FROM Studios
WHERE LOWER(Facilities) LIKE '%edit%'; -- finds 'editing', 'edit', 'editor' etc.
Section D — User Defined Functions (UDFs) (41–46)
Below are MySQL style functions (DELIMITER blocks). If you use Postgres or SQL Server, I can convert them — tell me which DB.


-- 41. UDF: categorize studio size by area (MySQL)
DELIMITER $$
CREATE FUNCTION StudioSizeCategory(area INT)
RETURNS VARCHAR(20)
DETERMINISTIC
BEGIN
  DECLARE cat VARCHAR(20);
  IF area >= 200000 THEN
    SET cat = 'Mega';
  ELSEIF area >= 50000 THEN
    SET cat = 'Large';
  ELSEIF area >= 30000 THEN
    SET cat = 'Medium';
  ELSE
    SET cat = 'Small';
  END IF;
  RETURN cat;
END$$
DELIMITER ;

-- 42. Use StudioSizeCategory UDF
SELECT Name, AreaSqFt, StudioSizeCategory(AreaSqFt) AS SizeCategory FROM Studios;

-- 43. UDF: simple availability boolean (returns 'YES'/'NO') (MySQL)
DELIMITER $$
CREATE FUNCTION IsAvailable(status VARCHAR(20))
RETURNS VARCHAR(3)
DETERMINISTIC
BEGIN
  IF status = 'Available' THEN
    RETURN 'YES';
  ELSE
    RETURN 'NO';
  END IF;
END$$
DELIMITER ;

-- 44. Use IsAvailable UDF
SELECT Name, AvailabilityStatus, IsAvailable(AvailabilityStatus) AS IsAvailableFlag FROM Studios;

-- 45. UDF: extract domain from email (MySQL)
DELIMITER $$
CREATE FUNCTION EmailDomain(email VARCHAR(255))
RETURNS VARCHAR(255)
DETERMINISTIC
BEGIN
  RETURN SUBSTRING_INDEX(email, '@', -1);
END$$
DELIMITER ;

-- 46. Use EmailDomain UDF to group by domain
SELECT EmailDomain(Email) AS Domain, COUNT(*) AS StudiosCount
FROM Studios
GROUP BY Domain
ORDER BY StudiosCount DESC;

-- 47. Complex: available studios with at least one film budget > avg film budget, ranked by capacity
SELECT s.Name, s.Location, s.Capacity,
       RANK() OVER (ORDER BY s.Capacity DESC) AS CapacityRank
FROM Studios s
WHERE s.AvailabilityStatus = 'Available'
  AND EXISTS (
    SELECT 1 FROM Films f WHERE f.StudioID = s.StudioID AND f.Budget > (SELECT AVG(Budget) FROM Films)
  );

-- 48. Combined aggregate: average box office of films per studio and show only top 5 studios
SELECT s.Name, COUNT(f.FilmID) AS FilmCount, ROUND(AVG(f.BoxOffice)/10000000,2) AS AvgBoxOfficeCrores
FROM Studios s
JOIN Films f ON s.StudioID = f.StudioID
GROUP BY s.StudioID, s.Name
HAVING COUNT(f.FilmID) > 0
ORDER BY AvgBoxOfficeCrores DESC
LIMIT 5;

-- 49. CTE + window: for each city, show the highest-capacity studio and its booking status (Postgres/MySQL 8+/SQL Server)
WITH CityStudios AS (
  SELECT Location, StudioID, Name, Capacity,
         ROW_NUMBER() OVER (PARTITION BY Location ORDER BY Capacity DESC) AS rn
  FROM Studios
)
SELECT Location, Name AS TopStudio, Capacity, (SELECT COUNT(*) FROM Films f WHERE f.StudioID = CityStudios.StudioID) AS FilmsHosted
FROM CityStudios
WHERE rn = 1;

-- 50. Final: update availability status for small idle studios (transaction example)
-- Start transaction, update, then show revert/commit example (SQL Server/MySQL)
BEGIN;
UPDATE Studios
SET AvailabilityStatus = 'Under Maintenance'
WHERE AreaSqFt < 35000 AND AvailabilityStatus = 'Available';

-- Check changes
SELECT Name, AreaSqFt, AvailabilityStatus FROM Studios WHERE AreaSqFt < 35000;

-- If OK, COMMIT; otherwise ROLLBACK
-- COMMIT;
-- ROLLBACK;



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

-- 1. Select all crew members
SELECT * FROM CrewMembers;

-- 2. Find crew members with more than 10 years of experience
SELECT Name, Role, ExperienceYears
FROM CrewMembers
WHERE ExperienceYears > 10;

-- 3. List only female crew members in Makeup department
SELECT Name, Role
FROM CrewMembers
WHERE Gender = 'Female' AND Department = 'Makeup';

-- 4. Count total crew members
SELECT COUNT(*) AS TotalCrew FROM CrewMembers;

-- 5. Find crew members who joined after 2015
SELECT Name, Role, JoiningDate
FROM CrewMembers
WHERE JoiningDate > '2015-01-01';

-- 6. Sort crew members by experience descending
SELECT Name, Role, ExperienceYears
FROM CrewMembers
ORDER BY ExperienceYears DESC;

-- 7. Find crew members with phone numbers ending in '5'
SELECT Name, Phone
FROM CrewMembers
WHERE Phone LIKE '%5';

-- 8. Group by department and count members
SELECT Department, COUNT(*) AS Members
FROM CrewMembers
GROUP BY Department;

-- 9. Find maximum experience among crew
SELECT MAX(ExperienceYears) AS MaxExperience FROM CrewMembers;

-- 10. Find average years of experience
SELECT AVG(ExperienceYears) AS AvgExperience FROM CrewMembers;

-- 11. INNER JOIN with a Departments table
-- (Assume Departments(DeptID, DeptName, Head))
SELECT c.Name, c.Role, d.Head
FROM CrewMembers c
INNER JOIN Departments d ON c.Department = d.DeptName;

-- 12. LEFT JOIN with Films table
-- (Assume Films(FilmID, Title, Department))
SELECT c.Name, f.Title
FROM CrewMembers c
LEFT JOIN Films f ON c.Department = f.Department;

-- 13. RIGHT JOIN with Projects table
-- (Assume Projects(ProjectID, ProjectName, Dept))
SELECT p.ProjectName, c.Name
FROM CrewMembers c
RIGHT JOIN Projects p ON c.Department = p.Dept;


-- 15. SELF JOIN: Mentor-Mentee example
SELECT a.Name AS Senior, b.Name AS Junior
FROM CrewMembers a
JOIN CrewMembers b
ON a.Department = b.Department AND a.ExperienceYears > b.ExperienceYears;

-- 16. CROSS JOIN (all combinations of Crew and Films)
SELECT c.Name, f.Title
FROM CrewMembers c
CROSS JOIN Films f;

-- 17. JOIN with condition on Gender
SELECT c.Name, d.DeptName
FROM CrewMembers c
JOIN Departments d ON c.Department = d.DeptName
WHERE c.Gender = 'Male';

-- 18. Aggregation with JOIN
SELECT d.DeptName, COUNT(c.CrewID) AS CrewCount
FROM Departments d
LEFT JOIN CrewMembers c ON c.Department = d.DeptName
GROUP BY d.DeptName;

-- 19. JOIN with ORDER BY
SELECT c.Name, p.ProjectName
FROM CrewMembers c
JOIN Projects p ON c.Department = p.Dept
ORDER BY p.ProjectName;

-- 20. JOIN with multiple conditions
SELECT c.Name, f.Title
FROM CrewMembers c
JOIN Films f ON c.Department = f.Department AND c.Status = 'Active';

-- 21. Scalar Subquery: Crew with experience > avg
SELECT Name, ExperienceYears
FROM CrewMembers
WHERE ExperienceYears > (SELECT AVG(ExperienceYears) FROM CrewMembers);

-- 22. Subquery with IN: Crew in departments with more than 2 members
SELECT Name, Department
FROM CrewMembers
WHERE Department IN (
    SELECT Department
    FROM CrewMembers
    GROUP BY Department
    HAVING COUNT(*) > 2
);

-- 23. Correlated Subquery: Find most experienced in each department
SELECT Name, Department, ExperienceYears
FROM CrewMembers c
WHERE ExperienceYears = (
    SELECT MAX(ExperienceYears)
    FROM CrewMembers
    WHERE Department = c.Department
);

-- 24. EXISTS subquery: List crew if department exists in Projects
SELECT Name, Department
FROM CrewMembers c
WHERE EXISTS (
    SELECT 1 FROM Projects p WHERE p.Dept = c.Department
);

-- 25. Subquery in SELECT list: Rank by experience
SELECT Name,
       ExperienceYears,
       (SELECT COUNT(*) FROM CrewMembers WHERE ExperienceYears > c.ExperienceYears) + 1 AS RankByExp
FROM CrewMembers c;

-- 26. Subquery with NOT IN: Crew not assigned to any project
SELECT Name
FROM CrewMembers
WHERE Department NOT IN (SELECT Dept FROM Projects);

-- 27. Subquery with ANY
SELECT Name, ExperienceYears
FROM CrewMembers
WHERE ExperienceYears > ANY (SELECT ExperienceYears FROM CrewMembers WHERE Department='Makeup');

-- 28. Subquery with ALL
SELECT Name, ExperienceYears
FROM CrewMembers
WHERE ExperienceYears > ALL (SELECT ExperienceYears FROM CrewMembers WHERE Department='Sound');

-- 29. Nested Subquery: Get top 3 experienced members
SELECT Name, ExperienceYears
FROM CrewMembers
WHERE ExperienceYears IN (
  SELECT ExperienceYears
  FROM CrewMembers
  ORDER BY ExperienceYears DESC
  LIMIT 3
);

-- 30. Multi-row Subquery: Get all costume dept members with > avg experience of costume dept
SELECT Name, Department, ExperienceYears
FROM CrewMembers c
WHERE Department='Costume' AND ExperienceYears > (
    SELECT AVG(ExperienceYears) FROM CrewMembers WHERE Department='Costume'
);

-- 31. Built-in Function: UPPER
SELECT UPPER(Name) AS UpperCaseName FROM CrewMembers;

-- 32. LOWER
SELECT LOWER(Email) AS LowerCaseEmail FROM CrewMembers;

-- 33. LENGTH
SELECT Name, LENGTH(Name) AS NameLength FROM CrewMembers;

-- 34. SUBSTRING
SELECT Name, SUBSTRING(Email, 1, 5) AS EmailPrefix FROM CrewMembers;

-- 35. CONCAT
SELECT CONCAT(Name, ' - ', Role) AS CrewInfo FROM CrewMembers;

-- 36. REPLACE
SELECT REPLACE(Email, '.com', '.org') AS UpdatedEmail FROM CrewMembers;

-- 37. ROUND
SELECT Name, ROUND(ExperienceYears/2.0, 1) AS HalfExperience FROM CrewMembers;

-- 38. DATE_FORMAT (MySQL)
SELECT Name, DATE_FORMAT(JoiningDate, '%Y-%m') AS JoinMonth FROM CrewMembers;

-- 39. YEAR
SELECT Name, YEAR(JoiningDate) AS JoinYear FROM CrewMembers;

-- 40. Window Function: RANK by experience
SELECT Name, Department, ExperienceYears,
       RANK() OVER (PARTITION BY Department ORDER BY ExperienceYears DESC) AS RankInDept
FROM CrewMembers;


-- 41. UDF: Calculate bonus based on experience (MySQL example)
DELIMITER //
CREATE FUNCTION GetBonus(exp INT)
RETURNS INT
DETERMINISTIC
BEGIN
  RETURN exp * 1000;
END//
DELIMITER ;

-- 42. Use UDF GetBonus
SELECT Name, ExperienceYears, GetBonus(ExperienceYears) AS Bonus
FROM CrewMembers;

-- 43. UDF: Categorize experience
DELIMITER //
CREATE FUNCTION ExpCategory(exp INT)
RETURNS VARCHAR(20)
DETERMINISTIC
BEGIN
  IF exp < 5 THEN RETURN 'Junior';
  ELSEIF exp BETWEEN 5 AND 10 THEN RETURN 'Mid-Level';
  ELSE RETURN 'Senior';
  END IF;
END//
DELIMITER ;

-- 44. Use ExpCategory
SELECT Name, ExperienceYears, ExpCategory(ExperienceYears) AS Category
FROM CrewMembers;

-- 45. UDF: Calculate years since joining
DELIMITER //
CREATE FUNCTION YearsSinceJoin(joinDate DATE)
RETURNS INT
DETERMINISTIC
BEGIN
  RETURN TIMESTAMPDIFF(YEAR, joinDate, CURDATE());
END//
DELIMITER ;

-- 46. Use YearsSinceJoin
SELECT Name, JoiningDate, YearsSinceJoin(JoiningDate) AS YearsWorked
FROM CrewMembers;

-- 47. UDF: Mask phone number
DELIMITER //
CREATE FUNCTION MaskPhone(phone VARCHAR(20))
RETURNS VARCHAR(20)
DETERMINISTIC
BEGIN
  RETURN CONCAT('******', RIGHT(phone, 4));
END//
DELIMITER ;

-- 48. Use MaskPhone
SELECT Name, Phone, MaskPhone(Phone) AS SecurePhone
FROM CrewMembers;

-- 49. UDF: Active check
DELIMITER //
CREATE FUNCTION IsActive(status VARCHAR(20))
RETURNS BOOLEAN
DETERMINISTIC
BEGIN
  RETURN status = 'Active';
END//
DELIMITER ;

-- 50. Use IsActive
SELECT Name, Status, IsActive(Status) AS IsCurrentlyActive
FROM CrewMembers;


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

-- 1. Select all production companies
SELECT * FROM ProductionCompanies;

-- 2. Find companies founded before 1980
SELECT Name, FoundedYear
FROM ProductionCompanies
WHERE FoundedYear < 1980;

-- 3. Count total active companies
SELECT COUNT(*) AS ActiveCompanies
FROM ProductionCompanies
WHERE Status = 'Active';

-- 4. Find companies producing more than 80 films
SELECT Name, TotalFilmsProduced
FROM ProductionCompanies
WHERE TotalFilmsProduced > 80;

-- 5. Sort companies by number of films produced (descending)
SELECT Name, TotalFilmsProduced
FROM ProductionCompanies
ORDER BY TotalFilmsProduced DESC;

-- 6. Get companies specializing in Drama or Action
SELECT Name, GenreSpecialization
FROM ProductionCompanies
WHERE GenreSpecialization IN ('Drama', 'Action');

-- 7. Count companies by headquarters city
SELECT Headquarters, COUNT(*) AS CompanyCount
FROM ProductionCompanies
GROUP BY Headquarters;

-- 8. Find the oldest company
SELECT Name, FoundedYear
FROM ProductionCompanies
ORDER BY FoundedYear ASC
LIMIT 1;

-- 9. Average films produced by active companies
SELECT AVG(TotalFilmsProduced) AS AvgFilmsActive
FROM ProductionCompanies
WHERE Status='Active';

-- 10. Distinct genres covered
SELECT DISTINCT GenreSpecialization
FROM ProductionCompanies;

-- 11. INNER JOIN with Films table (assume Films has ProductionCompany column)
SELECT f.Title, p.Name AS ProductionHouse
FROM Films f
INNER JOIN ProductionCompanies p
ON f.ProductionCompany = p.Name;

-- 12. LEFT JOIN with CrewMembers (assume Crew has Department matching company Genre)
SELECT p.Name, c.Name AS CrewMember, c.Role
FROM ProductionCompanies p
LEFT JOIN CrewMembers c ON p.GenreSpecialization = c.Department;

-- 13. RIGHT JOIN with Films
SELECT f.Title, p.Name
FROM Films f
RIGHT JOIN ProductionCompanies p ON f.ProductionCompany = p.Name;

-- 15. SELF JOIN: Compare older vs newer companies
SELECT a.Name AS OlderCompany, b.Name AS NewerCompany
FROM ProductionCompanies a
JOIN ProductionCompanies b
ON a.FoundedYear < b.FoundedYear;

-- 16. CROSS JOIN with Genres table (assume Genres table exists)
SELECT p.Name, g.GenreName
FROM ProductionCompanies p
CROSS JOIN Genres g;

-- 17. Companies producing films matched with Directors table (assume Directors has CompanyName)
SELECT d.Name AS Director, p.Name AS Company
FROM Directors d
JOIN ProductionCompanies p
ON d.CompanyName = p.Name;

-- 18. Aggregate with JOIN (companies and films count)
SELECT p.Name, COUNT(f.FilmID) AS FilmsCount
FROM ProductionCompanies p
LEFT JOIN Films f ON f.ProductionCompany = p.Name
GROUP BY p.Name;

-- 19. JOIN with filter
SELECT f.Title, p.Name
FROM Films f
JOIN ProductionCompanies p ON f.ProductionCompany = p.Name
WHERE p.Status='Active';

-- 20. JOIN multiple tables (Films + Companies + Directors)
SELECT f.Title, d.Name AS Director, p.Name AS Company
FROM Films f
JOIN Directors d ON f.DirectorID = d.DirectorID
JOIN ProductionCompanies p ON f.ProductionCompany = p.Name;

-- 21. Scalar Subquery: Companies producing above average films
SELECT Name, TotalFilmsProduced
FROM ProductionCompanies
WHERE TotalFilmsProduced > (SELECT AVG(TotalFilmsProduced) FROM ProductionCompanies);

-- 22. Subquery with IN: Companies from cities with > 2 companies
SELECT Name, Headquarters
FROM ProductionCompanies
WHERE Headquarters IN (
    SELECT Headquarters
    FROM ProductionCompanies
    GROUP BY Headquarters
    HAVING COUNT(*) > 2
);

-- 23. Correlated Subquery: Company with max films in each city
SELECT Name, Headquarters, TotalFilmsProduced
FROM ProductionCompanies p
WHERE TotalFilmsProduced = (
    SELECT MAX(TotalFilmsProduced)
    FROM ProductionCompanies
    WHERE Headquarters = p.Headquarters
);

-- 24. EXISTS: Companies with at least one film
SELECT Name
FROM ProductionCompanies p
WHERE EXISTS (
    SELECT 1 FROM Films f WHERE f.ProductionCompany = p.Name
);

-- 25. Subquery in SELECT: Film rank by company production
SELECT Name, TotalFilmsProduced,
       (SELECT COUNT(*) FROM ProductionCompanies WHERE TotalFilmsProduced > p.TotalFilmsProduced)+1 AS RankByFilms
FROM ProductionCompanies p;

-- 26. NOT IN: Companies not producing any film in Films table
SELECT Name
FROM ProductionCompanies
WHERE Name NOT IN (SELECT ProductionCompany FROM Films);

-- 27. ANY: Companies producing more films than any Chennai company
SELECT Name, TotalFilmsProduced
FROM ProductionCompanies
WHERE TotalFilmsProduced > ANY (
    SELECT TotalFilmsProduced FROM ProductionCompanies WHERE Headquarters='Chennai'
);

-- 28. ALL: Companies producing more films than all Hyderabad companies
SELECT Name, TotalFilmsProduced
FROM ProductionCompanies
WHERE TotalFilmsProduced > ALL (
    SELECT TotalFilmsProduced FROM ProductionCompanies WHERE Headquarters='Hyderabad'
);

-- 29. Nested Subquery: Top 3 companies by films
SELECT Name, TotalFilmsProduced
FROM ProductionCompanies
WHERE TotalFilmsProduced IN (
    SELECT TotalFilmsProduced
    FROM ProductionCompanies
    ORDER BY TotalFilmsProduced DESC
    LIMIT 3
);

-- 30. Subquery with GROUP BY inside WHERE
SELECT Name, GenreSpecialization
FROM ProductionCompanies
WHERE GenreSpecialization IN (
    SELECT GenreSpecialization
    FROM ProductionCompanies
    GROUP BY GenreSpecialization
    HAVING COUNT(*) > 1
);

-- 31. Built-in Function: UPPER
SELECT UPPER(Name) AS UpperCompany FROM ProductionCompanies;

-- 32. LOWER
SELECT LOWER(Email) AS LowerEmail FROM ProductionCompanies;

-- 33. LENGTH
SELECT Name, LENGTH(Name) AS NameLength FROM ProductionCompanies;

-- 34. SUBSTRING
SELECT Name, SUBSTRING(Email, 1, 5) AS EmailPrefix FROM ProductionCompanies;

-- 35. CONCAT
SELECT CONCAT(Name, ' (', Headquarters, ')') AS FullInfo FROM ProductionCompanies;

-- 36. REPLACE
SELECT REPLACE(Email, '.com', '.org') AS UpdatedEmail FROM ProductionCompanies;

-- 37. ROUND
SELECT Name, ROUND(TotalFilmsProduced/10.0, 1) AS FilmsInTens FROM ProductionCompanies;

-- 38. YEAR (from founded year using DATE simulation)
SELECT Name, FoundedYear, YEAR(CURDATE()) - FoundedYear AS CompanyAge FROM ProductionCompanies;

-- 39. Aggregate: SUM by city
SELECT Headquarters, SUM(TotalFilmsProduced) AS TotalFilms
FROM ProductionCompanies
GROUP BY Headquarters;

-- 40. Window Function: Rank by films produced
SELECT Name, Headquarters, TotalFilmsProduced,
       RANK() OVER (PARTITION BY Headquarters ORDER BY TotalFilmsProduced DESC) AS RankInCity
FROM ProductionCompanies;


-- 41. UDF: Calculate company age
DELIMITER //
CREATE FUNCTION CompanyAge(yearFounded INT)
RETURNS INT
DETERMINISTIC
BEGIN
  RETURN YEAR(CURDATE()) - yearFounded;
END//
DELIMITER ;

-- 42. Use CompanyAge
SELECT Name, FoundedYear, CompanyAge(FoundedYear) AS Age
FROM ProductionCompanies;

-- 43. UDF: Classify company size by films
DELIMITER //
CREATE FUNCTION CompanySize(films INT)
RETURNS VARCHAR(20)
DETERMINISTIC
BEGIN
  IF films >= 100 THEN RETURN 'Mega';
  ELSEIF films >= 60 THEN RETURN 'Large';
  ELSEIF films >= 30 THEN RETURN 'Medium';
  ELSE RETURN 'Small';
  END IF;
END//
DELIMITER ;

-- 44. Use CompanySize
SELECT Name, TotalFilmsProduced, CompanySize(TotalFilmsProduced) AS Size
FROM ProductionCompanies;

-- 45. UDF: Mask company phone number
DELIMITER //
CREATE FUNCTION MaskPhone(phone VARCHAR(20))
RETURNS VARCHAR(20)
DETERMINISTIC
BEGIN
  RETURN CONCAT('XXXX-', RIGHT(phone,4));
END//
DELIMITER ;

-- 46. Use MaskPhone
SELECT Name, Phone, MaskPhone(Phone) AS SecurePhone
FROM ProductionCompanies;

-- 47. UDF: Check if company is active
DELIMITER //
CREATE FUNCTION IsActive(status VARCHAR(20))
RETURNS BOOLEAN
DETERMINISTIC
BEGIN
  RETURN status = 'Active';
END//
DELIMITER ;

-- 48. Use IsActive
SELECT Name, Status, IsActive(Status) AS CurrentlyActive
FROM ProductionCompanies;

-- 49. UDF: Email domain extractor
DELIMITER //
CREATE FUNCTION EmailDomain(email VARCHAR(100))
RETURNS VARCHAR(50)
DETERMINISTIC
BEGIN
  RETURN SUBSTRING_INDEX(email, '@', -1);
END//
DELIMITER ;

-- 50. Use EmailDomain
SELECT Name, Email, EmailDomain(Email) AS Domain
FROM ProductionCompanies;


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

-- 1. Select all genres ordered by popularity rank
SELECT GenreID, Name, PopularityRank
FROM FilmGenres
ORDER BY PopularityRank;

-- 2. Count how many active genres exist
SELECT COUNT(*) AS ActiveGenres
FROM FilmGenres
WHERE ActiveStatus = 'Active';

-- 3. Find maximum and minimum average duration
SELECT MAX(AverageDuration) AS MaxDuration,
       MIN(AverageDuration) AS MinDuration
FROM FilmGenres;

-- 4. Use string function to uppercase all genre names
SELECT UPPER(Name) AS GenreNameCaps
FROM FilmGenres;

-- 5. Concatenate name with description (string function)
SELECT CONCAT(Name, ' - ', Description) AS GenreInfo
FROM FilmGenres;

-- 6. Calculate average budget (numeric aggregation)
SELECT AVG(CAST(SUBSTRING_INDEX(TypicalBudgetRange, '-', 1) AS UNSIGNED)) AS AvgMinBudget
FROM FilmGenres;

-- 7. Find genres suitable for kids with duration < 120
SELECT Name
FROM FilmGenres
WHERE SuitableForKids = TRUE AND AverageDuration < 120;

-- 8. Replace NULL values in LanguageOrigin with 'Unknown'
SELECT COALESCE(LanguageOrigin, 'Unknown') AS LangOrigin
FROM FilmGenres;

-- 9. Count distinct language origins
SELECT COUNT(DISTINCT LanguageOrigin) AS DistinctLanguages
FROM FilmGenres;

-- 10. Get genres where first appeared before 1950
SELECT Name, FirstAppearedYear
FROM FilmGenres
WHERE FirstAppearedYear < 1950;

-- 11. Genres with duration above overall average
SELECT Name, AverageDuration
FROM FilmGenres
WHERE AverageDuration > (SELECT AVG(AverageDuration) FROM FilmGenres);

-- 12. Genre(s) with maximum popularity rank
SELECT Name, PopularityRank
FROM FilmGenres
WHERE PopularityRank = (SELECT MAX(PopularityRank) FROM FilmGenres);

-- 13. Genres whose first appeared year is earlier than average
SELECT Name, FirstAppearedYear
FROM FilmGenres
WHERE FirstAppearedYear < (SELECT AVG(FirstAppearedYear) FROM FilmGenres);

-- 14. Correlated subquery: genres ranked higher than median popularity
SELECT Name, PopularityRank
FROM FilmGenres f
WHERE PopularityRank < (
  SELECT AVG(PopularityRank) FROM FilmGenres WHERE ActiveStatus = f.ActiveStatus
);

-- 15. EXISTS: find genres with popularity rank less than 5
SELECT Name
FROM FilmGenres g
WHERE EXISTS (
  SELECT 1 FROM FilmGenres WHERE PopularityRank < 5 AND GenreID = g.GenreID
);

-- 16. Subquery in SELECT: add category label
SELECT Name,
       (SELECT CASE WHEN SuitableForKids = TRUE THEN 'Family' ELSE 'Adult' END)
       AS AudienceType
FROM FilmGenres;

-- 17. IN subquery: genres that appeared in same year as any with rank < 5
SELECT Name, FirstAppearedYear
FROM FilmGenres
WHERE FirstAppearedYear IN (
  SELECT FirstAppearedYear FROM FilmGenres WHERE PopularityRank < 5
);

-- 18. NOT IN: genres not originating from same languages as top 3 ranked
SELECT Name
FROM FilmGenres
WHERE LanguageOrigin NOT IN (
  SELECT LanguageOrigin FROM FilmGenres ORDER BY PopularityRank LIMIT 3
);

-- 19. Scalar subquery for comparison
SELECT Name, AverageDuration,
       (SELECT AVG(AverageDuration) FROM FilmGenres) AS GlobalAvg
FROM FilmGenres;

-- 20. Genres with same duration as at least one other genre
SELECT Name, AverageDuration
FROM FilmGenres g
WHERE AverageDuration IN (
  SELECT AverageDuration
  FROM FilmGenres
  GROUP BY AverageDuration
  HAVING COUNT(*) > 1
);


-- 21. Inner join genres with films
SELECT f.Title, g.Name AS Genre
FROM Films f
JOIN FilmGenres g ON f.GenreID = g.GenreID;

-- 22. Left join: include genres even without films
SELECT g.Name, f.Title
FROM FilmGenres g
LEFT JOIN Films f ON g.GenreID = f.GenreID;

-- 23. Right join: include films even if genre missing
SELECT g.Name, f.Title
FROM FilmGenres g
RIGHT JOIN Films f ON g.GenreID = f.GenreID;

-- 24. Join with directors (through films)
SELECT d.Name AS Director, f.Title, g.Name AS Genre
FROM Directors d
JOIN Films f ON d.DirectorID = f.DirectorID
JOIN FilmGenres g ON f.GenreID = g.GenreID;

-- 25. Join with actors
SELECT a.Name AS Actor, f.Title, g.Name AS Genre
FROM Actors a
JOIN Films f ON a.FilmID = f.FilmID
JOIN FilmGenres g ON f.GenreID = g.GenreID;

-- 26. Simulate FULL OUTER JOIN in MySQL
SELECT g.Name AS GenreName, f.Title AS FilmTitle
FROM FilmGenres g
LEFT JOIN Films f ON g.GenreID = f.GenreID

UNION

SELECT g.Name AS GenreName, f.Title AS FilmTitle
FROM FilmGenres g
RIGHT JOIN Films f ON g.GenreID = f.GenreID;


-- 27. Cross join (all combinations)
SELECT g.Name, d.Name AS Director
FROM FilmGenres g
CROSS JOIN Directors d;

-- 28. Join + filter: only active genres with films after 2010
SELECT g.Name, f.Title
FROM FilmGenres g
JOIN Films f ON g.GenreID = f.GenreID
WHERE g.ActiveStatus = 'Active' AND f.ReleaseYear > 2010;

-- 29. Self join: genres with same origin language
SELECT g1.Name AS Genre1, g2.Name AS Genre2
FROM FilmGenres g1
JOIN FilmGenres g2
  ON g1.LanguageOrigin = g2.LanguageOrigin AND g1.GenreID <> g2.GenreID;

-- 30. Join with production companies (through films)
SELECT pc.CompanyName, f.Title, g.Name AS Genre
FROM ProductionCompanies pc
JOIN Films f ON pc.CompanyID = f.ProductionCompany
JOIN FilmGenres g ON f.GenreID = g.GenreID;


DELIMITER $$

-- 31. Scalar function: classify genre by average duration
CREATE FUNCTION ClassifyDuration(duration INT)
RETURNS VARCHAR(20)
DETERMINISTIC
BEGIN
    DECLARE result VARCHAR(20);

    IF duration >= 150 THEN
        SET result = 'Long';
    ELSEIF duration >= 120 THEN
        SET result = 'Medium';
    ELSE
        SET result = 'Short';
    END IF;

    RETURN result;
END $$

DELIMITER ;


-- 32. Use above function
SELECT Name, dbo.ClassifyDuration(AverageDuration) AS DurationCategory
FROM FilmGenres;

-- 33. Function: Check if kid-friendly

DELIMITER $$

CREATE FUNCTION IsKidFriendly(suitable TINYINT)
RETURNS VARCHAR(20)
DETERMINISTIC
BEGIN
    DECLARE result VARCHAR(20);

    IF suitable = 1 THEN
        SET result = 'Family';
    ELSE
        SET result = 'Adult';
    END IF;

    RETURN result;
END $$

DELIMITER ;



-- 34. Use function
SELECT Name, dbo.IsKidFriendly(SuitableForKids) AS Audience
FROM FilmGenres;

-- 35. Function: Decade of appearance
DELIMITER $$

CREATE FUNCTION GetDecade(year INT)
RETURNS VARCHAR(10)
DETERMINISTIC
BEGIN
    RETURN CONCAT(CAST(FLOOR(year/10)*10 AS CHAR), 's');
END $$

DELIMITER ;

-- 36. Use decade function
SELECT Name, dbo.GetDecade(FirstAppearedYear) AS AppearedDecade
FROM FilmGenres;

-- 37. Function: classify popularity rank
DELIMITER $$

CREATE FUNCTION RankCategory(rank INT)
RETURNS VARCHAR(20)
DETERMINISTIC
BEGIN
    RETURN CASE 
               WHEN rank <= 5 THEN 'Top'
               WHEN rank <= 10 THEN 'Mid'
               ELSE 'Low'
           END;
END $$

DELIMITER ;


-- 38. Use function
SELECT Name, dbo.RankCategory(PopularityRank) AS PopularityLevel
FROM FilmGenres;

-- 40. Use function
SELECT Name, dbo.BudgetCategory(TypicalBudgetRange) AS BudgetType
FROM FilmGenres;


-- 41. Rank genres by average duration
SELECT Name, AverageDuration,
       RANK() OVER (ORDER BY AverageDuration DESC) AS DurationRank
FROM FilmGenres;

-- 42. Dense rank genres by popularity
SELECT Name, PopularityRank,
       DENSE_RANK() OVER (ORDER BY PopularityRank) AS PopDenseRank
FROM FilmGenres;

-- 43. Row number for all genres
SELECT Name, ROW_NUMBER() OVER (ORDER BY GenreID) AS RowNum
FROM FilmGenres;

-- 44. Running total of average duration
SELECT Name, AverageDuration,
       SUM(AverageDuration) OVER (ORDER BY GenreID) AS RunningTotal
FROM FilmGenres;

-- 45. Lag function to see previous genre’s duration
SELECT Name, AverageDuration,
       LAG(AverageDuration, 1) OVER (ORDER BY GenreID) AS PrevDuration
FROM FilmGenres;

-- 46. Lead function to see next genre’s duration
SELECT Name, AverageDuration,
       LEAD(AverageDuration, 1) OVER (ORDER BY GenreID) AS NextDuration
FROM FilmGenres;

-- 47. Percent rank by popularity
SELECT Name, PopularityRank,
       PERCENT_RANK() OVER (ORDER BY PopularityRank) AS PercentRank
FROM FilmGenres;

-- 48. NTILE(4) to divide genres into 4 quartiles by duration
SELECT Name, AverageDuration,
       NTILE(4) OVER (ORDER BY AverageDuration) AS Quartile
FROM FilmGenres;

-- 49. First and last value of duration per ordering
SELECT Name, AverageDuration,
       FIRST_VALUE(AverageDuration) OVER (ORDER BY AverageDuration) AS Shortest,
       LAST_VALUE(AverageDuration) OVER (ORDER BY AverageDuration
           ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS Longest
FROM FilmGenres;

-- 50. Moving average of duration over 3 genres
SELECT Name, AverageDuration,
       AVG(AverageDuration) OVER (ORDER BY GenreID ROWS BETWEEN 1 PRECEDING AND 1 FOLLOWING) AS MovingAvg
FROM FilmGenres;



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

-- 1. Select all distributors sorted by years active (descending)
SELECT DistributorID, Name, YearsActive
FROM Distributors
ORDER BY YearsActive DESC;

-- 2. Count total active distributors
SELECT COUNT(*) AS ActiveDistributors
FROM Distributors
WHERE ContractStatus = 'Active';

-- 3. Find maximum and minimum deals
SELECT MAX(TotalDeals) AS MaxDeals, MIN(TotalDeals) AS MinDeals
FROM Distributors;

-- 4. Convert distributor names to uppercase
SELECT UPPER(Name) AS DistributorNameCaps
FROM Distributors;

-- 5. Concatenate name with platform type
SELECT CONCAT(Name, ' - ', PlatformType) AS DistributorInfo
FROM Distributors;

-- 6. Average deals per distributor
SELECT AVG(TotalDeals) AS AvgDeals
FROM Distributors;

-- 7. Distributors with more than 200 deals
SELECT Name, TotalDeals
FROM Distributors
WHERE TotalDeals > 200;

-- 8. Replace NULL regions with 'Unknown'
SELECT Name, COALESCE(DistributionRegions, 'Unknown') AS Regions
FROM Distributors;

-- 9. Count distinct platform types
SELECT COUNT(DISTINCT PlatformType) AS DistinctPlatforms
FROM Distributors;

-- 10. Distributors with less than 10 years active
SELECT Name, YearsActive
FROM Distributors
WHERE YearsActive < 10;


-- 11. Distributors with deals above average
SELECT Name, TotalDeals
FROM Distributors
WHERE TotalDeals > (SELECT AVG(TotalDeals) FROM Distributors);

-- 12. Distributor(s) with maximum years active
SELECT Name, YearsActive
FROM Distributors
WHERE YearsActive = (SELECT MAX(YearsActive) FROM Distributors);

-- 13. Distributors with fewer deals than minimum in theatrical
SELECT Name, TotalDeals
FROM Distributors
WHERE TotalDeals < (
    SELECT MIN(TotalDeals) FROM Distributors WHERE PlatformType LIKE '%Theatrical%'
);

-- 14. Correlated subquery: distributors ranked higher in same contract group
SELECT d1.Name, d1.TotalDeals
FROM Distributors d1
WHERE TotalDeals > (
    SELECT AVG(d2.TotalDeals) 
    FROM Distributors d2 
    WHERE d2.ContractStatus = d1.ContractStatus
);

-- 15. EXISTS: distributors with at least 150 deals
SELECT Name
FROM Distributors d
WHERE EXISTS (
  SELECT 1 FROM Distributors WHERE TotalDeals >= 150 AND DistributorID = d.DistributorID
);

-- 16. Subquery in SELECT: add classification
SELECT Name, 
       (SELECT CASE WHEN YearsActive > 20 THEN 'Veteran' ELSE 'New Player' END) AS Status
FROM Distributors;

-- 17. IN subquery: distributors from same countries as top 3 deals
SELECT Name, Country
FROM Distributors
WHERE Country IN (
  SELECT Country FROM Distributors ORDER BY TotalDeals DESC LIMIT 3
);

-- 18. NOT IN: distributors not from OTT platforms
SELECT Name
FROM Distributors
WHERE PlatformType NOT IN (
  SELECT DISTINCT PlatformType FROM Distributors WHERE PlatformType LIKE '%OTT%'
);

-- 19. Scalar subquery for comparison
SELECT Name, TotalDeals,
       (SELECT AVG(TotalDeals) FROM Distributors) AS GlobalAvg
FROM Distributors;

-- 20. Distributors with same years active as others
SELECT Name, YearsActive
FROM Distributors d
WHERE YearsActive IN (
  SELECT YearsActive FROM Distributors GROUP BY YearsActive HAVING COUNT(*) > 1
);


-- 21. Join distributors with films
SELECT f.Title, d.Name AS Distributor
FROM Films f
JOIN Distributors d ON f.DistributorID = d.DistributorID;

-- 22. Left join: include distributors even if no films
SELECT d.Name, f.Title
FROM Distributors d
LEFT JOIN Films f ON d.DistributorID = f.DistributorID;

-- 23. Right join: include films even if no distributor assigned
SELECT d.Name, f.Title
FROM Distributors d
RIGHT JOIN Films f ON d.DistributorID = f.DistributorID;

-- 24. Join with production companies through films
SELECT pc.CompanyName, f.Title, d.Name AS Distributor
FROM ProductionCompanies pc
JOIN Films f ON pc.CompanyID = f.ProductionCompany
JOIN Distributors d ON f.DistributorID = d.DistributorID;

-- 25. Join with actors through films
SELECT a.Name AS Actor, f.Title, d.Name AS Distributor
FROM Actors a
JOIN Films f ON a.FilmID = f.FilmID
JOIN Distributors d ON f.DistributorID = d.DistributorID;

-- 26. Full join distributors and films (PostgreSQL/SQL Server only)
SELECT d.Name, f.Title
FROM Distributors d
LEFT JOIN Films f ON d.DistributorID = f.DistributorID

UNION

SELECT d.Name, f.Title
FROM Distributors d
RIGHT JOIN Films f ON d.DistributorID = f.DistributorID;

-- 27. Cross join distributors and directors (all combinations)
SELECT d.Name AS Distributor, dir.Name AS Director
FROM Distributors d
CROSS JOIN Directors dir;

-- 28. Join + filter: OTT distributors with films after 2020
SELECT d.Name, f.Title
FROM Distributors d
JOIN Films f ON d.DistributorID = f.DistributorID
WHERE d.PlatformType LIKE '%OTT%' AND f.ReleaseYear > 2020;

-- 29. Self join: distributors from same country
SELECT d1.Name AS Dist1, d2.Name AS Dist2
FROM Distributors d1
JOIN Distributors d2
  ON d1.Country = d2.Country AND d1.DistributorID <> d2.DistributorID;

-- 30. Join with studios through films
SELECT s.Name AS Studio, f.Title, d.Name AS Distributor
FROM Studios s
JOIN Films f ON s.StudioID = f.StudioID
JOIN Distributors d ON f.DistributorID = d.DistributorID;


-- 31. Function: classify distributor by deals
DELIMITER $$

CREATE FUNCTION ClassifyDeals(deals INT)
RETURNS VARCHAR(20)
DETERMINISTIC
BEGIN
    DECLARE result VARCHAR(20);

    IF deals >= 200 THEN
        SET result = 'Major';
    ELSEIF deals >= 100 THEN
        SET result = 'Mid-level';
    ELSE
        SET result = 'Small';
    END IF;

    RETURN result;
END $$

DELIMITER ;

-- 32. Use function
SELECT Name, dbo.ClassifyDeals(TotalDeals) AS DealCategory
FROM Distributors;

-- 34. Use function
SELECT Name, dbo.IsVeteran(YearsActive) AS ExperienceLevel
FROM Distributors;

-- 35. Function: classify by platform
DELIMITER $$

CREATE FUNCTION PlatformCategory(platform VARCHAR(50))
RETURNS VARCHAR(20)
DETERMINISTIC
BEGIN
    DECLARE result VARCHAR(20);

    IF platform LIKE '%OTT%' THEN
        SET result = 'OTT';
    ELSEIF platform LIKE '%Theatrical%' THEN
        SET result = 'Cinema';
    ELSE
        SET result = 'Other';
    END IF;

    RETURN result;
END $$

DELIMITER ;


-- 36. Use function
SELECT Name, dbo.PlatformCategory(PlatformType) AS PlatformGroup
FROM Distributors;

-- 37. Function: years to retirement (assume retirement 40 years)
DELIMITER $$

CREATE FUNCTION YearsToRetire(years INT)
RETURNS INT
DETERMINISTIC
BEGIN
    RETURN 40 - years;
END $$

DELIMITER ;


-- 38. Use function
SELECT Name, dbo.YearsToRetire(YearsActive) AS YearsLeft
FROM Distributors;

-- 40. Use function
SELECT Name, dbo.ContractCategory(ContractStatus) AS ContractGroup
FROM Distributors;


-- 41. Rank distributors by deals
SELECT Name, TotalDeals,
       RANK() OVER (ORDER BY TotalDeals DESC) AS DealRank
FROM Distributors;

-- 42. Dense rank distributors by years active
SELECT Name, YearsActive,
       DENSE_RANK() OVER (ORDER BY YearsActive DESC) AS YearsRank
FROM Distributors;

-- 43. Row number all distributors
SELECT Name, ROW_NUMBER() OVER (ORDER BY DistributorID) AS RowNum
FROM Distributors;

-- 44. Running total of deals
SELECT Name, TotalDeals,
       SUM(TotalDeals) OVER (ORDER BY DistributorID) AS RunningTotal
FROM Distributors;

-- 45. Lag: previous distributor’s deals
SELECT Name, TotalDeals,
       LAG(TotalDeals, 1) OVER (ORDER BY DistributorID) AS PrevDeals
FROM Distributors;

-- 46. Lead: next distributor’s deals
SELECT Name, TotalDeals,
       LEAD(TotalDeals, 1) OVER (ORDER BY DistributorID) AS NextDeals
FROM Distributors;

-- 47. Percent rank by years active
SELECT Name, YearsActive,
       PERCENT_RANK() OVER (ORDER BY YearsActive) AS PercentRank
FROM Distributors;

-- 48. NTILE(4) quartiles of deals
SELECT Name, TotalDeals,
       NTILE(4) OVER (ORDER BY TotalDeals) AS Quartile
FROM Distributors;

-- 49. First and last value of deals
SELECT Name, TotalDeals,
       FIRST_VALUE(TotalDeals) OVER (ORDER BY TotalDeals) AS MinDeals,
       LAST_VALUE(TotalDeals) OVER (ORDER BY TotalDeals
           ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS MaxDeals
FROM Distributors;

-- 50. Moving average of deals over 3 distributors
SELECT Name, TotalDeals,
       AVG(TotalDeals) OVER (ORDER BY DistributorID ROWS BETWEEN 1 PRECEDING AND 1 FOLLOWING) AS MovingAvg
FROM Distributors;



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


-- 1. Select all soundtracks ordered by release date
SELECT TrackID, Title, ReleaseDate
FROM Soundtracks
ORDER BY ReleaseDate DESC;

-- 2. Count total soundtracks per language
SELECT Language, COUNT(*) AS TotalTracks
FROM Soundtracks
GROUP BY Language;

-- 3. Maximum and minimum duration of tracks
SELECT MAX(DurationSeconds) AS MaxDuration, MIN(DurationSeconds) AS MinDuration
FROM Soundtracks;

-- 4. Convert all track titles to uppercase
SELECT UPPER(Title) AS TitleCaps FROM Soundtracks;

-- 5. Concatenate Title with Composer
SELECT CONCAT(Title, ' - ', Composer) AS TrackInfo FROM Soundtracks;

-- 6. Average duration of all soundtracks
SELECT AVG(DurationSeconds) AS AvgDuration FROM Soundtracks;

-- 7. Tracks with rating = '5'
SELECT Title, Rating FROM Soundtracks WHERE Rating = '5';

-- 8. Replace NULL publisher with 'Independent'
SELECT Title, COALESCE(Publisher, 'Independent') AS PublisherName FROM Soundtracks;

-- 9. Count distinct composers
SELECT COUNT(DISTINCT Composer) AS DistinctComposers FROM Soundtracks;

-- 10. Tracks longer than 250 seconds
SELECT Title, DurationSeconds FROM Soundtracks WHERE DurationSeconds > 250;


-- 11. Tracks longer than average duration
SELECT Title, DurationSeconds
FROM Soundtracks
WHERE DurationSeconds > (SELECT AVG(DurationSeconds) FROM Soundtracks);

-- 12. Track with maximum rating (top-rated)
SELECT Title, Rating
FROM Soundtracks
WHERE Rating = (SELECT MAX(Rating) FROM Soundtracks);

-- 13. Tracks shorter than minimum duration of Romantic genre
SELECT Title, DurationSeconds
FROM Soundtracks
WHERE DurationSeconds < (SELECT MIN(DurationSeconds) FROM Soundtracks WHERE Genre='Romantic');

-- 14. Correlated subquery: tracks longer than average of same genre
SELECT s1.Title, s1.DurationSeconds, s1.Genre
FROM Soundtracks s1
WHERE DurationSeconds > (
    SELECT AVG(s2.DurationSeconds)
    FROM Soundtracks s2
    WHERE s2.Genre = s1.Genre
);

-- 15. EXISTS: tracks composed by 'A. R. Rahman'
SELECT Title
FROM Soundtracks s
WHERE EXISTS (SELECT 1 FROM Soundtracks WHERE Composer='A. R. Rahman' AND TrackID=s.TrackID);

-- 16. Subquery in SELECT to classify duration
SELECT Title,
       (SELECT CASE WHEN DurationSeconds > 250 THEN 'Long' ELSE 'Short' END) AS DurationType
FROM Soundtracks;

-- 17. IN subquery: tracks released in years of top 3 durations
SELECT Title, ReleaseDate
FROM Soundtracks
WHERE YEAR(ReleaseDate) IN (
  SELECT YEAR(ReleaseDate)
  FROM Soundtracks
  ORDER BY DurationSeconds DESC
  LIMIT 3
);

-- 18. NOT IN: tracks not in 'Hindi' language
SELECT Title, Language
FROM Soundtracks
WHERE Language NOT IN (SELECT DISTINCT Language FROM Soundtracks WHERE Language='Hindi');

-- 19. Scalar subquery for comparison: duration above average
SELECT Title, DurationSeconds,
       (SELECT AVG(DurationSeconds) FROM Soundtracks) AS AvgDuration
FROM Soundtracks;

-- 20. Tracks with same composer as another track
SELECT Title, Composer
FROM Soundtracks s
WHERE Composer IN (
  SELECT Composer
  FROM Soundtracks
  GROUP BY Composer
  HAVING COUNT(*) > 1
);


-- 21. Join soundtracks with films
SELECT st.Title, f.Title AS FilmTitle
FROM Soundtracks st
JOIN Films f ON st.FilmID = f.FilmID;

-- 22. Left join: include all soundtracks even if film info missing
SELECT st.Title, f.Title AS FilmTitle
FROM Soundtracks st
LEFT JOIN Films f ON st.FilmID = f.FilmID;

-- 23. Right join: all films with soundtrack info if available
SELECT st.Title AS Soundtrack, f.Title AS FilmTitle
FROM Soundtracks st
RIGHT JOIN Films f ON st.FilmID = f.FilmID;

-- 24. Join with production companies through films
SELECT st.Title AS Track, f.Title AS Film, pc.Name AS ProductionCompany
FROM Soundtracks st
JOIN Films f ON st.FilmID = f.FilmID
JOIN ProductionCompanies pc ON f.ProductionCompanyID = pc.CompanyID;

-- 25. Join with distributors through films
SELECT st.Title AS Track, f.Title AS Film, d.Name AS Distributor
FROM Soundtracks st
JOIN Films f ON st.FilmID = f.FilmID
JOIN Distributors d ON f.DistributorID = d.DistributorID;

-- 26. Join with genres
SELECT st.Title, fg.Name AS GenreName
FROM Soundtracks st
JOIN FilmGenres fg ON st.Genre = fg.Name;

-- 27. Cross join: all tracks with all composers
SELECT st.Title AS Track, c.Name AS ComposerName
FROM Soundtracks st
CROSS JOIN CrewMembers c;

-- 28. Join + filter: tracks in Hindi released after 2015
SELECT st.Title, st.ReleaseDate
FROM Soundtracks st
JOIN Films f ON st.FilmID=f.FilmID
WHERE st.Language='Hindi' AND f.ReleaseYear>2015;

-- 29. Self join: tracks by same composer
SELECT s1.Title AS Track1, s2.Title AS Track2, s1.Composer
FROM Soundtracks s1
JOIN Soundtracks s2 ON s1.Composer=s2.Composer AND s1.TrackID<>s2.TrackID;

-- 30. Join with actors through films
SELECT a.Name AS Actor, st.Title AS Track, f.Title AS Film
FROM Actors a
JOIN Films f ON a.FilmID=f.FilmID
JOIN Soundtracks st ON f.FilmID=st.FilmID;

-- 31. Function to classify rating
DELIMITER $$
CREATE FUNCTION RatingCategory(r INT) RETURNS VARCHAR(20)
BEGIN
  DECLARE cat VARCHAR(20);
  IF r=5 THEN SET cat='Excellent';
  ELSEIF r=4 THEN SET cat='Good';
  ELSE SET cat='Average';
  END IF;
  RETURN cat;
END$$
DELIMITER ;

-- 32. Use RatingCategory
SELECT Title, Rating, RatingCategory(Rating) AS RatingDesc
FROM Soundtracks;

-- 33. Function to check if track is Long or Short
DELIMITER $$
CREATE FUNCTION DurationType(d INT) RETURNS VARCHAR(20)
BEGIN
  RETURN IF(d>250,'Long','Short');
END$$
DELIMITER ;

-- 34. Use DurationType
SELECT Title, DurationSeconds, DurationType(DurationSeconds) AS LengthCategory
FROM Soundtracks;

-- 35. Function to check if Hindi or Non-Hindi
DELIMITER $$
CREATE FUNCTION LanguageType(lang VARCHAR(50)) RETURNS VARCHAR(20)
BEGIN
  RETURN IF(lang='Hindi','Hindi','Other');
END$$
DELIMITER ;

-- 36. Use LanguageType
SELECT Title, Language, LanguageType(Language) AS LangGroup
FROM Soundtracks;

-- 37. Function: tracks older than given year
DELIMITER $$
CREATE FUNCTION IsOldTrack(rel_year INT) RETURNS VARCHAR(20)
BEGIN
  RETURN IF(YEAR(CURDATE())-rel_year>10,'Old','New');
END$$
DELIMITER ;

-- 38. Use IsOldTrack
SELECT Title, ReleaseDate, IsOldTrack(YEAR(ReleaseDate)) AS AgeCategory
FROM Soundtracks;

-- 39. Function: check popular genre
DELIMITER $$
CREATE FUNCTION IsPopularGenre(g VARCHAR(50)) RETURNS VARCHAR(20)
BEGIN
  RETURN IF(g IN ('Romantic','Pop','Folk Fusion'),'Popular','Niche');
END$$
DELIMITER ;

-- 40. Use IsPopularGenre
SELECT Title, Genre, IsPopularGenre(Genre) AS GenrePopularity
FROM Soundtracks;


-- 41. Rank tracks by duration
SELECT Title, DurationSeconds,
       RANK() OVER (ORDER BY DurationSeconds DESC) AS DurationRank
FROM Soundtracks;

-- 42. Dense rank by rating
SELECT Title, Rating,
       DENSE_RANK() OVER (ORDER BY Rating DESC) AS RatingRank
FROM Soundtracks;

-- 43. Row number
SELECT Title, ROW_NUMBER() OVER (ORDER BY TrackID) AS RowNum
FROM Soundtracks;

-- 44. Running total of durations
SELECT Title, DurationSeconds,
       SUM(DurationSeconds) OVER (ORDER BY TrackID) AS RunningTotal
FROM Soundtracks;

-- 45. Lag function: previous track duration
SELECT Title, DurationSeconds,
       LAG(DurationSeconds,1) OVER (ORDER BY TrackID) AS PrevDuration
FROM Soundtracks;

-- 46. Lead function: next track duration
SELECT Title, DurationSeconds,
       LEAD(DurationSeconds,1) OVER (ORDER BY TrackID) AS NextDuration
FROM Soundtracks;

-- 47. Percent rank by duration
SELECT Title, DurationSeconds,
       PERCENT_RANK() OVER (ORDER BY DurationSeconds) AS PercentRank
FROM Soundtracks;

-- 48. NTILE(4) quartiles of duration
SELECT Title, DurationSeconds,
       NTILE(4) OVER (ORDER BY DurationSeconds) AS Quartile
FROM Soundtracks;

-- 49. First and last duration
SELECT Title, DurationSeconds,
       FIRST_VALUE(DurationSeconds) OVER (ORDER BY DurationSeconds) AS MinDuration,
       LAST_VALUE(DurationSeconds) OVER (ORDER BY DurationSeconds
           ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS MaxDuration
FROM Soundtracks;

-- 50. Moving average of durations over 3 tracks
SELECT Title, DurationSeconds,
       AVG(DurationSeconds) OVER (ORDER BY TrackID ROWS BETWEEN 1 PRECEDING AND 1 FOLLOWING) AS MovingAvg
FROM Soundtracks;

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


-- 1. Select all awards ordered by year descending
SELECT AwardID, Name, Year
FROM Awards
ORDER BY Year DESC;

-- 2. Count awards per category
SELECT Category, COUNT(*) AS TotalAwards
FROM Awards
GROUP BY Category;

-- 3. Maximum and minimum prize amounts
SELECT MAX(PrizeAmount) AS MaxPrize, MIN(PrizeAmount) AS MinPrize
FROM Awards;

-- 4. Convert winner names to uppercase
SELECT UPPER(WinnerName) AS WinnerCaps FROM Awards;

-- 5. Concatenate WinnerName and FilmID
SELECT CONCAT(WinnerName, ' - ', FilmID) AS WinnerFilmInfo FROM Awards;

-- 6. Average prize amount of all awards
SELECT AVG(PrizeAmount) AS AvgPrize FROM Awards;

-- 7. Awards with level 'International'
SELECT Name, Level FROM Awards WHERE Level='International';

-- 8. Replace NULL PresentedBy with 'Unknown'
SELECT Name, COALESCE(PresentedBy, 'Unknown') AS PresentedByName FROM Awards;

-- 9. Count distinct winners
SELECT COUNT(DISTINCT WinnerName) AS DistinctWinners FROM Awards;

-- 10. Awards with prize > 200000
SELECT Name, PrizeAmount FROM Awards WHERE PrizeAmount > 200000;


-- 11. Awards with prize above average
SELECT Name, PrizeAmount
FROM Awards
WHERE PrizeAmount > (SELECT AVG(PrizeAmount) FROM Awards);

-- 12. Award with maximum prize
SELECT Name, PrizeAmount
FROM Awards
WHERE PrizeAmount = (SELECT MAX(PrizeAmount) FROM Awards);

-- 13. Awards in 2023 with prize above 200000
SELECT Name, Year, PrizeAmount
FROM Awards
WHERE Year=2023 AND PrizeAmount > (SELECT AVG(PrizeAmount) FROM Awards);

-- 14. Correlated subquery: awards for films with more than one award
SELECT a1.Name, a1.FilmID
FROM Awards a1
WHERE (SELECT COUNT(*) FROM Awards a2 WHERE a2.FilmID=a1.FilmID)>1;

-- 15. EXISTS: awards presented by 'IIFA'
SELECT Name
FROM Awards a
WHERE EXISTS (SELECT 1 FROM Awards WHERE PresentedBy='IIFA' AND AwardID=a.AwardID);

-- 16. Scalar subquery to classify prize
SELECT Name, PrizeAmount,
       (SELECT CASE WHEN PrizeAmount>200000 THEN 'High' ELSE 'Low' END) AS PrizeCategory
FROM Awards;

-- 17. IN subquery: awards in top 3 prize amounts
SELECT Name, PrizeAmount
FROM Awards
WHERE PrizeAmount IN (
    SELECT PrizeAmount
    FROM Awards
    ORDER BY PrizeAmount DESC
    LIMIT 3
);

-- 18. NOT IN: awards not presented by 'Times Group'
SELECT Name, PresentedBy
FROM Awards
WHERE PresentedBy NOT IN (SELECT DISTINCT PresentedBy FROM Awards WHERE PresentedBy='Times Group');

-- 19. Subquery in SELECT for average prize
SELECT Name, PrizeAmount,
       (SELECT AVG(PrizeAmount) FROM Awards) AS AvgPrize
FROM Awards;

-- 20. Awards for winners who won more than once
SELECT Name, WinnerName
FROM Awards a
WHERE WinnerName IN (
    SELECT WinnerName
    FROM Awards
    GROUP BY WinnerName
    HAVING COUNT(*)>1
);

-- 21. Join with Films table
SELECT aw.Name AS AwardName, f.Title AS FilmTitle
FROM Awards aw
JOIN Films f ON aw.FilmID = f.FilmID;

-- 22. Left join to include all awards even if film info missing
SELECT aw.Name AS AwardName, f.Title AS FilmTitle
FROM Awards aw
LEFT JOIN Films f ON aw.FilmID = f.FilmID;

-- 23. Right join to include all films
SELECT aw.Name AS AwardName, f.Title AS FilmTitle
FROM Awards aw
RIGHT JOIN Films f ON aw.FilmID = f.FilmID;

-- 24. Join with production companies through Films
SELECT aw.Name AS Award, f.Title AS Film, pc.Name AS ProductionCompany
FROM Awards aw
JOIN Films f ON aw.FilmID = f.FilmID
JOIN ProductionCompanies pc ON f.ProductionCompanyID = pc.CompanyID;

-- 25. Join with distributors through Films
SELECT aw.Name AS Award, f.Title AS Film, d.Name AS Distributor
FROM Awards aw
JOIN Films f ON aw.FilmID = f.FilmID
JOIN Distributors d ON f.DistributorID = d.DistributorID;

-- 26. Join with soundtracks for same film
SELECT aw.Name AS Award, st.Title AS Soundtrack, aw.WinnerName
FROM Awards aw
JOIN Soundtracks st ON aw.FilmID = st.FilmID;

-- 27. Cross join with CrewMembers
SELECT aw.Name AS Award, c.Name AS CrewMember
FROM Awards aw
CROSS JOIN CrewMembers c;

-- 28. Join + filter: National awards only
SELECT aw.Name, aw.Level, f.Title AS Film
FROM Awards aw
JOIN Films f ON aw.FilmID = f.FilmID
WHERE aw.Level='National';

-- 29. Self join: winners who won multiple awards
SELECT a1.WinnerName, a1.Name AS Award1, a2.Name AS Award2
FROM Awards a1
JOIN Awards a2 ON a1.WinnerName=a2.WinnerName AND a1.AwardID<>a2.AwardID;

-- 30. Join with FilmGenres through Films
SELECT aw.Name AS Award, f.Title AS Film, fg.Name AS Genre
FROM Awards aw
JOIN Films f ON aw.FilmID = f.FilmID
JOIN FilmGenres fg ON f.GenreID = fg.GenreID;

-- 31. Function to classify prize amount
DELIMITER $$
CREATE FUNCTION PrizeCategory(p DECIMAL(10,2)) RETURNS VARCHAR(20)
BEGIN
  RETURN IF(p>200000,'High','Low');
END$$
DELIMITER ;

-- 32. Use PrizeCategory
SELECT Name, PrizeAmount, PrizeCategory(PrizeAmount) AS PrizeType FROM Awards;

-- 33. Function to classify award level
DELIMITER $$
CREATE FUNCTION LevelCategory(l VARCHAR(20)) RETURNS VARCHAR(20)
BEGIN
  RETURN IF(l='International','Global','Domestic');
END$$
DELIMITER ;

-- 34. Use LevelCategory
SELECT Name, Level, LevelCategory(Level) AS LevelType FROM Awards;

-- 35. Function to classify award by year
DELIMITER $$
CREATE FUNCTION AwardAge(y INT) RETURNS VARCHAR(20)
BEGIN
  RETURN IF(YEAR(CURDATE())-y>5,'Old','Recent');
END$$
DELIMITER ;

-- 36. Use AwardAge
SELECT Name, Year, AwardAge(Year) AS AgeCategory FROM Awards;

-- 37. Function: high prize AND international
DELIMITER $$
CREATE FUNCTION IsPrestigious(p DECIMAL(10,2), l VARCHAR(20)) RETURNS VARCHAR(20)
BEGIN
  RETURN IF(p>300000 AND l='International','Prestigious','Normal');
END$$
DELIMITER ;

-- 38. Use IsPrestigious
SELECT Name, PrizeAmount, Level, IsPrestigious(PrizeAmount,Level) AS PrestigiousStatus FROM Awards;

-- 39. Function: winner frequency
DELIMITER $$
CREATE FUNCTION WinnerFreq(w VARCHAR(100)) RETURNS INT
BEGIN
  DECLARE cnt INT;
  SELECT COUNT(*) INTO cnt FROM Awards WHERE WinnerName=w;
  RETURN cnt;
END$$
DELIMITER ;

-- 40. Use WinnerFreq
SELECT WinnerName, WinnerFreq(WinnerName) AS TimesWon FROM Awards;


-- 41. Rank awards by prize amount
SELECT Name, PrizeAmount,
       RANK() OVER (ORDER BY PrizeAmount DESC) AS PrizeRank
FROM Awards;

-- 42. Dense rank by prize
SELECT Name, PrizeAmount,
       DENSE_RANK() OVER (ORDER BY PrizeAmount DESC) AS DensePrizeRank
FROM Awards;

-- 43. Row number
SELECT Name, ROW_NUMBER() OVER (ORDER BY AwardID) AS RowNum FROM Awards;

-- 44. Running total of prize amounts
SELECT Name, PrizeAmount,
       SUM(PrizeAmount) OVER (ORDER BY AwardID) AS RunningTotal
FROM Awards;

-- 45. Lag: previous prize amount
SELECT Name, PrizeAmount,
       LAG(PrizeAmount,1) OVER (ORDER BY AwardID) AS PrevPrize
FROM Awards;

-- 46. Lead: next prize amount
SELECT Name, PrizeAmount,
       LEAD(PrizeAmount,1) OVER (ORDER BY AwardID) AS NextPrize
FROM Awards;

-- 47. Percent rank by prize
SELECT Name, PrizeAmount,
       PERCENT_RANK() OVER (ORDER BY PrizeAmount) AS PercentRank
FROM Awards;

-- 48. NTILE(4) quartiles of prize
SELECT Name, PrizeAmount,
       NTILE(4) OVER (ORDER BY PrizeAmount) AS Quartile
FROM Awards;

-- 49. First and last prize
SELECT Name, PrizeAmount,
       FIRST_VALUE(PrizeAmount) OVER (ORDER BY PrizeAmount) AS MinPrize,
       LAST_VALUE(PrizeAmount) OVER (ORDER BY PrizeAmount
           ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS MaxPrize
FROM Awards;

-- 50. Moving average of prize amount over 3 awards
SELECT Name, PrizeAmount,
       AVG(PrizeAmount) OVER (ORDER BY AwardID ROWS BETWEEN 1 PRECEDING AND 1 FOLLOWING) AS MovingAvg
FROM Awards;


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

-- 1. Select all shooting locations ordered by DaysSpent descending
SELECT LocationID, SiteName, DaysSpent
FROM ShootingLocations
ORDER BY DaysSpent DESC;

-- 2. Count of locations per state
SELECT State, COUNT(*) AS TotalLocations
FROM ShootingLocations
GROUP BY State;

-- 3. Maximum and minimum days spent
SELECT MAX(DaysSpent) AS MaxDays, MIN(DaysSpent) AS MinDays
FROM ShootingLocations;

-- 4. Convert city names to uppercase
SELECT City, UPPER(City) AS CityCaps FROM ShootingLocations;

-- 5. Concatenate City and SiteName
SELECT CONCAT(City, ' - ', SiteName) AS FullLocation FROM ShootingLocations;

-- 6. Average days spent for shooting
SELECT AVG(DaysSpent) AS AvgDays FROM ShootingLocations;

-- 7. Locations where permit is required
SELECT SiteName, PermitRequired
FROM ShootingLocations
WHERE PermitRequired = TRUE;

-- 8. Replace NULL LocalContact with 'Not Available'
SELECT SiteName, COALESCE(LocalContact,'Not Available') AS ContactPerson
FROM ShootingLocations;

-- 9. Count distinct cities
SELECT COUNT(DISTINCT City) AS DistinctCities FROM ShootingLocations;

-- 10. Outdoor locations only
SELECT SiteName, IndoorOutdoor
FROM ShootingLocations
WHERE IndoorOutdoor='Outdoor';


-- 11. Locations where days spent above average
SELECT SiteName, DaysSpent
FROM ShootingLocations
WHERE DaysSpent > (SELECT AVG(DaysSpent) FROM ShootingLocations);

-- 12. Location with maximum days spent
SELECT SiteName, DaysSpent
FROM ShootingLocations
WHERE DaysSpent = (SELECT MAX(DaysSpent) FROM ShootingLocations);

-- 13. Locations in states with more than 2 shoots
SELECT SiteName, State
FROM ShootingLocations
WHERE State IN (
    SELECT State
    FROM ShootingLocations
    GROUP BY State
    HAVING COUNT(*) > 2
);

-- 14. Correlated subquery: locations for films shot more than once
SELECT sl1.SiteName, sl1.FilmID
FROM ShootingLocations sl1
WHERE (SELECT COUNT(*) FROM ShootingLocations sl2 WHERE sl2.FilmID = sl1.FilmID) > 1;

-- 15. EXISTS: locations in Tamil Nadu
SELECT SiteName, State
FROM ShootingLocations sl
WHERE EXISTS (SELECT 1 FROM ShootingLocations WHERE State='Tamil Nadu' AND LocationID=sl.LocationID);

-- 16. NOT EXISTS: films without indoor shoots
SELECT FilmID
FROM ShootingLocations sl
WHERE NOT EXISTS (SELECT 1 FROM ShootingLocations WHERE FilmID=sl.FilmID AND IndoorOutdoor='Indoor');

-- 17. IN subquery: locations with top 3 days spent
SELECT SiteName, DaysSpent
FROM ShootingLocations
WHERE DaysSpent IN (
    SELECT DaysSpent
    FROM ShootingLocations
    ORDER BY DaysSpent DESC
    LIMIT 3
);

-- 18. NOT IN: locations not in Mumbai or Chennai
SELECT SiteName, City
FROM ShootingLocations
WHERE City NOT IN ('Mumbai','Chennai');

-- 19. Subquery in SELECT: average days per city
SELECT SiteName, City,
       (SELECT AVG(DaysSpent) FROM ShootingLocations WHERE City=sl.City) AS AvgDaysInCity
FROM ShootingLocations sl;

-- 20. Locations for films shot more than once
SELECT SiteName, FilmID
FROM ShootingLocations
WHERE FilmID IN (
    SELECT FilmID
    FROM ShootingLocations
    GROUP BY FilmID
    HAVING COUNT(*)>1
);

-- 21. Join with Films table to get film title
SELECT sl.SiteName, f.Title AS FilmTitle
FROM ShootingLocations sl
JOIN Films f ON sl.FilmID = f.FilmID;

-- 22. Left join to include all locations even if film info missing
SELECT sl.SiteName, f.Title AS FilmTitle
FROM ShootingLocations sl
LEFT JOIN Films f ON sl.FilmID = f.FilmID;

-- 23. Join with ProductionCompanies through Films
SELECT sl.SiteName, f.Title AS Film, pc.Name AS ProductionCompany
FROM ShootingLocations sl
JOIN Films f ON sl.FilmID = f.FilmID
JOIN ProductionCompanies pc ON f.ProductionCompanyID = pc.CompanyID;

-- 24. Join with Distributors through Films
SELECT sl.SiteName, f.Title AS Film, d.Name AS Distributor
FROM ShootingLocations sl
JOIN Films f ON sl.FilmID = f.FilmID
JOIN Distributors d ON f.DistributorID = d.DistributorID;

-- 25. Join with FilmGenres through Films
SELECT sl.SiteName, f.Title AS Film, fg.Name AS Genre
FROM ShootingLocations sl
JOIN Films f ON sl.FilmID = f.FilmID
JOIN FilmGenres fg ON f.GenreID = fg.GenreID;

-- 26. Join with Soundtracks for same film
SELECT sl.SiteName, f.Title AS Film, st.Title AS Soundtrack
FROM ShootingLocations sl
JOIN Films f ON sl.FilmID = f.FilmID
JOIN Soundtracks st ON f.FilmID = st.FilmID;

-- 27. Join with Awards for the film
SELECT sl.SiteName, f.Title AS Film, aw.Name AS Award
FROM ShootingLocations sl
JOIN Films f ON sl.FilmID = f.FilmID
JOIN Awards aw ON f.FilmID = aw.FilmID;

-- 28. Self join to find locations in same city for different films
SELECT sl1.SiteName AS Location1, sl2.SiteName AS Location2, sl1.City
FROM ShootingLocations sl1
JOIN ShootingLocations sl2 ON sl1.City = sl2.City AND sl1.LocationID <> sl2.LocationID;

-- 29. Join to get total days per film
SELECT f.Title, SUM(sl.DaysSpent) AS TotalDays
FROM ShootingLocations sl
JOIN Films f ON sl.FilmID = f.FilmID
GROUP BY f.Title;

-- 30. Join with FilmGenres to get genre-wise total days
SELECT fg.Name AS Genre, SUM(sl.DaysSpent) AS DaysByGenre
FROM ShootingLocations sl
JOIN Films f ON sl.FilmID = f.FilmID
JOIN FilmGenres fg ON f.GenreID = fg.GenreID
GROUP BY fg.Name;

-- 31. Function to classify shoot duration
DELIMITER $$
CREATE FUNCTION ShootDuration(days INT) RETURNS VARCHAR(20)
BEGIN
  RETURN IF(days>7,'Long Shoot','Short Shoot');
END$$
DELIMITER ;

-- 32. Use ShootDuration
SELECT SiteName, DaysSpent, ShootDuration(DaysSpent) AS DurationType FROM ShootingLocations;

-- 33. Function to classify indoor/outdoor
DELIMITER $$
CREATE FUNCTION ShootType(type VARCHAR(10)) RETURNS VARCHAR(20)
BEGIN
  RETURN IF(type='Indoor','Studio Shoot','Outdoor Shoot');
END$$
DELIMITER ;

-- 34. Use ShootType
SELECT SiteName, IndoorOutdoor, ShootType(IndoorOutdoor) AS ShootCategory FROM ShootingLocations;

-- 35. Function to check permit requirement
DELIMITER $$
CREATE FUNCTION PermitStatus(permit BOOLEAN) RETURNS VARCHAR(20)
BEGIN
  RETURN IF(permit=TRUE,'Permit Needed','No Permit');
END$$
DELIMITER ;

-- 36. Use PermitStatus
SELECT SiteName, PermitRequired, PermitStatus(PermitRequired) AS PermitInfo FROM ShootingLocations;

-- 37. Function to combine city & site
DELIMITER $$
CREATE FUNCTION FullLocation(city VARCHAR(50), site VARCHAR(100)) RETURNS VARCHAR(200)
BEGIN
  RETURN CONCAT(city,' - ',site);
END$$
DELIMITER ;

-- 38. Use FullLocation
SELECT FullLocation(City,SiteName) AS CompleteLocation FROM ShootingLocations;

-- 39. Function to classify busy cities (more than 2 shoots)
DELIMITER $$
CREATE FUNCTION BusyCity(city VARCHAR(50)) RETURNS VARCHAR(20)
BEGIN
  DECLARE cnt INT;
  SELECT COUNT(*) INTO cnt FROM ShootingLocations WHERE City=city;
  RETURN IF(cnt>2,'Busy City','Normal City');
END$$
DELIMITER ;

-- 40. Use BusyCity
SELECT City, BusyCity(City) AS CityStatus FROM ShootingLocations;


-- 41. Rank locations by DaysSpent
SELECT SiteName, DaysSpent,
       RANK() OVER (ORDER BY DaysSpent DESC) AS RankByDays
FROM ShootingLocations;

-- 42. Dense rank by days
SELECT SiteName, DaysSpent,
       DENSE_RANK() OVER (ORDER BY DaysSpent DESC) AS DenseRankDays
FROM ShootingLocations;

-- 43. Row number
SELECT SiteName, ROW_NUMBER() OVER (ORDER BY LocationID) AS RowNum FROM ShootingLocations;

-- 44. Running total of days spent
SELECT SiteName, DaysSpent,
       SUM(DaysSpent) OVER (ORDER BY LocationID) AS RunningTotalDays
FROM ShootingLocations;

-- 45. Lag: previous location's days
SELECT SiteName, DaysSpent,
       LAG(DaysSpent,1) OVER (ORDER BY LocationID) AS PrevDays
FROM ShootingLocations;

-- 46. Lead: next location's days
SELECT SiteName, DaysSpent,
       LEAD(DaysSpent,1) OVER (ORDER BY LocationID) AS NextDays
FROM ShootingLocations;

-- 47. Percent rank by days
SELECT SiteName, DaysSpent,
       PERCENT_RANK() OVER (ORDER BY DaysSpent) AS PercentRankDays
FROM ShootingLocations;

-- 48. NTILE(4) quartiles of days spent
SELECT SiteName, DaysSpent,
       NTILE(4) OVER (ORDER BY DaysSpent) AS Quartile
FROM ShootingLocations;

-- 49. First and last location by days spent
SELECT SiteName, DaysSpent,
       FIRST_VALUE(DaysSpent) OVER (ORDER BY DaysSpent) AS MinDays,
       LAST_VALUE(DaysSpent) OVER (ORDER BY DaysSpent ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS MaxDays
FROM ShootingLocations;

-- 50. Moving average of days spent over 3 locations
SELECT SiteName, DaysSpent,
       AVG(DaysSpent) OVER (ORDER BY LocationID ROWS BETWEEN 1 PRECEDING AND 1 FOLLOWING) AS MovingAvgDays
FROM ShootingLocations;


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

-- 1. Select all film budgets
SELECT * FROM FilmBudgets;

-- 2. Total budget in descending order
SELECT FilmID, TotalBudget FROM FilmBudgets ORDER BY TotalBudget DESC;

-- 3. Average production cost
SELECT AVG(ProductionCost) AS AvgProductionCost FROM FilmBudgets;

-- 4. Maximum marketing cost
SELECT MAX(MarketingCost) AS MaxMarketingCost FROM FilmBudgets;

-- 5. Minimum pre-production cost
SELECT MIN(PreProductionCost) AS MinPreProdCost FROM FilmBudgets;

-- 6. Round total budgets to nearest lakh
SELECT FilmID, ROUND(TotalBudget, -5) AS RoundedBudget FROM FilmBudgets;

-- 7. Convert currency to USD (dummy rate: 1 INR = 0.012 USD)
SELECT FilmID, TotalBudget, TotalBudget*0.012 AS TotalUSD FROM FilmBudgets;

-- 8. Concatenate FilmID with TotalBudget
SELECT CONCAT('Film-', FilmID, ': ₹', TotalBudget) AS BudgetInfo FROM FilmBudgets;

-- 9. Count of films with budget above 1 crore
SELECT COUNT(*) AS FilmsAbove1Cr FROM FilmBudgets WHERE TotalBudget > 10000000;

-- 10. Films with marketing cost greater than distribution cost
SELECT FilmID, MarketingCost, DistributionCost 
FROM FilmBudgets
WHERE MarketingCost > DistributionCost;

-- 11. Films with budget greater than average total budget
SELECT FilmID, TotalBudget
FROM FilmBudgets
WHERE TotalBudget > (SELECT AVG(TotalBudget) FROM FilmBudgets);

-- 12. Films with maximum total budget
SELECT FilmID, TotalBudget
FROM FilmBudgets
WHERE TotalBudget = (SELECT MAX(TotalBudget) FROM FilmBudgets);

-- 13. Films with marketing cost higher than average marketing cost
SELECT FilmID, MarketingCost
FROM FilmBudgets
WHERE MarketingCost > (SELECT AVG(MarketingCost) FROM FilmBudgets);

-- 14. Films with pre-production cost in top 5
SELECT FilmID, PreProductionCost
FROM FilmBudgets
WHERE PreProductionCost IN (
    SELECT PreProductionCost FROM FilmBudgets ORDER BY PreProductionCost DESC LIMIT 5
);

-- 15. Films with production cost higher than post-production cost
SELECT FilmID, ProductionCost, PostProductionCost
FROM FilmBudgets
WHERE ProductionCost > (SELECT AVG(PostProductionCost) FROM FilmBudgets);

-- 16. Films not having miscellaneous costs
SELECT FilmID FROM FilmBudgets
WHERE MiscellaneousCost = 0 OR MiscellaneousCost IS NULL;

-- 17. Films with distribution cost lower than average
SELECT FilmID, DistributionCost
FROM FilmBudgets
WHERE DistributionCost < (SELECT AVG(DistributionCost) FROM FilmBudgets);

-- 18. Subquery in SELECT: profit margin assuming revenue = TotalBudget*1.5
SELECT FilmID, TotalBudget, (TotalBudget*1.5 - TotalBudget) AS ProfitMargin FROM FilmBudgets;

-- 19. Films with total budget not equal to sum of all costs
SELECT FilmID, TotalBudget, PreProductionCost+ProductionCost+PostProductionCost+MarketingCost+DistributionCost+MiscellaneousCost AS SumCosts
FROM FilmBudgets
WHERE TotalBudget <> (PreProductionCost+ProductionCost+PostProductionCost+MarketingCost+DistributionCost+MiscellaneousCost);

-- 20. Films with budget greater than budget of FilmID=110
SELECT FilmID, TotalBudget
FROM FilmBudgets
WHERE TotalBudget > (SELECT TotalBudget FROM FilmBudgets WHERE FilmID=110);

-- 21. Join with Films to get film title
SELECT fb.FilmID, f.Title, fb.TotalBudget
FROM FilmBudgets fb
JOIN Films f ON fb.FilmID = f.FilmID;

-- 22. Join with FilmGenres to get genre
SELECT fb.FilmID, f.Title, fg.Name AS Genre, fb.TotalBudget
FROM FilmBudgets fb
JOIN Films f ON fb.FilmID = f.FilmID
JOIN FilmGenres fg ON f.GenreID = fg.GenreID;

-- 23. Join with Distributors to get distributor info
SELECT fb.FilmID, f.Title, d.Name AS Distributor, fb.TotalBudget
FROM FilmBudgets fb
JOIN Films f ON fb.FilmID = f.FilmID
JOIN Distributors d ON f.DistributorID = d.DistributorID;

-- 24. Join with Awards to get award-winning films
SELECT fb.FilmID, f.Title, aw.Name AS Award, fb.TotalBudget
FROM FilmBudgets fb
JOIN Films f ON fb.FilmID = f.FilmID
JOIN Awards aw ON f.FilmID = aw.FilmID;

-- 25. Join with Soundtracks to get number of tracks per film
SELECT fb.FilmID, f.Title, COUNT(st.TrackID) AS NumTracks, fb.TotalBudget
FROM FilmBudgets fb
JOIN Films f ON fb.FilmID = f.FilmID
LEFT JOIN Soundtracks st ON f.FilmID = st.FilmID
GROUP BY fb.FilmID, f.Title, fb.TotalBudget;

-- 26. Join with ShootingLocations to get total days spent
SELECT fb.FilmID, f.Title, SUM(sl.DaysSpent) AS TotalDays, fb.TotalBudget
FROM FilmBudgets fb
JOIN Films f ON fb.FilmID = f.FilmID
JOIN ShootingLocations sl ON f.FilmID = sl.FilmID
GROUP BY fb.FilmID, f.Title, fb.TotalBudget;

-- 27. Left join to include films without locations
SELECT fb.FilmID, f.Title, COALESCE(SUM(sl.DaysSpent),0) AS TotalDays
FROM FilmBudgets fb
JOIN Films f ON fb.FilmID = f.FilmID
LEFT JOIN ShootingLocations sl ON f.FilmID = sl.FilmID
GROUP BY fb.FilmID, f.Title;

-- 28. Join with FilmGenres to get genre-wise total budget
SELECT fg.Name AS Genre, SUM(fb.TotalBudget) AS GenreBudget
FROM FilmBudgets fb
JOIN Films f ON fb.FilmID = f.FilmID
JOIN FilmGenres fg ON f.GenreID = fg.GenreID
GROUP BY fg.Name;

-- 29. Join with Distributors to get budget per distributor
SELECT d.Name AS Distributor, SUM(fb.TotalBudget) AS TotalBudget
FROM FilmBudgets fb
JOIN Films f ON fb.FilmID = f.FilmID
JOIN Distributors d ON f.DistributorID = d.DistributorID
GROUP BY d.Name;

-- 30. Join with Awards to get total prize amount per film
SELECT f.Title, SUM(aw.PrizeAmount) AS TotalPrize
FROM FilmBudgets fb
JOIN Films f ON fb.FilmID = f.FilmID
JOIN Awards aw ON f.FilmID = aw.FilmID
GROUP BY f.Title;

-- 31. Function to calculate production percentage of total budget
DELIMITER $$
CREATE FUNCTION ProductionPercent(prod DECIMAL(12,2), total DECIMAL(12,2)) RETURNS DECIMAL(5,2)
BEGIN
    RETURN (prod/total)*100;
END$$
DELIMITER ;

-- 32. Use ProductionPercent
SELECT FilmID, ProductionCost, TotalBudget, ProductionPercent(ProductionCost,TotalBudget) AS ProdPercent
FROM FilmBudgets;

-- 33. Function to classify film budget
DELIMITER $$
CREATE FUNCTION BudgetCategory(total DECIMAL(12,2)) RETURNS VARCHAR(20)
BEGIN
    RETURN IF(total>150000000,'Big Budget','Regular Budget');
END$$
DELIMITER ;

-- 34. Use BudgetCategory
SELECT FilmID, TotalBudget, BudgetCategory(TotalBudget) AS BudgetType FROM FilmBudgets;

-- 35. Function to calculate marketing ratio
DELIMITER $$
CREATE FUNCTION MarketingRatio(marketing DECIMAL(12,2), total DECIMAL(12,2)) RETURNS DECIMAL(5,2)
BEGIN
    RETURN (marketing/total)*100;
END$$
DELIMITER ;

-- 36. Use MarketingRatio
SELECT FilmID, MarketingCost, TotalBudget, MarketingRatio(MarketingCost,TotalBudget) AS MarketingPct
FROM FilmBudgets;

-- 37. Function to check if film is profitable (assume revenue = 1.5*TotalBudget)
DELIMITER $$
CREATE FUNCTION IsProfitable(total DECIMAL(12,2)) RETURNS VARCHAR(20)
BEGIN
    RETURN IF(total*1.5>total,'Profitable','Break-even');
END$$
DELIMITER ;

-- 38. Use IsProfitable
SELECT FilmID, TotalBudget, IsProfitable(TotalBudget) AS ProfitStatus FROM FilmBudgets;

-- 39. Function to calculate post-production ratio
DELIMITER $$
CREATE FUNCTION PostProdRatio(post DECIMAL(12,2), total DECIMAL(12,2)) RETURNS DECIMAL(5,2)
BEGIN
    RETURN (post/total)*100;
END$$
DELIMITER ;

-- 40. Use PostProdRatio
SELECT FilmID, PostProductionCost, TotalBudget, PostProdRatio(PostProductionCost,TotalBudget) AS PostPct
FROM FilmBudgets;


-- 41. Rank films by total budget
SELECT FilmID, TotalBudget, RANK() OVER (ORDER BY TotalBudget DESC) AS BudgetRank
FROM FilmBudgets;

-- 42. Dense rank by production cost
SELECT FilmID, ProductionCost, DENSE_RANK() OVER (ORDER BY ProductionCost DESC) AS ProdRank
FROM FilmBudgets;

-- 43. Row number
SELECT FilmID, ROW_NUMBER() OVER (ORDER BY BudgetID) AS RowNum FROM FilmBudgets;

-- 44. Running total of budgets
SELECT FilmID, TotalBudget, SUM(TotalBudget) OVER (ORDER BY BudgetID) AS RunningTotal
FROM FilmBudgets;

-- 45. Lag: previous film's total budget
SELECT FilmID, TotalBudget, LAG(TotalBudget,1) OVER (ORDER BY BudgetID) AS PrevBudget
FROM FilmBudgets;

-- 46. Lead: next film's total budget
SELECT FilmID, TotalBudget, LEAD(TotalBudget,1) OVER (ORDER BY BudgetID) AS NextBudget
FROM FilmBudgets;

-- 47. Percent rank by total budget
SELECT FilmID, TotalBudget, PERCENT_RANK() OVER (ORDER BY TotalBudget) AS PercentRankBudget
FROM FilmBudgets;

-- 48. NTILE(4) quartiles of total budget
SELECT FilmID, TotalBudget, NTILE(4) OVER (ORDER BY TotalBudget) AS BudgetQuartile
FROM FilmBudgets;

-- 49. First and last total budget
SELECT FilmID, TotalBudget,
       FIRST_VALUE(TotalBudget) OVER (ORDER BY TotalBudget) AS MinBudget,
       LAST_VALUE(TotalBudget) OVER (ORDER BY TotalBudget ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS MaxBudget
FROM FilmBudgets;

-- 50. Moving average of total budget (3 films)
SELECT FilmID, TotalBudget,
       AVG(TotalBudget) OVER (ORDER BY BudgetID ROWS BETWEEN 1 PRECEDING AND 1 FOLLOWING) AS MovingAvgBudget
FROM FilmBudgets;

-- to display table data
SELECT * FROM FilmReviews;

-- to remove complete records from table
TRUNCATE TABLE FilmReviews;

-- to remove complete records and attributes from table
DROP TABLE FilmReviews;


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

-- 1. Select all reviews
SELECT * FROM FilmReviews;

-- 2. Reviews sorted by rating descending
SELECT ReviewerName, FilmID, Rating FROM FilmReviews ORDER BY Rating DESC;

-- 3. Average rating of all reviews
SELECT AVG(Rating) AS AvgRating FROM FilmReviews;

-- 4. Maximum likes received
SELECT MAX(Likes) AS MaxLikes FROM FilmReviews;

-- 5. Minimum rating
SELECT MIN(Rating) AS MinRating FROM FilmReviews;

-- 6. Round ratings to nearest integer
SELECT ReviewID, ROUND(Rating) AS RoundedRating FROM FilmReviews;

-- 7. Count of verified reviews
SELECT COUNT(*) AS VerifiedCount FROM FilmReviews WHERE Verified = TRUE;

-- 8. Concatenate reviewer name with rating
SELECT CONCAT(ReviewerName, ' rated ', Rating) AS ReviewSummary FROM FilmReviews;

-- 9. Reviews with likes greater than 2000
SELECT ReviewID, ReviewerName, Likes FROM FilmReviews WHERE Likes > 2000;

-- 10. Reviews on 'Google Reviews' platform
SELECT * FROM FilmReviews WHERE Platform='Google Reviews';

-- 11. Reviews with rating above average
SELECT ReviewID, FilmID, Rating
FROM FilmReviews
WHERE Rating > (SELECT AVG(Rating) FROM FilmReviews);

-- 12. Review with maximum likes
SELECT * FROM FilmReviews
WHERE Likes = (SELECT MAX(Likes) FROM FilmReviews);

-- 13. Reviews for films with FilmID having budget > 1 crore (requires join with FilmBudgets)
SELECT fr.ReviewID, fr.FilmID, fr.Rating
FROM FilmReviews fr
WHERE fr.FilmID IN (
    SELECT FilmID FROM FilmBudgets WHERE TotalBudget > 10000000
);

-- 14. Reviews not verified
SELECT * FROM FilmReviews
WHERE Verified = FALSE;

-- 15. Reviews in top 3 by likes
SELECT * FROM FilmReviews
WHERE Likes IN (
    SELECT Likes FROM FilmReviews ORDER BY Likes DESC LIMIT 3
);

-- 16. Reviews with rating equal to median rating
SELECT * FROM FilmReviews
WHERE Rating = (SELECT Rating FROM FilmReviews ORDER BY Rating LIMIT 1 OFFSET 9);

-- 17. Reviews with rating higher than film’s average (requires join with FilmReviews itself)
SELECT fr1.ReviewID, fr1.FilmID, fr1.Rating
FROM FilmReviews fr1
WHERE fr1.Rating > (SELECT AVG(fr2.Rating) FROM FilmReviews fr2 WHERE fr2.FilmID=fr1.FilmID);

-- 18. Reviews posted in 2023
SELECT * FROM FilmReviews WHERE YEAR(ReviewDate)=2023;

-- 19. Reviews with more likes than average likes
SELECT * FROM FilmReviews WHERE Likes > (SELECT AVG(Likes) FROM FilmReviews);

-- 20. Reviews with rating higher than a specific reviewer (e.g., Taran Adarsh)
SELECT * FROM FilmReviews
WHERE Rating > (SELECT Rating FROM FilmReviews WHERE ReviewerName='Taran Adarsh');


-- 21. Join with Films to get film title
SELECT fr.ReviewID, fr.Rating, f.Title
FROM FilmReviews fr
JOIN Films f ON fr.FilmID = f.FilmID;

-- 22. Join with FilmGenres to get genre
SELECT fr.ReviewID, f.Title, fg.Name AS Genre, fr.Rating
FROM FilmReviews fr
JOIN Films f ON fr.FilmID = f.FilmID
JOIN FilmGenres fg ON f.GenreID = fg.GenreID;

-- 23. Join with FilmBudgets to get total budget
SELECT fr.ReviewID, f.Title, fb.TotalBudget, fr.Rating
FROM FilmReviews fr
JOIN FilmBudgets fb ON fr.FilmID = fb.FilmID
JOIN Films f ON fr.FilmID = f.FilmID;

-- 24. Join with Awards to see if reviewed film won any awards
SELECT fr.ReviewID, f.Title, aw.Name AS Award, fr.Rating
FROM FilmReviews fr
JOIN Films f ON fr.FilmID = f.FilmID
LEFT JOIN Awards aw ON f.FilmID = aw.FilmID;

-- 25. Join with Soundtracks to get number of tracks per film
SELECT fr.ReviewID, f.Title, COUNT(st.TrackID) AS NumTracks
FROM FilmReviews fr
JOIN Films f ON fr.FilmID = f.FilmID
LEFT JOIN Soundtracks st ON f.FilmID = st.FilmID
GROUP BY fr.ReviewID, f.Title;

-- 26. Join with ShootingLocations to get total days spent per film
SELECT fr.ReviewID, f.Title, SUM(sl.DaysSpent) AS TotalDays
FROM FilmReviews fr
JOIN Films f ON fr.FilmID = f.FilmID
JOIN ShootingLocations sl ON f.FilmID = sl.FilmID
GROUP BY fr.ReviewID, f.Title;

-- 27. Left join to include reviews for films without awards
SELECT fr.ReviewID, f.Title, COALESCE(aw.Name,'No Award') AS Award
FROM FilmReviews fr
JOIN Films f ON fr.FilmID = f.FilmID
LEFT JOIN Awards aw ON f.FilmID = aw.FilmID;

-- 28. Count reviews per film
SELECT fr.FilmID, f.Title, COUNT(fr.ReviewID) AS NumReviews
FROM FilmReviews fr
JOIN Films f ON fr.FilmID = f.FilmID
GROUP BY fr.FilmID, f.Title;

-- 29. Average rating per film
SELECT fr.FilmID, f.Title, AVG(fr.Rating) AS AvgRating
FROM FilmReviews fr
JOIN Films f ON fr.FilmID = f.FilmID
GROUP BY fr.FilmID, f.Title;

-- 30. Max likes per film
SELECT fr.FilmID, f.Title, MAX(fr.Likes) AS MaxLikes
FROM FilmReviews fr
JOIN Films f ON fr.FilmID = f.FilmID
GROUP BY fr.FilmID, f.Title;


-- 31. Function to classify review rating
DELIMITER $$
CREATE FUNCTION RatingCategory(r DECIMAL(3,1)) RETURNS VARCHAR(20)
BEGIN
    RETURN IF(r>=4.5,'Excellent',IF(r>=3.5,'Good','Average'));
END$$
DELIMITER ;

-- 32. Use RatingCategory
SELECT ReviewID, Rating, RatingCategory(Rating) AS RatingClass FROM FilmReviews;

-- 33. Function to check if review is popular (likes>2000)
DELIMITER $$
CREATE FUNCTION IsPopular(l INT) RETURNS VARCHAR(10)
BEGIN
    RETURN IF(l>2000,'Popular','Normal');
END$$
DELIMITER ;

-- 34. Use IsPopular
SELECT ReviewID, Likes, IsPopular(Likes) AS Popularity FROM FilmReviews;

-- 35. Function to check if verified review has high rating
DELIMITER $$
CREATE FUNCTION VerifiedHigh(r DECIMAL(3,1), v BOOLEAN) RETURNS VARCHAR(20)
BEGIN
    RETURN IF(v AND r>=4.0,'Trusted Positive','Other');
END$$
DELIMITER ;

-- 36. Use VerifiedHigh
SELECT ReviewID, Rating, Verified, VerifiedHigh(Rating,Verified) AS Status FROM FilmReviews;

-- 37. Function to compute like-to-rating ratio
DELIMITER $$
CREATE FUNCTION LikeRatingRatio(l INT, r DECIMAL(3,1)) RETURNS DECIMAL(5,2)
BEGIN
    RETURN l/r;
END$$
DELIMITER ;

-- 38. Use LikeRatingRatio
SELECT ReviewID, Likes, Rating, LikeRatingRatio(Likes,Rating) AS LikePerRating FROM FilmReviews;

-- 39. Function to check recent review (within last year)
DELIMITER $$
CREATE FUNCTION RecentReview(d DATE) RETURNS VARCHAR(10)
BEGIN
    RETURN IF(d >= DATE_SUB(CURDATE(), INTERVAL 1 YEAR),'Recent','Old');
END$$
DELIMITER ;

-- 40. Use RecentReview
SELECT ReviewID, ReviewDate, RecentReview(ReviewDate) AS ReviewAge FROM FilmReviews;


-- 41. Rank reviews by likes
SELECT ReviewID, Likes, RANK() OVER (ORDER BY Likes DESC) AS LikeRank FROM FilmReviews;

-- 42. Dense rank by rating
SELECT ReviewID, Rating, DENSE_RANK() OVER (ORDER BY Rating DESC) AS RatingRank FROM FilmReviews;

-- 43. Row number of reviews per film
SELECT ReviewID, FilmID, ROW_NUMBER() OVER (PARTITION BY FilmID ORDER BY Likes DESC) AS ReviewNumPerFilm
FROM FilmReviews;

-- 44. Running total of likes
SELECT ReviewID, Likes, SUM(Likes) OVER (ORDER BY ReviewID) AS RunningLikes FROM FilmReviews;

-- 45. Lag previous review rating
SELECT ReviewID, Rating, LAG(Rating,1) OVER (ORDER BY ReviewID) AS PrevRating FROM FilmReviews;

-- 46. Lead next review rating
SELECT ReviewID, Rating, LEAD(Rating,1) OVER (ORDER BY ReviewID) AS NextRating FROM FilmReviews;

-- 47. Percent rank by likes
SELECT ReviewID, Likes, PERCENT_RANK() OVER (ORDER BY Likes) AS PercentRankLikes FROM FilmReviews;

-- 48. NTILE(4) quartiles of likes
SELECT ReviewID, Likes, NTILE(4) OVER (ORDER BY Likes) AS LikesQuartile FROM FilmReviews;

-- 49. First and last review dates
SELECT ReviewID, ReviewDate,
       FIRST_VALUE(ReviewDate) OVER (ORDER BY ReviewDate) AS FirstReview,
       LAST_VALUE(ReviewDate) OVER (ORDER BY ReviewDate ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS LastReview
FROM FilmReviews;

-- 50. Moving average of ratings (3 reviews)
SELECT ReviewID, Rating,
       AVG(Rating) OVER (ORDER BY ReviewID ROWS BETWEEN 1 PRECEDING AND 1 FOLLOWING) AS MovingAvgRating
FROM FilmReviews;

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

-- 1. Select all scripts
SELECT * FROM FilmScripts;

-- 2. Scripts sorted by submission date
SELECT ScriptID, ScriptTitle, SubmissionDate FROM FilmScripts ORDER BY SubmissionDate DESC;

-- 3. Count of approved scripts
SELECT COUNT(*) AS ApprovedScripts FROM FilmScripts WHERE Approved = TRUE;

-- 4. Count of scripts per language
SELECT Language, COUNT(*) AS NumScripts FROM FilmScripts GROUP BY Language;

-- 5. Maximum version number
SELECT MAX(VersionNumber) AS MaxVersion FROM FilmScripts;

-- 6. Minimum version number
SELECT MIN(VersionNumber) AS MinVersion FROM FilmScripts;

-- 7. Scripts submitted in 2020
SELECT * FROM FilmScripts WHERE YEAR(SubmissionDate)=2020;

-- 8. Scripts containing 'Action' in genre
SELECT * FROM FilmScripts WHERE Genre LIKE '%Action%';

-- 9. Concatenate ScriptTitle with WriterName
SELECT CONCAT(ScriptTitle,' by ',WriterName) AS ScriptInfo FROM FilmScripts;

-- 10. Scripts with version number greater than 1
SELECT * FROM FilmScripts WHERE VersionNumber > 1;

-- 11. Scripts with version higher than average
SELECT * FROM FilmScripts
WHERE VersionNumber > (SELECT AVG(VersionNumber) FROM FilmScripts);

-- 12. Scripts submitted after the earliest submission date
SELECT * FROM FilmScripts
WHERE SubmissionDate > (SELECT MIN(SubmissionDate) FROM FilmScripts);

-- 13. Scripts for films with budget over 1 crore (join with FilmBudgets in subquery)
SELECT * FROM FilmScripts
WHERE FilmID IN (SELECT FilmID FROM FilmBudgets WHERE TotalBudget > 10000000);

-- 14. Scripts not yet approved
SELECT * FROM FilmScripts WHERE Approved = FALSE;

-- 15. Scripts with genre matching the most common genre
SELECT * FROM FilmScripts
WHERE Genre = (SELECT Genre FROM FilmScripts GROUP BY Genre ORDER BY COUNT(*) DESC LIMIT 1);

-- 16. Latest script per film (subquery)
SELECT * FROM FilmScripts fs1
WHERE VersionNumber = (SELECT MAX(VersionNumber) FROM FilmScripts fs2 WHERE fs1.FilmID=fs2.FilmID);

-- 17. Scripts written by writers who wrote more than one script
SELECT * FROM FilmScripts
WHERE WriterName IN (SELECT WriterName FROM FilmScripts GROUP BY WriterName HAVING COUNT(*) > 1);

-- 18. Scripts submitted before 2018
SELECT * FROM FilmScripts WHERE SubmissionDate < '2018-01-01';

-- 19. Scripts with version number equal to median version
SELECT * FROM FilmScripts
WHERE VersionNumber = (SELECT VersionNumber FROM FilmScripts ORDER BY VersionNumber LIMIT 1 OFFSET 9);

-- 20. Scripts for films in FilmReviews table with rating >4
SELECT * FROM FilmScripts
WHERE FilmID IN (SELECT FilmID FROM FilmReviews WHERE Rating > 4);



-- 21. Join with Films to get film titles
SELECT fs.ScriptID, fs.ScriptTitle, f.Title AS FilmTitle
FROM FilmScripts fs
JOIN Films f ON fs.FilmID = f.FilmID;

-- 22. Join with FilmReviews to get average rating per script
SELECT fs.ScriptID, fs.ScriptTitle, AVG(fr.Rating) AS AvgRating
FROM FilmScripts fs
JOIN FilmReviews fr ON fs.FilmID = fr.FilmID
GROUP BY fs.ScriptID, fs.ScriptTitle;

-- 23. Join with FilmBudgets to get production cost
SELECT fs.ScriptID, fs.ScriptTitle, fb.ProductionCost
FROM FilmScripts fs
JOIN FilmBudgets fb ON fs.FilmID = fb.FilmID;

-- 24. Join with ShootingLocations to get total shooting days for script's film
SELECT fs.ScriptID, fs.ScriptTitle, SUM(sl.DaysSpent) AS TotalDays
FROM FilmScripts fs
JOIN ShootingLocations sl ON fs.FilmID = sl.FilmID
GROUP BY fs.ScriptID, fs.ScriptTitle;

-- 25. Left join with Awards to check if film has any award
SELECT fs.ScriptID, fs.ScriptTitle, COALESCE(aw.Name,'No Award') AS Award
FROM FilmScripts fs
LEFT JOIN Awards aw ON fs.FilmID = aw.FilmID;

-- 26. Count of scripts per genre
SELECT Genre, COUNT(*) AS NumScripts FROM FilmScripts GROUP BY Genre;

-- 27. Scripts with their corresponding soundtrack count
SELECT fs.ScriptID, fs.ScriptTitle, COUNT(st.TrackID) AS NumTracks
FROM FilmScripts fs
LEFT JOIN Soundtracks st ON fs.FilmID = st.FilmID
GROUP BY fs.ScriptID, fs.ScriptTitle;

-- 28. Scripts joined with reviews showing likes
SELECT fs.ScriptID, fs.ScriptTitle, fr.Likes
FROM FilmScripts fs
JOIN FilmReviews fr ON fs.FilmID = fr.FilmID;

-- 29. Scripts with maximum version per film
SELECT fs1.ScriptID, fs1.ScriptTitle, fs1.VersionNumber
FROM FilmScripts fs1
JOIN (
    SELECT FilmID, MAX(VersionNumber) AS MaxVersion
    FROM FilmScripts
    GROUP BY FilmID
) fs2 ON fs1.FilmID = fs2.FilmID AND fs1.VersionNumber = fs2.MaxVersion;

-- 30. Scripts and film budget info
SELECT fs.ScriptID, fs.ScriptTitle, fb.TotalBudget, fb.MarketingCost
FROM FilmScripts fs
JOIN FilmBudgets fb ON fs.FilmID = fb.FilmID;


-- 31. Function to classify script version
DELIMITER $$
CREATE FUNCTION VersionCategory(v INT) RETURNS VARCHAR(20)
BEGIN
    RETURN IF(v>=3,'Final','Draft');
END$$
DELIMITER ;

-- 32. Use VersionCategory
SELECT ScriptID, VersionNumber, VersionCategory(VersionNumber) AS VersionStatus FROM FilmScripts;

-- 33. Function to check if script approved
DELIMITER $$
CREATE FUNCTION ApprovedStatus(a BOOLEAN) RETURNS VARCHAR(20)
BEGIN
    RETURN IF(a,'Approved','Pending');
END$$
DELIMITER ;

-- 34. Use ApprovedStatus
SELECT ScriptID, Approved, ApprovedStatus(Approved) AS Status FROM FilmScripts;

-- 35. Function to check if script is recent (submitted within 2 years)
DELIMITER $$
CREATE FUNCTION RecentScript(d DATE) RETURNS VARCHAR(10)
BEGIN
    RETURN IF(d >= DATE_SUB(CURDATE(), INTERVAL 2 YEAR),'Recent','Old');
END$$
DELIMITER ;

-- 36. Use RecentScript
SELECT ScriptID, SubmissionDate, RecentScript(SubmissionDate) AS ScriptAge FROM FilmScripts;

-- 37. Function to check if genre is Action
DELIMITER $$
CREATE FUNCTION IsAction(g VARCHAR(50)) RETURNS VARCHAR(10)
BEGIN
    RETURN IF(g='Action','Yes','No');
END$$
DELIMITER ;

-- 38. Use IsAction
SELECT ScriptID, Genre, IsAction(Genre) AS ActionFlag FROM FilmScripts;

-- 39. Function to get Writer initial
DELIMITER $$
CREATE FUNCTION WriterInitial(w VARCHAR(100)) RETURNS CHAR(1)
BEGIN
    RETURN LEFT(w,1);
END$$
DELIMITER ;

-- 40. Use WriterInitial
SELECT ScriptID, WriterName, WriterInitial(WriterName) AS Initial FROM FilmScripts;


-- 41. Rank scripts by version number
SELECT ScriptID, VersionNumber, RANK() OVER (ORDER BY VersionNumber DESC) AS VersionRank FROM FilmScripts;

-- 42. Dense rank by submission date
SELECT ScriptID, SubmissionDate, DENSE_RANK() OVER (ORDER BY SubmissionDate DESC) AS SubmissionRank FROM FilmScripts;

-- 43. Row number partitioned by language
SELECT ScriptID, Language, ROW_NUMBER() OVER (PARTITION BY Language ORDER BY VersionNumber DESC) AS RowNumPerLang FROM FilmScripts;

-- 44. Running total of versions
SELECT ScriptID, VersionNumber, SUM(VersionNumber) OVER (ORDER BY ScriptID) AS RunningTotal FROM FilmScripts;

-- 45. Lag previous script version
SELECT ScriptID, VersionNumber, LAG(VersionNumber,1) OVER (ORDER BY ScriptID) AS PrevVersion FROM FilmScripts;

-- 46. Lead next script version
SELECT ScriptID, VersionNumber, LEAD(VersionNumber,1) OVER (ORDER BY ScriptID) AS NextVersion FROM FilmScripts;

-- 47. Percent rank by version
SELECT ScriptID, VersionNumber, PERCENT_RANK() OVER (ORDER BY VersionNumber) AS PercentRank FROM FilmScripts;

-- 48. NTILE quartiles of version
SELECT ScriptID, VersionNumber, NTILE(4) OVER (ORDER BY VersionNumber) AS VersionQuartile FROM FilmScripts;

-- 49. First and last submission dates
SELECT ScriptID, SubmissionDate,
       FIRST_VALUE(SubmissionDate) OVER (ORDER BY SubmissionDate) AS FirstSubmission,
       LAST_VALUE(SubmissionDate) OVER (ORDER BY SubmissionDate ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS LastSubmission
FROM FilmScripts;

-- 50. Moving average of version numbers (3 scripts)
SELECT ScriptID, VersionNumber,
       AVG(VersionNumber) OVER (ORDER BY ScriptID ROWS BETWEEN 1 PRECEDING AND 1 FOLLOWING);

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

-- 2. Sort films by TotalRevenue descending
SELECT FilmID, TotalRevenue FROM BoxOffice ORDER BY TotalRevenue DESC;

-- 3. Count of profitable films
SELECT COUNT(*) AS ProfitableFilms FROM BoxOffice WHERE ProfitOrLoss='Profit';

-- 4. Count of films per currency
SELECT Currency, COUNT(*) AS NumFilms FROM BoxOffice GROUP BY Currency;

-- 5. Maximum OpeningWeekendCollection
SELECT MAX(OpeningWeekendCollection) AS MaxOpeningWeekend FROM BoxOffice;

-- 6. Minimum TotalDomesticCollection
SELECT MIN(TotalDomesticCollection) AS MinDomestic FROM BoxOffice;

-- 7. Average TotalRevenue
SELECT AVG(TotalRevenue) AS AvgRevenue FROM BoxOffice;

-- 8. Films released in 2022
SELECT * FROM BoxOffice WHERE YEAR(ReleaseDate)=2022;

-- 9. Concatenate FilmID and ProfitOrLoss
SELECT CONCAT('FilmID ',FilmID,' - ',ProfitOrLoss) AS RevenueStatus FROM BoxOffice;

-- 10. Films with TotalScreens > 2000
SELECT * FROM BoxOffice WHERE TotalScreens > 2000;


-- 11. Films with TotalRevenue above average
SELECT * FROM BoxOffice
WHERE TotalRevenue > (SELECT AVG(TotalRevenue) FROM BoxOffice);

-- 12. Films released after earliest release
SELECT * FROM BoxOffice
WHERE ReleaseDate > (SELECT MIN(ReleaseDate) FROM BoxOffice);

-- 13. Films with OpeningWeekendCollection higher than median
SELECT * FROM BoxOffice
WHERE OpeningWeekendCollection > (SELECT OpeningWeekendCollection FROM BoxOffice ORDER BY OpeningWeekendCollection LIMIT 1 OFFSET 9);

-- 14. Films not in profit
SELECT * FROM BoxOffice WHERE ProfitOrLoss='Loss';

-- 15. Films with maximum TotalRevenue
SELECT * FROM BoxOffice
WHERE TotalRevenue = (SELECT MAX(TotalRevenue) FROM BoxOffice);

-- 16. Films with OpeningWeekendCollection above average
SELECT * FROM BoxOffice
WHERE OpeningWeekendCollection > (SELECT AVG(OpeningWeekendCollection) FROM BoxOffice);

-- 17. Films with TotalDomesticCollection below average
SELECT * FROM BoxOffice
WHERE TotalDomesticCollection < (SELECT AVG(TotalDomesticCollection) FROM BoxOffice);

-- 18. Latest film release
SELECT * FROM BoxOffice
WHERE ReleaseDate = (SELECT MAX(ReleaseDate) FROM BoxOffice);

-- 19. Films with TotalScreens in top 25%
SELECT * FROM BoxOffice
WHERE TotalScreens >= (SELECT MAX(TotalScreens)*0.75 FROM BoxOffice);

-- 20. Films that exist in FilmScripts table
SELECT * FROM BoxOffice
WHERE FilmID IN (SELECT FilmID FROM FilmScripts);


-- 21. Join with Films table to get film titles
SELECT bo.FilmID, f.Title AS FilmTitle, bo.TotalRevenue
FROM BoxOffice bo
JOIN Films f ON bo.FilmID = f.FilmID;

-- 22. Join with FilmBudgets to calculate profit margin
SELECT bo.FilmID, fb.TotalBudget, bo.TotalRevenue, 
       (bo.TotalRevenue - fb.TotalBudget)/fb.TotalBudget*100 AS ProfitMargin
FROM BoxOffice bo
JOIN FilmBudgets fb ON bo.FilmID = fb.FilmID;

-- 23. Join with FilmReviews to get average rating per film
SELECT bo.FilmID, AVG(fr.Rating) AS AvgRating
FROM BoxOffice bo
JOIN FilmReviews fr ON bo.FilmID = fr.FilmID
GROUP BY bo.FilmID;

-- 24. Join with FilmScripts to count versions per film
SELECT bo.FilmID, COUNT(fs.VersionNumber) AS NumVersions
FROM BoxOffice bo
JOIN FilmScripts fs ON bo.FilmID = fs.FilmID
GROUP BY bo.FilmID;

-- 25. Left join with Awards to check if film won award
SELECT bo.FilmID, COALESCE(aw.Name,'No Award') AS AwardName
FROM BoxOffice bo
LEFT JOIN Awards aw ON bo.FilmID = aw.FilmID;

-- 26. Join with ShootingLocations to get total shooting days
SELECT bo.FilmID, SUM(sl.DaysSpent) AS TotalShootingDays
FROM BoxOffice bo
JOIN ShootingLocations sl ON bo.FilmID = sl.FilmID
GROUP BY bo.FilmID;

-- 27. Join with FilmScripts to get latest version
SELECT bo.FilmID, fs.ScriptTitle, fs.VersionNumber
FROM BoxOffice bo
JOIN FilmScripts fs ON bo.FilmID = fs.FilmID
WHERE fs.VersionNumber = (SELECT MAX(VersionNumber) FROM FilmScripts WHERE FilmID=bo.FilmID);

-- 28. Films with average review rating >4
SELECT bo.FilmID, AVG(fr.Rating) AS AvgRating
FROM BoxOffice bo
JOIN FilmReviews fr ON bo.FilmID = fr.FilmID
GROUP BY bo.FilmID
HAVING AVG(fr.Rating) > 4;

-- 29. Films with maximum domestic collection per year
SELECT bo.*
FROM BoxOffice bo
JOIN (
    SELECT YEAR(ReleaseDate) AS Yr, MAX(TotalDomesticCollection) AS MaxDomestic
    FROM BoxOffice
    GROUP BY YEAR(ReleaseDate)
) t ON YEAR(bo.ReleaseDate)=t.Yr AND bo.TotalDomesticCollection=t.MaxDomestic;

-- 30. Films with revenue vs budget difference
SELECT bo.FilmID, bo.TotalRevenue, fb.TotalBudget, bo.TotalRevenue - fb.TotalBudget AS NetProfit
FROM BoxOffice bo
JOIN FilmBudgets fb ON bo.FilmID = fb.FilmID;


-- 31. Function to classify Profit/Loss
DELIMITER $$
CREATE FUNCTION ProfitStatus(rev DECIMAL(12,2), budget DECIMAL(12,2)) RETURNS VARCHAR(10)
BEGIN
  RETURN IF(rev>budget,'Profit','Loss');
END$$
DELIMITER ;

-- 32. Use ProfitStatus function
SELECT bo.FilmID, bo.TotalRevenue, fb.TotalBudget, ProfitStatus(bo.TotalRevenue, fb.TotalBudget) AS ProfitLoss
FROM BoxOffice bo
JOIN FilmBudgets fb ON bo.FilmID = fb.FilmID;

-- 33. Function to classify opening success
DELIMITER $$
CREATE FUNCTION OpeningSuccess(opening DECIMAL(12,2)) RETURNS VARCHAR(20)
BEGIN
  RETURN IF(opening>50000000,'Blockbuster','Average');
END$$
DELIMITER ;

-- 34. Use OpeningSuccess function
SELECT FilmID, OpeningWeekendCollection, OpeningSuccess(OpeningWeekendCollection) AS OpeningCategory FROM BoxOffice;

-- 35. Function to calculate ROI %
DELIMITER $$
CREATE FUNCTION ROI(totalrev DECIMAL(12,2), budget DECIMAL(12,2)) RETURNS DECIMAL(5,2)
BEGIN
  RETURN ((totalrev-budget)/budget)*100;
END$$
DELIMITER ;

-- 36. Use ROI function
SELECT bo.FilmID, ROI(bo.TotalRevenue, fb.TotalBudget) AS ReturnOnInvestment
FROM BoxOffice bo
JOIN FilmBudgets fb ON bo.FilmID = fb.FilmID;

-- 37. Function to check domestic hit
DELIMITER $$
CREATE FUNCTION DomesticHit(domestic DECIMAL(12,2)) RETURNS VARCHAR(10)
BEGIN
  RETURN IF(domestic>10000000,'Hit','Flop');
END$$
DELIMITER ;

-- 38. Use DomesticHit
SELECT FilmID, TotalDomesticCollection, DomesticHit(TotalDomesticCollection) AS DomesticStatus FROM BoxOffice;

-- 39. Function to classify release scale
DELIMITER $$
CREATE FUNCTION ReleaseScale(screens INT) RETURNS VARCHAR(20)
BEGIN
  RETURN IF(screens>3000,'Pan-India','Limited');
END$$
DELIMITER ;

-- 40. Use ReleaseScale
SELECT FilmID, TotalScreens, ReleaseScale(TotalScreens) AS Scale FROM BoxOffice;


-- 41. Rank films by TotalRevenue
SELECT FilmID, TotalRevenue, RANK() OVER (ORDER BY TotalRevenue DESC) AS RevenueRank FROM BoxOffice;

-- 42. Dense rank by OpeningWeekendCollection
SELECT FilmID, OpeningWeekendCollection, DENSE_RANK() OVER (ORDER BY OpeningWeekendCollection DESC) AS OpeningRank FROM BoxOffice;

-- 43. Row number partitioned by Currency
SELECT FilmID, Currency, ROW_NUMBER() OVER (PARTITION BY Currency ORDER BY TotalRevenue DESC) AS RowNum FROM BoxOffice;

-- 44. Running total of TotalDomesticCollection
SELECT FilmID, TotalDomesticCollection, SUM(TotalDomesticCollection) OVER (ORDER BY ReleaseDate) AS RunningDomesticTotal FROM BoxOffice;

-- 45. Previous film revenue using LAG
SELECT FilmID, TotalRevenue, LAG(TotalRevenue,1) OVER (ORDER BY ReleaseDate) AS PrevRevenue FROM BoxOffice;

-- 46. Next film revenue using LEAD
SELECT FilmID, TotalRevenue, LEAD(TotalRevenue,1) OVER (ORDER BY ReleaseDate) AS NextRevenue FROM BoxOffice;

-- 47. Percent rank by TotalRevenue
SELECT FilmID, TotalRevenue, PERCENT_RANK() OVER (ORDER BY TotalRevenue) AS PercentRank FROM BoxOffice;

-- 48. NTILE quartiles by TotalRevenue
SELECT FilmID, TotalRevenue, NTILE(4) OVER (ORDER BY TotalRevenue) AS RevenueQuartile FROM BoxOffice;

-- 49. First and last release dates
SELECT FilmID, ReleaseDate,
       FIRST_VALUE(ReleaseDate) OVER (ORDER BY ReleaseDate) AS FirstRelease,
       LAST_VALUE(ReleaseDate) OVER (ORDER BY ReleaseDate ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS LastRelease
FROM BoxOffice;

-- 50. Moving average of OpeningWeekendCollection (3-film window)
SELECT FilmID, OpeningWeekendCollection, 
       AVG(OpeningWeekendCollection) OVER (ORDER BY ReleaseDate ROWS BETWEEN 2 PRECEDING AND CURRENT ROW) AS MovingAvgOpening
FROM BoxOffice;


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


-- 1. Select all casting calls
SELECT * FROM CastingCalls;

-- 2. Select open casting calls
SELECT * FROM CastingCalls WHERE Status='Open';

-- 3. Count of casting calls per gender
SELECT GenderRequired, COUNT(*) AS NumCalls
FROM CastingCalls
GROUP BY GenderRequired;

-- 4. Count of calls per location
SELECT Location, COUNT(*) AS CallsAtLocation
FROM CastingCalls
GROUP BY Location;

-- 5. Find earliest audition date
SELECT MIN(AuditionDate) AS EarliestAudition FROM CastingCalls;

-- 6. Find latest audition date
SELECT MAX(AuditionDate) AS LatestAudition FROM CastingCalls;

-- 7. Count of casting calls for a particular film
SELECT FilmID, COUNT(*) AS NumCalls
FROM CastingCalls
GROUP BY FilmID;

-- 8. Concatenate RoleTitle and Location
SELECT CONCAT(RoleTitle, ' @ ', Location) AS RoleInfo FROM CastingCalls;

-- 9. Filter casting calls for Male actors aged 25-35
SELECT * FROM CastingCalls
WHERE GenderRequired='Male' AND AgeRange='25-35';

-- 10. Order casting calls by AuditionDate ascending
SELECT * FROM CastingCalls ORDER BY AuditionDate;

-- 11. Casting calls for films with open BoxOffice records
SELECT * FROM CastingCalls
WHERE FilmID IN (SELECT FilmID FROM BoxOffice WHERE ProfitOrLoss='Profit');

-- 12. Casting calls for films with TotalRevenue above average
SELECT * FROM CastingCalls
WHERE FilmID IN (SELECT FilmID FROM BoxOffice WHERE TotalRevenue > (SELECT AVG(TotalRevenue) FROM BoxOffice));

-- 13. Casting calls for films that exist in FilmScripts
SELECT * FROM CastingCalls
WHERE FilmID IN (SELECT FilmID FROM FilmScripts);

-- 14. Casting calls for latest released film
SELECT * FROM CastingCalls
WHERE FilmID = (SELECT FilmID FROM BoxOffice ORDER BY ReleaseDate DESC LIMIT 1);

-- 15. Casting calls for films with maximum TotalScreens
SELECT * FROM CastingCalls
WHERE FilmID = (SELECT FilmID FROM BoxOffice ORDER BY TotalScreens DESC LIMIT 1);

-- 16. Casting calls for films with OpeningWeekendCollection above average
SELECT * FROM CastingCalls
WHERE FilmID IN (SELECT FilmID FROM BoxOffice WHERE OpeningWeekendCollection > (SELECT AVG(OpeningWeekendCollection) FROM BoxOffice));

-- 17. Casting calls for female roles in Mumbai
SELECT * FROM CastingCalls
WHERE GenderRequired='Female' AND Location='Mumbai';

-- 18. Casting calls for films not yet profitable
SELECT * FROM CastingCalls
WHERE FilmID IN (SELECT FilmID FROM BoxOffice WHERE ProfitOrLoss='Loss');

-- 19. Casting calls with oldest audition date
SELECT * FROM CastingCalls
WHERE AuditionDate = (SELECT MIN(AuditionDate) FROM CastingCalls);

-- 20. Casting calls for films that have scripts with multiple versions
SELECT * FROM CastingCalls
WHERE FilmID IN (SELECT FilmID FROM FilmScripts GROUP BY FilmID HAVING COUNT(VersionNumber) > 1);


-- 21. Join with Films to get film title
SELECT cc.CallID, cc.RoleTitle, f.Title AS FilmTitle, cc.Status
FROM CastingCalls cc
JOIN Films f ON cc.FilmID = f.FilmID;

-- 22. Join with BoxOffice to get film revenue
SELECT cc.CallID, cc.RoleTitle, bo.TotalRevenue
FROM CastingCalls cc
JOIN BoxOffice bo ON cc.FilmID = bo.FilmID;

-- 23. Join with FilmScripts to get writer
SELECT cc.CallID, cc.RoleTitle, fs.WriterName
FROM CastingCalls cc
JOIN FilmScripts fs ON cc.FilmID = fs.FilmID;

-- 24. Count of casting calls per film with join
SELECT f.Title, COUNT(cc.CallID) AS NumCastingCalls
FROM CastingCalls cc
JOIN Films f ON cc.FilmID = f.FilmID
GROUP BY f.Title;

-- 25. List casting calls with film revenue and status
SELECT cc.CallID, cc.RoleTitle, bo.TotalRevenue, cc.Status
FROM CastingCalls cc
JOIN BoxOffice bo ON cc.FilmID = bo.FilmID;

-- 26. Join with BoxOffice for profitable films only
SELECT cc.CallID, cc.RoleTitle, bo.TotalRevenue
FROM CastingCalls cc
JOIN BoxOffice bo ON cc.FilmID = bo.FilmID
WHERE bo.ProfitOrLoss='Profit';

-- 27. Join with FilmScripts for latest version
SELECT cc.CallID, cc.RoleTitle, fs.ScriptTitle, fs.VersionNumber
FROM CastingCalls cc
JOIN FilmScripts fs ON cc.FilmID = fs.FilmID
WHERE fs.VersionNumber = (SELECT MAX(VersionNumber) FROM FilmScripts WHERE FilmID=cc.FilmID);

-- 28. Join with Films to get release year
SELECT cc.CallID, cc.RoleTitle, YEAR(f.ReleaseDate) AS ReleaseYear
FROM CastingCalls cc
JOIN Films f ON cc.FilmID = f.FilmID;

-- 29. Join with BoxOffice to calculate ROI if budget table exists
SELECT cc.CallID, cc.RoleTitle, bo.TotalRevenue, fb.TotalBudget,
       (bo.TotalRevenue - fb.TotalBudget)/fb.TotalBudget*100 AS ROI
FROM CastingCalls cc
JOIN BoxOffice bo ON cc.FilmID = bo.FilmID
JOIN FilmBudgets fb ON cc.FilmID = fb.FilmID;

-- 30. Left join to see films without casting calls
SELECT f.Title, cc.CallID
FROM Films f
LEFT JOIN CastingCalls cc ON f.FilmID = cc.FilmID;


-- 31. Function to classify age range as Young/Adult/Mature
DELIMITER $$
CREATE FUNCTION AgeCategory(age_range VARCHAR(20)) RETURNS VARCHAR(10)
BEGIN
  RETURN CASE
    WHEN age_range LIKE '0-%' THEN 'Child'
    WHEN age_range LIKE '1%-25%' THEN 'Teen'
    WHEN age_range LIKE '20-35' THEN 'Young'
    WHEN age_range LIKE '25-50' THEN 'Adult'
    ELSE 'Mature'
  END;
END$$
DELIMITER ;

-- 32. Use AgeCategory function
SELECT RoleTitle, AgeRange, AgeCategory(AgeRange) AS AgeGroup FROM CastingCalls;

-- 33. Function to check if casting call is online
DELIMITER $$
CREATE FUNCTION IsOnline(location VARCHAR(100)) RETURNS VARCHAR(10)
BEGIN
  RETURN IF(location='Online','Yes','No');
END$$
DELIMITER ;

-- 34. Use IsOnline function
SELECT RoleTitle, Location, IsOnline(Location) AS OnlineStatus FROM CastingCalls;

-- 35. Function to flag priority roles (Lead/Protagonist)
DELIMITER $$
CREATE FUNCTION PriorityRole(role VARCHAR(100)) RETURNS VARCHAR(10)
BEGIN
  RETURN IF(role LIKE '%Lead%','High','Normal');
END$$
DELIMITER ;

-- 36. Use PriorityRole function
SELECT RoleTitle, PriorityRole(RoleTitle) AS Priority FROM CastingCalls;

-- 37. Function to flag audition status
DELIMITER $$
CREATE FUNCTION OpenStatus(stat VARCHAR(20)) RETURNS VARCHAR(10)
BEGIN
  RETURN IF(stat='Open','Available','Closed');
END$$
DELIMITER ;

-- 38. Use OpenStatus function
SELECT RoleTitle, Status, OpenStatus(Status) AS Availability FROM CastingCalls;


-- 40. Use MinAge function
SELECT RoleTitle, AgeRange, MinAge(AgeRange) AS MinimumAge FROM CastingCalls;


-- 41. Rank roles by earliest audition date
SELECT RoleTitle, AuditionDate, RANK() OVER (ORDER BY AuditionDate ASC) AS AuditionRank FROM CastingCalls;

-- 42. Dense rank by film ID
SELECT FilmID, RoleTitle, DENSE_RANK() OVER (ORDER BY FilmID) AS FilmRank FROM CastingCalls;

-- 43. Row number partitioned by Location
SELECT Location, RoleTitle, ROW_NUMBER() OVER (PARTITION BY Location ORDER BY AuditionDate) AS RowNum FROM CastingCalls;

-- 44. Count roles per film using window
SELECT FilmID, RoleTitle, COUNT(*) OVER (PARTITION BY FilmID) AS RolesPerFilm FROM CastingCalls;

-- 45. Lead roles first by audition date
SELECT RoleTitle, GenderRequired, FIRST_VALUE(RoleTitle) OVER (PARTITION BY FilmID ORDER BY AuditionDate) AS FirstRole FROM CastingCalls;

-- 46. Last audition role per film
SELECT RoleTitle, GenderRequired, LAST_VALUE(RoleTitle) OVER (PARTITION BY FilmID ORDER BY AuditionDate ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS LastRole FROM CastingCalls;

-- 47. Lag function to compare previous audition
SELECT RoleTitle, AuditionDate, LAG(AuditionDate,1) OVER (PARTITION BY Location ORDER BY AuditionDate) AS PrevAudition FROM CastingCalls;

-- 48. Lead role next audition using LEAD
SELECT RoleTitle, AuditionDate, LEAD(AuditionDate,1) OVER (PARTITION BY Location ORDER BY AuditionDate) AS NextAudition FROM CastingCalls;

-- 49. Percent rank of auditions by date
SELECT RoleTitle, AuditionDate, PERCENT_RANK() OVER (ORDER BY AuditionDate) AS AuditionPercentRank FROM CastingCalls;

-- 50. NTILE quartile of auditions by date
SELECT RoleTitle, AuditionDate, NTILE(4) OVER (ORDER BY AuditionDate) AS AuditionQuartile FROM CastingCalls;


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


-- 1. Select all distribution partners
SELECT * FROM DistributionPartners;

-- 2. Select partners with RevenueSharePercent > 18%
SELECT * FROM DistributionPartners WHERE RevenueSharePercent > 18.0;

-- 3. Count partners per country
SELECT Country, COUNT(*) AS NumPartners
FROM DistributionPartners
GROUP BY Country;

-- 4. List partners with contract ending in 2027
SELECT * FROM DistributionPartners
WHERE YEAR(ContractEnd)=2027;

-- 5. Minimum RevenueSharePercent
SELECT MIN(RevenueSharePercent) AS MinShare FROM DistributionPartners;

-- 6. Maximum RevenueSharePercent
SELECT MAX(RevenueSharePercent) AS MaxShare FROM DistributionPartners;

-- 7. Average RevenueSharePercent
SELECT AVG(RevenueSharePercent) AS AvgShare FROM DistributionPartners;

-- 8. Concatenate PartnerName and Country
SELECT CONCAT(PartnerName, ' (', Country, ')') AS PartnerInfo FROM DistributionPartners;

-- 9. Order partners by NumberOfScreens descending
SELECT * FROM DistributionPartners ORDER BY NumberOfScreens DESC;

-- 10. Filter partners with >500 screens
SELECT * FROM DistributionPartners WHERE NumberOfScreens > 500;


-- 11. Partners with more screens than average
SELECT * FROM DistributionPartners
WHERE NumberOfScreens > (SELECT AVG(NumberOfScreens) FROM DistributionPartners);

-- 12. Partners with RevenueSharePercent higher than max of partners in India
SELECT * FROM DistributionPartners
WHERE RevenueSharePercent > (SELECT MAX(RevenueSharePercent) FROM DistributionPartners WHERE Country='India');

-- 13. Partners whose contract ends after latest BoxOffice release
SELECT * FROM DistributionPartners
WHERE ContractEnd > (SELECT MAX(ReleaseDate) FROM BoxOffice);

-- 14. Partners with screens less than minimum of other partners
SELECT * FROM DistributionPartners
WHERE NumberOfScreens < (SELECT MIN(NumberOfScreens) FROM DistributionPartners);

-- 15. Partners associated with films earning above average revenue
SELECT * FROM DistributionPartners
WHERE PartnerID IN (
    SELECT DISTINCT FilmID FROM BoxOffice WHERE TotalRevenue > (SELECT AVG(TotalRevenue) FROM BoxOffice)
);

-- 16. Partners having contracts longer than average duration
SELECT * FROM DistributionPartners
WHERE DATEDIFF(ContractEnd, ContractStart) > (SELECT AVG(DATEDIFF(ContractEnd, ContractStart)) FROM DistributionPartners);

-- 17. Partners from same country as 'PVR Cinemas'
SELECT * FROM DistributionPartners
WHERE Country = (SELECT Country FROM DistributionPartners WHERE PartnerName='PVR Cinemas');

-- 18. Partners having fewer screens than the max screens
SELECT * FROM DistributionPartners
WHERE NumberOfScreens < (SELECT MAX(NumberOfScreens) FROM DistributionPartners);

-- 19. Partners whose revenue share is below average
SELECT * FROM DistributionPartners
WHERE RevenueSharePercent < (SELECT AVG(RevenueSharePercent) FROM DistributionPartners);

-- 20. Partners with contracts starting after 2022
SELECT * FROM DistributionPartners
WHERE ContractStart > (SELECT DATE('2022-01-01'));

-- 21. Join partners with BoxOffice to see partner potential
SELECT dp.PartnerName, bo.FilmID, bo.TotalRevenue
FROM DistributionPartners dp
JOIN BoxOffice bo ON dp.PartnerID = bo.FilmID;

-- 22. Join with CastingCalls to see audition locations per partner
SELECT dp.PartnerName, cc.RoleTitle, cc.Location
FROM DistributionPartners dp
JOIN CastingCalls cc ON dp.PartnerID = cc.FilmID;

-- 23. Left join with BoxOffice to include partners without films
SELECT dp.PartnerName, bo.FilmID, bo.TotalRevenue
FROM DistributionPartners dp
LEFT JOIN BoxOffice bo ON dp.PartnerID = bo.FilmID;

-- 24. Count of films distributed by each partner
SELECT dp.PartnerName, COUNT(bo.FilmID) AS NumFilms
FROM DistributionPartners dp
LEFT JOIN BoxOffice bo ON dp.PartnerID = bo.FilmID
GROUP BY dp.PartnerName;

-- 25. Total revenue per partner
SELECT dp.PartnerName, SUM(bo.TotalRevenue) AS TotalRevenue
FROM DistributionPartners dp
JOIN BoxOffice bo ON dp.PartnerID = bo.FilmID
GROUP BY dp.PartnerName;

-- 26. Partners with profitable films only
SELECT dp.PartnerName, bo.FilmID, bo.TotalRevenue
FROM DistributionPartners dp
JOIN BoxOffice bo ON dp.PartnerID = bo.FilmID
WHERE bo.ProfitOrLoss='Profit';

-- 27. Join with CastingCalls for open roles
SELECT dp.PartnerName, cc.RoleTitle, cc.Status
FROM DistributionPartners dp
JOIN CastingCalls cc ON dp.PartnerID = cc.FilmID
WHERE cc.Status='Open';

-- 28. Join with FilmScripts to get writers associated with partner
SELECT dp.PartnerName, fs.WriterName, fs.ScriptTitle
FROM DistributionPartners dp
JOIN FilmScripts fs ON dp.PartnerID = fs.FilmID;

-- 29. Join with BoxOffice to calculate estimated partner revenue
SELECT dp.PartnerName, bo.TotalRevenue, dp.RevenueSharePercent,
       (bo.TotalRevenue * dp.RevenueSharePercent/100) AS EstimatedRevenue
FROM DistributionPartners dp
JOIN BoxOffice bo ON dp.PartnerID = bo.FilmID;

-- 30. Left join to find partners without any films
SELECT dp.PartnerName, bo.FilmID
FROM DistributionPartners dp
LEFT JOIN BoxOffice bo ON dp.PartnerID = bo.FilmID
WHERE bo.FilmID IS NULL;

-- 31. Function to calculate contract duration in years
DELIMITER $$
CREATE FUNCTION ContractDurationYears(start_date DATE, end_date DATE) RETURNS INT
BEGIN
  RETURN TIMESTAMPDIFF(YEAR, start_date, end_date);
END$$
DELIMITER ;

-- 32. Use ContractDurationYears function
SELECT PartnerName, ContractStart, ContractEnd,
       ContractDurationYears(ContractStart, ContractEnd) AS ContractYears
FROM DistributionPartners;

-- 33. Function to flag high revenue share partners
DELIMITER $$
CREATE FUNCTION HighShare(percent DECIMAL(5,2)) RETURNS VARCHAR(10)
BEGIN
  RETURN IF(percent>19,'High','Normal');
END$$
DELIMITER ;

-- 34. Use HighShare function
SELECT PartnerName, RevenueSharePercent, HighShare(RevenueSharePercent) AS ShareCategory
FROM DistributionPartners;

-- 35. Function to check if partner contract is active
DELIMITER $$
CREATE FUNCTION IsActiveContract(end_date DATE) RETURNS VARCHAR(10)
BEGIN
  RETURN IF(end_date >= CURDATE(),'Active','Expired');
END$$
DELIMITER ;

-- 36. Use IsActiveContract function
SELECT PartnerName, ContractEnd, IsActiveContract(ContractEnd) AS Status
FROM DistributionPartners;

-- 37. Function to classify partner by number of screens
DELIMITER $$
CREATE FUNCTION ScreenCategory(screens INT) RETURNS VARCHAR(10)
BEGIN
  RETURN CASE
    WHEN screens>1000 THEN 'Large'
    WHEN screens BETWEEN 500 AND 1000 THEN 'Medium'
    ELSE 'Small'
  END;
END$$
DELIMITER ;

-- 38. Use ScreenCategory function
SELECT PartnerName, NumberOfScreens, ScreenCategory(NumberOfScreens) AS Category
FROM DistributionPartners;

-- 39. Function to calculate estimated revenue share for a given film revenue
DELIMITER $$
CREATE FUNCTION EstRevenueShare(total_rev DECIMAL(12,2), share DECIMAL(5,2)) RETURNS DECIMAL(12,2)
BEGIN
  RETURN total_rev * share/100;
END$$
DELIMITER ;

-- 40. Use EstRevenueShare function
SELECT PartnerName, RevenueSharePercent, EstRevenueShare(100000000, RevenueSharePercent) AS ExpectedRevenue
FROM DistributionPartners;

-- 41. Rank partners by NumberOfScreens
SELECT PartnerName, NumberOfScreens, RANK() OVER (ORDER BY NumberOfScreens DESC) AS ScreenRank
FROM DistributionPartners;

-- 42. Dense rank by RevenueSharePercent
SELECT PartnerName, RevenueSharePercent, DENSE_RANK() OVER (ORDER BY RevenueSharePercent DESC) AS ShareRank
FROM DistributionPartners;

-- 43. Row number partitioned by Country
SELECT Country, PartnerName, ROW_NUMBER() OVER (PARTITION BY Country ORDER BY NumberOfScreens DESC) AS RowNum
FROM DistributionPartners;

-- 44. Count of partners per country using window
SELECT Country, PartnerName, COUNT(*) OVER (PARTITION BY Country) AS PartnersPerCountry
FROM DistributionPartners;

-- 45. First partner per country
SELECT Country, PartnerName, FIRST_VALUE(PartnerName) OVER (PARTITION BY Country ORDER BY RevenueSharePercent DESC) AS FirstPartner
FROM DistributionPartners;

-- 46. Last partner per country
SELECT Country, PartnerName, LAST_VALUE(PartnerName) OVER (PARTITION BY Country ORDER BY RevenueSharePercent ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS LastPartner
FROM DistributionPartners;

-- 47. Lag function for previous partner screens
SELECT PartnerName, NumberOfScreens, LAG(NumberOfScreens,1) OVER (ORDER BY NumberOfScreens) AS PrevScreens
FROM DistributionPartners;

-- 48. Lead function for next partner screens
SELECT PartnerName, NumberOfScreens, LEAD(NumberOfScreens,1) OVER (ORDER BY NumberOfScreens) AS NextScreens
FROM DistributionPartners;

-- 49. Percent rank of RevenueSharePercent
SELECT PartnerName, RevenueSharePercent, PERCENT_RANK() OVER (ORDER BY RevenueSharePercent) AS RevenuePercentRank
FROM DistributionPartners;

-- 50. NTILE quartile of NumberOfScreens
SELECT PartnerName, NumberOfScreens, NTILE(4) OVER (ORDER BY NumberOfScreens) AS ScreenQuartile
FROM DistributionPartners;


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


-- 1. Select all censorship certificates
SELECT * FROM CensorshipCertificates;

-- 2. Select certificates issued in 2022
SELECT * FROM CensorshipCertificates
WHERE YEAR(IssueDate)=2022;

-- 3. Select certificates valid until after 2030
SELECT * FROM CensorshipCertificates
WHERE ValidUntil > '2030-01-01';

-- 4. Count of certificates by CertificateType
SELECT CertificateType, COUNT(*) AS NumCertificates
FROM CensorshipCertificates
GROUP BY CertificateType;

-- 5. Count of certificates issued per country
SELECT IssuingCountry, COUNT(*) AS NumCertificates
FROM CensorshipCertificates
GROUP BY IssuingCountry;

-- 6. Certificates for Hindi language
SELECT * FROM CensorshipCertificates WHERE Language='Hindi';

-- 7. Certificates expiring within next 5 years
SELECT * FROM CensorshipCertificates
WHERE ValidUntil BETWEEN CURDATE() AND DATE_ADD(CURDATE(), INTERVAL 5 YEAR);

-- 8. Certificates sorted by IssueDate descending
SELECT * FROM CensorshipCertificates
ORDER BY IssueDate DESC;

-- 9. Certificates with remarks containing 'violence'
SELECT * FROM CensorshipCertificates
WHERE Remarks LIKE '%violence%';

-- 10. Certificates issued by CBFC Mumbai
SELECT * FROM CensorshipCertificates
WHERE CensorBoard='CBFC Mumbai';


-- 11. Certificates for films with TotalRevenue > 200 million
SELECT * FROM CensorshipCertificates
WHERE FilmID IN (SELECT FilmID FROM BoxOffice WHERE TotalRevenue>200000000);

-- 12. Certificates issued after the earliest release date in BoxOffice
SELECT * FROM CensorshipCertificates
WHERE IssueDate > (SELECT MIN(ReleaseDate) FROM BoxOffice);

-- 13. Certificates expiring after the latest box office film release
SELECT * FROM CensorshipCertificates
WHERE ValidUntil > (SELECT MAX(ReleaseDate) FROM BoxOffice);

-- 14. Certificates with FilmID having multiple certifications
SELECT * FROM CensorshipCertificates
WHERE FilmID IN (
    SELECT FilmID FROM CensorshipCertificates GROUP BY FilmID HAVING COUNT(*)>1
);

-- 15. Certificates for films with profit in BoxOffice
SELECT * FROM CensorshipCertificates
WHERE FilmID IN (SELECT FilmID FROM BoxOffice WHERE ProfitOrLoss='Profit');

-- 16. Certificates whose issue year is greater than the minimum year in CastingCalls
SELECT * FROM CensorshipCertificates
WHERE YEAR(IssueDate) > (SELECT MIN(YEAR(AuditionDate)) FROM CastingCalls);

-- 17. Certificates for films distributed by partners with >1000 screens
SELECT * FROM CensorshipCertificates
WHERE FilmID IN (
    SELECT PartnerID FROM DistributionPartners WHERE NumberOfScreens>1000
);

-- 18. Certificates with issue date after a particular certificate
SELECT * FROM CensorshipCertificates
WHERE IssueDate > (SELECT IssueDate FROM CensorshipCertificates WHERE CertificateID=1);

-- 19. Certificates with languages used in BoxOffice films released after 2020
SELECT * FROM CensorshipCertificates
WHERE Language IN (
    SELECT DISTINCT Language FROM CensorshipCertificates cc
    JOIN BoxOffice bo ON cc.FilmID=bo.FilmID
    WHERE YEAR(bo.ReleaseDate)>2020
);

-- 20. Certificates with ValidUntil greater than average
SELECT * FROM CensorshipCertificates
WHERE ValidUntil > (SELECT AVG(DATEDIFF(ValidUntil, IssueDate)) FROM CensorshipCertificates);


-- 21. Join with BoxOffice to get film revenue for each certificate
SELECT cc.CertificateID, cc.FilmID, bo.TotalRevenue, cc.CertificateType
FROM CensorshipCertificates cc
JOIN BoxOffice bo ON cc.FilmID=bo.FilmID;

-- 22. Join with DistributionPartners to see partners associated with films
SELECT cc.CertificateID, cc.FilmID, dp.PartnerName, cc.CertificateType
FROM CensorshipCertificates cc
JOIN DistributionPartners dp ON cc.FilmID=dp.PartnerID;

-- 23. Join with CastingCalls to check roles of certified films
SELECT cc.CertificateID, cc.FilmID, cc.CertificateType, cc.Language, cc.CensorBoard, cc.Remarks, cc.CertificateNumber,
       cc.IssuingCountry, cc.IssueDate, cc.ValidUntil, cc.FilmID, cc.CertificateType
FROM CensorshipCertificates cc
JOIN CastingCalls ccl ON cc.FilmID=ccl.FilmID;

-- 24. Left join BoxOffice to include certificates without films
SELECT cc.CertificateID, cc.FilmID, bo.TotalRevenue
FROM CensorshipCertificates cc
LEFT JOIN BoxOffice bo ON cc.FilmID=bo.FilmID;

-- 25. Count certificates per film with join
SELECT cc.FilmID, COUNT(bo.FilmID) AS NumCerts
FROM CensorshipCertificates cc
LEFT JOIN BoxOffice bo ON cc.FilmID=bo.FilmID
GROUP BY cc.FilmID;

-- 26. Join to find films with both UA and A certificates
SELECT cc.FilmID, cc.CertificateType
FROM CensorshipCertificates cc
JOIN CensorshipCertificates cc2 ON cc.FilmID=cc2.FilmID
WHERE cc.CertificateType='UA' AND cc2.CertificateType='A';

-- 27. Join BoxOffice to find high revenue films with UA certificates
SELECT cc.CertificateID, cc.FilmID, bo.TotalRevenue
FROM CensorshipCertificates cc
JOIN BoxOffice bo ON cc.FilmID=bo.FilmID
WHERE cc.CertificateType='UA' AND bo.TotalRevenue>200000000;

-- 28. Join CastingCalls to find open auditions for films with 'U' certificate
SELECT cc.CertificateID, cc.FilmID, ccl.RoleTitle
FROM CensorshipCertificates cc
JOIN CastingCalls ccl ON cc.FilmID=ccl.FilmID
WHERE cc.CertificateType='U' AND ccl.Status='Open';

-- 29. Join DistributionPartners to find partners of films with expiring certificates
SELECT cc.CertificateID, cc.FilmID, dp.PartnerName
FROM CensorshipCertificates cc
JOIN DistributionPartners dp ON cc.FilmID=dp.PartnerID
WHERE cc.ValidUntil < DATE_ADD(CURDATE(), INTERVAL 5 YEAR);

-- 30. Join to get certificate and film revenue with partner share
SELECT cc.CertificateID, cc.FilmID, bo.TotalRevenue, dp.RevenueSharePercent,
       (bo.TotalRevenue*dp.RevenueSharePercent/100) AS PartnerRevenue
FROM CensorshipCertificates cc
JOIN BoxOffice bo ON cc.FilmID=bo.FilmID
JOIN DistributionPartners dp ON cc.FilmID=dp.PartnerID;


-- 31. Function to calculate certificate validity in years
DELIMITER $$
CREATE FUNCTION CertValidityYears(issue DATE, valid DATE) RETURNS INT
BEGIN
  RETURN TIMESTAMPDIFF(YEAR, issue, valid);
END$$
DELIMITER ;

-- 32. Use CertValidityYears
SELECT CertificateID, CertValidityYears(IssueDate, ValidUntil) AS ValidYears
FROM CensorshipCertificates;

-- 33. Function to check if certificate is active
DELIMITER $$
CREATE FUNCTION IsCertificateActive(valid DATE) RETURNS VARCHAR(10)
BEGIN
  RETURN IF(valid>=CURDATE(),'Active','Expired');
END$$
DELIMITER ;

-- 34. Use IsCertificateActive
SELECT CertificateID, IsCertificateActive(ValidUntil) AS Status
FROM CensorshipCertificates;

-- 35. Function to classify certificate type
DELIMITER $$
CREATE FUNCTION CertClass(cert VARCHAR(10)) RETURNS VARCHAR(20)
BEGIN
  RETURN CASE
    WHEN cert='U' THEN 'Universal'
    WHEN cert='UA' THEN 'Parental Guidance'
    WHEN cert='A' THEN 'Adult'
    ELSE 'Unknown'
  END;
END$$
DELIMITER ;

-- 36. Use CertClass
SELECT CertificateID, CertificateType, CertClass(CertificateType) AS Description
FROM CensorshipCertificates;

-- 37. Function to check if certificate issued in last N years
DELIMITER $$
CREATE FUNCTION IssuedLastNYears(issue DATE, N INT) RETURNS VARCHAR(10)
BEGIN
  RETURN IF(DATEDIFF(CURDATE(),issue) <= N*365, 'Recent','Old');
END$$
DELIMITER ;

-- 38. Use IssuedLastNYears
SELECT CertificateID, IssueDate, IssuedLastNYears(IssueDate,5) AS Recency
FROM CensorshipCertificates;

-- 39. Function to flag certificate language
DELIMITER $$
CREATE FUNCTION LangCategory(lang VARCHAR(50)) RETURNS VARCHAR(20)
BEGIN
  RETURN CASE
    WHEN lang IN ('Hindi','Telugu','Tamil','Kannada','Malayalam') THEN 'Indian'
    ELSE 'Foreign'
  END;
END$$
DELIMITER ;

-- 40. Use LangCategory
SELECT CertificateID, Language, LangCategory(Language) AS LangGroup
FROM CensorshipCertificates;


-- 41. Rank certificates by IssueDate
SELECT CertificateID, IssueDate, RANK() OVER (ORDER BY IssueDate DESC) AS RankIssue
FROM CensorshipCertificates;

-- 42. Dense rank by ValidUntil
SELECT CertificateID, ValidUntil, DENSE_RANK() OVER (ORDER BY ValidUntil DESC) AS ValidRank
FROM CensorshipCertificates;

-- 43. Row number partitioned by CertificateType
SELECT CertificateType, CertificateID, ROW_NUMBER() OVER (PARTITION BY CertificateType ORDER BY IssueDate) AS RowNum
FROM CensorshipCertificates;

-- 44. Count certificates per type using window
SELECT CertificateType, CertificateID, COUNT(*) OVER (PARTITION BY CertificateType) AS CountPerType
FROM CensorshipCertificates;

-- 45. First certificate per language
SELECT Language, CertificateID, FIRST_VALUE(CertificateID) OVER (PARTITION BY Language ORDER BY IssueDate) AS FirstCert
FROM CensorshipCertificates;

-- 46. Last certificate per language
SELECT Language, CertificateID, LAST_VALUE(CertificateID) OVER (PARTITION BY Language ORDER BY IssueDate ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS LastCert
FROM CensorshipCertificates;

-- 47. Lag function for previous certificate issue date
SELECT CertificateID, IssueDate, LAG(IssueDate,1) OVER (ORDER BY IssueDate) AS PrevIssueDate
FROM CensorshipCertificates;

-- 48. Lead function for next certificate issue date
SELECT CertificateID, IssueDate, LEAD(IssueDate,1) OVER (ORDER BY IssueDate) AS NextIssueDate
FROM CensorshipCertificates;

-- 49. Percent rank of certificate validity
SELECT CertificateID, CertValidityYears(IssueDate,ValidUntil) AS ValidYears,
       PERCENT_RANK() OVER (ORDER BY CertValidityYears(IssueDate,ValidUntil)) AS PercentRank
FROM CensorshipCertificates;

-- 50. NTILE quartile of certificate validity
SELECT CertificateID, CertValidityYears(IssueDate,ValidUntil) AS ValidYears,
       NTILE(4) OVER (ORDER BY CertValidityYears(IssueDate,ValidUntil)) AS ValidQuartile
FROM CensorshipCertificates;


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


-- 1. Select all streaming rights
SELECT * FROM StreamingRights;

-- 2. Streaming rights starting after 2022
SELECT * FROM StreamingRights
WHERE StartDate>'2022-01-01';

-- 3. Streaming rights ending before 2025
SELECT * FROM StreamingRights
WHERE EndDate<'2025-01-01';

-- 4. Exclusive streaming rights only
SELECT * FROM StreamingRights
WHERE IsExclusive=TRUE;

-- 5. Rights for Netflix platform
SELECT * FROM StreamingRights
WHERE PlatformName='Netflix';

-- 6. Count of streaming rights per platform
SELECT PlatformName, COUNT(*) AS NumRights
FROM StreamingRights
GROUP BY PlatformName;

-- 7. Sum of AmountPaid per platform
SELECT PlatformName, SUM(AmountPaid) AS TotalPaid
FROM StreamingRights
GROUP BY PlatformName;

-- 8. Rights for Hindi language films
SELECT * FROM StreamingRights
WHERE Language='Hindi';

-- 9. Rights with amount greater than 100 million
SELECT * FROM StreamingRights
WHERE AmountPaid>100000000;

-- 10. Rights active as of today
SELECT * FROM StreamingRights
WHERE StartDate<=CURDATE() AND EndDate>=CURDATE();


-- 11. Rights for films with TotalRevenue > 200 million
SELECT * FROM StreamingRights
WHERE FilmID IN (SELECT FilmID FROM BoxOffice WHERE TotalRevenue>200000000);

-- 12. Platforms streaming films with UA certificate
SELECT * FROM StreamingRights
WHERE FilmID IN (
    SELECT FilmID FROM CensorshipCertificates WHERE CertificateType='UA'
);

-- 13. Rights for films with open auditions
SELECT * FROM StreamingRights
WHERE FilmID IN (
    SELECT FilmID FROM CastingCalls WHERE Status='Open'
);

-- 14. Platforms streaming films distributed by partners with >1000 screens
SELECT * FROM StreamingRights
WHERE FilmID IN (
    SELECT PartnerID FROM DistributionPartners WHERE NumberOfScreens>1000
);

-- 15. Films with exclusive rights and profit in BoxOffice
SELECT * FROM StreamingRights
WHERE IsExclusive=TRUE
AND FilmID IN (SELECT FilmID FROM BoxOffice WHERE ProfitOrLoss='Profit');

-- 16. Platforms for films with multiple certificates
SELECT * FROM StreamingRights
WHERE FilmID IN (
    SELECT FilmID FROM CensorshipCertificates GROUP BY FilmID HAVING COUNT(*)>1
);

-- 17. Rights ending after the latest release date in BoxOffice
SELECT * FROM StreamingRights
WHERE EndDate > (SELECT MAX(ReleaseDate) FROM BoxOffice);

-- 18. Rights starting before earliest casting call
SELECT * FROM StreamingRights
WHERE StartDate < (SELECT MIN(AuditionDate) FROM CastingCalls);

-- 19. Platforms paying more than average amount
SELECT * FROM StreamingRights
WHERE AmountPaid > (SELECT AVG(AmountPaid) FROM StreamingRights);

-- 20. Rights for films whose certificate is expiring next year
SELECT * FROM StreamingRights
WHERE FilmID IN (
    SELECT FilmID FROM CensorshipCertificates
    WHERE YEAR(ValidUntil)=YEAR(CURDATE())+1
);


-- 21. Join with BoxOffice to get film revenue
SELECT sr.FilmID, sr.PlatformName, sr.AmountPaid, bo.TotalRevenue
FROM StreamingRights sr
JOIN BoxOffice bo ON sr.FilmID=bo.FilmID;

-- 22. Join with DistributionPartners
SELECT sr.FilmID, sr.PlatformName, dp.PartnerName, dp.NumberOfScreens
FROM StreamingRights sr
JOIN DistributionPartners dp ON sr.FilmID=dp.PartnerID;

-- 23. Join with CensorshipCertificates
SELECT sr.FilmID, sr.PlatformName, cc.CertificateType, cc.Language
FROM StreamingRights sr
JOIN CensorshipCertificates cc ON sr.FilmID=cc.FilmID;

-- 24. Join with CastingCalls to find open roles
SELECT sr.FilmID, sr.PlatformName, ccl.RoleTitle
FROM StreamingRights sr
JOIN CastingCalls ccl ON sr.FilmID=ccl.FilmID
WHERE ccl.Status='Open';

-- 25. Left join to show rights even if no box office data
SELECT sr.FilmID, sr.PlatformName, bo.TotalRevenue
FROM StreamingRights sr
LEFT JOIN BoxOffice bo ON sr.FilmID=bo.FilmID;

-- 26. Rights with exclusive flag and high revenue films
SELECT sr.FilmID, sr.PlatformName, sr.IsExclusive, bo.TotalRevenue
FROM StreamingRights sr
JOIN BoxOffice bo ON sr.FilmID=bo.FilmID
WHERE sr.IsExclusive=TRUE AND bo.TotalRevenue>200000000;

-- 27. Join to calculate partner revenue share from streaming
SELECT sr.FilmID, sr.PlatformName, bo.TotalRevenue, dp.RevenueSharePercent,
       (bo.TotalRevenue*dp.RevenueSharePercent/100) AS PartnerRevenue
FROM StreamingRights sr
JOIN BoxOffice bo ON sr.FilmID=bo.FilmID
JOIN DistributionPartners dp ON sr.FilmID=dp.PartnerID;

-- 28. Streaming rights with UA certificate and Amazon Prime
SELECT sr.FilmID, sr.PlatformName, cc.CertificateType
FROM StreamingRights sr
JOIN CensorshipCertificates cc ON sr.FilmID=cc.FilmID
WHERE sr.PlatformName='Amazon Prime Video' AND cc.CertificateType='UA';

-- 29. Films with multiple platforms
SELECT sr.FilmID, COUNT(sr.PlatformName) AS NumPlatforms
FROM StreamingRights sr
GROUP BY sr.FilmID
HAVING NumPlatforms>1;

-- 30. Total amount paid per film combining BoxOffice revenue
SELECT sr.FilmID, SUM(sr.AmountPaid) AS TotalPaid, bo.TotalRevenue
FROM StreamingRights sr
JOIN BoxOffice bo ON sr.FilmID=bo.FilmID
GROUP BY sr.FilmID, bo.TotalRevenue;

-- 31. Function to calculate streaming duration in years
DELIMITER $$
CREATE FUNCTION StreamingDurationYears(start DATE, endd DATE) RETURNS INT
BEGIN
  RETURN TIMESTAMPDIFF(YEAR,start,endd);
END$$
DELIMITER ;

-- 32. Use StreamingDurationYears
SELECT RightID, StreamingDurationYears(StartDate, EndDate) AS DurationYears
FROM StreamingRights;

-- 33. Function to check if streaming is currently active
DELIMITER $$
CREATE FUNCTION IsStreamingActive(start DATE, endd DATE) RETURNS VARCHAR(10)
BEGIN
  RETURN IF(CURDATE() BETWEEN start AND endd, 'Active','Inactive');
END$$
DELIMITER ;

-- 34. Use IsStreamingActive
SELECT RightID, PlatformName, IsStreamingActive(StartDate, EndDate) AS Status
FROM StreamingRights;

-- 35. Function to classify license type
DELIMITER $$
CREATE FUNCTION LicenseCategory(lic VARCHAR(50)) RETURNS VARCHAR(20)
BEGIN
  RETURN CASE
    WHEN lic='SVOD' THEN 'Subscription'
    WHEN lic='AVOD' THEN 'Ad-Supported'
    WHEN lic='TVOD' THEN 'Transactional'
    ELSE 'Other'
  END;
END$$
DELIMITER ;

-- 36. Use LicenseCategory
SELECT RightID, LicenseType, LicenseCategory(LicenseType) AS LicenseDesc
FROM StreamingRights;

-- 37. Function to flag high paying rights
DELIMITER $$
CREATE FUNCTION IsHighPaying(amount DECIMAL(12,2)) RETURNS VARCHAR(10)
BEGIN
  RETURN IF(amount>100000000,'High','Low');
END$$
DELIMITER ;

-- 38. Use IsHighPaying
SELECT RightID, PlatformName, AmountPaid, IsHighPaying(AmountPaid) AS PayFlag
FROM StreamingRights;

-- 39. Function to check exclusivity
DELIMITER $$
CREATE FUNCTION ExclusiveFlag(isEx BOOLEAN) RETURNS VARCHAR(10)
BEGIN
  RETURN IF(isEx=TRUE,'Exclusive','Non-Exclusive');
END$$
DELIMITER ;

-- 40. Use ExclusiveFlag
SELECT RightID, PlatformName, ExclusiveFlag(IsExclusive) AS Flag
FROM StreamingRights;

-- 41. Rank streaming rights by AmountPaid
SELECT RightID, PlatformName, AmountPaid,
       RANK() OVER (ORDER BY AmountPaid DESC) AS RankAmount
FROM StreamingRights;

-- 42. Dense rank by streaming start date
SELECT RightID, PlatformName, StartDate,
       DENSE_RANK() OVER (ORDER BY StartDate) AS RankStart
FROM StreamingRights;

-- 43. Row number partitioned by platform
SELECT PlatformName, RightID,
       ROW_NUMBER() OVER (PARTITION BY PlatformName ORDER BY AmountPaid DESC) AS RowNum
FROM StreamingRights;

-- 44. Count rights per platform using window
SELECT PlatformName, RightID,
       COUNT(*) OVER (PARTITION BY PlatformName) AS CountPerPlatform
FROM StreamingRights;

-- 45. First right per language
SELECT Language, RightID,
       FIRST_VALUE(RightID) OVER (PARTITION BY Language ORDER BY StartDate) AS FirstRight
FROM StreamingRights;

-- 46. Last right per language
SELECT Language, RightID,
       LAST_VALUE(RightID) OVER (PARTITION BY Language ORDER BY StartDate
       ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS LastRight
FROM StreamingRights;

-- 47. Lag previous right start date
SELECT RightID, StartDate,
       LAG(StartDate,1) OVER (ORDER BY StartDate) AS PrevStart
FROM StreamingRights;

-- 48. Lead next right start date
SELECT RightID, StartDate,
       LEAD(StartDate,1) OVER (ORDER BY StartDate) AS NextStart
FROM StreamingRights;

-- 49. Percent rank of streaming amount
SELECT RightID, AmountPaid,
       PERCENT_RANK() OVER (ORDER BY AmountPaid) AS PercentRank
FROM StreamingRights;

-- 50. NTILE quartile of streaming amount
SELECT RightID, AmountPaid,
       NTILE(4) OVER (ORDER BY AmountPaid) AS AmountQuartile
FROM StreamingRights;


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

-- 1. Select all sponsorship deals
SELECT * FROM SponsorshipDeals;

-- 2. Active deals only
SELECT * FROM SponsorshipDeals WHERE DealStatus='Active';

-- 3. Deals completed before 2022
SELECT * FROM SponsorshipDeals WHERE EndDate<'2022-01-01';

-- 4. Deals with amount > 5 million
SELECT * FROM SponsorshipDeals WHERE Amount>5000000;

-- 5. Deals of type 'Beverage'
SELECT * FROM SponsorshipDeals WHERE SponsorType='Beverage';

-- 6. Count of deals per sponsor type
SELECT SponsorType, COUNT(*) AS NumDeals
FROM SponsorshipDeals
GROUP BY SponsorType;

-- 7. Total sponsorship amount per sponsor
SELECT SponsorName, SUM(Amount) AS TotalAmount
FROM SponsorshipDeals
GROUP BY SponsorName;

-- 8. Deals starting after 2020
SELECT * FROM SponsorshipDeals WHERE StartDate>'2020-01-01';

-- 9. Deals for films with FilmID > 120
SELECT * FROM SponsorshipDeals WHERE FilmID>120;

-- 10. Deals ordered by Amount descending
SELECT * FROM SponsorshipDeals ORDER BY Amount DESC;


-- 11. Deals for films with TotalRevenue > 200 million
SELECT * FROM SponsorshipDeals
WHERE FilmID IN (SELECT FilmID FROM BoxOffice WHERE TotalRevenue>200000000);

-- 12. Deals for films having UA certificate
SELECT * FROM SponsorshipDeals
WHERE FilmID IN (SELECT FilmID FROM CensorshipCertificates WHERE CertificateType='UA');

-- 13. Deals for films with open auditions
SELECT * FROM SponsorshipDeals
WHERE FilmID IN (SELECT FilmID FROM CastingCalls WHERE Status='Open');

-- 14. Deals with sponsors having more than 1 deal
SELECT * FROM SponsorshipDeals
WHERE SponsorName IN (
    SELECT SponsorName FROM SponsorshipDeals GROUP BY SponsorName HAVING COUNT(*)>1
);

-- 15. Deals with amount greater than average
SELECT * FROM SponsorshipDeals
WHERE Amount>(SELECT AVG(Amount) FROM SponsorshipDeals);

-- 16. Deals for films with multiple streaming platforms
SELECT * FROM SponsorshipDeals
WHERE FilmID IN (
    SELECT FilmID FROM StreamingRights GROUP BY FilmID HAVING COUNT(*)>1
);

-- 17. Deals ending after the latest release date
SELECT * FROM SponsorshipDeals
WHERE EndDate > (SELECT MAX(ReleaseDate) FROM BoxOffice);

-- 18. Deals starting before earliest casting call
SELECT * FROM SponsorshipDeals
WHERE StartDate < (SELECT MIN(AuditionDate) FROM CastingCalls);

-- 19. Active deals for high revenue films
SELECT * FROM SponsorshipDeals
WHERE DealStatus='Active'
AND FilmID IN (SELECT FilmID FROM BoxOffice WHERE TotalRevenue>200000000);

-- 20. Deals for films whose certificate is expiring next year
SELECT * FROM SponsorshipDeals
WHERE FilmID IN (
    SELECT FilmID FROM CensorshipCertificates
    WHERE YEAR(ValidUntil)=YEAR(CURDATE())+1
);

-- 21. Join with BoxOffice to get film revenue
SELECT sd.DealID, sd.SponsorName, sd.Amount, bo.TotalRevenue
FROM SponsorshipDeals sd
JOIN BoxOffice bo ON sd.FilmID=bo.FilmID;

-- 22. Join with StreamingRights
SELECT sd.DealID, sd.SponsorName, sr.PlatformName, sr.AmountPaid
FROM SponsorshipDeals sd
JOIN StreamingRights sr ON sd.FilmID=sr.FilmID;

-- 23. Join with CensorshipCertificates
SELECT sd.DealID, sd.SponsorName, cc.CertificateType, cc.Language
FROM SponsorshipDeals sd
JOIN CensorshipCertificates cc ON sd.FilmID=cc.FilmID;

-- 24. Join with CastingCalls to show role titles
SELECT sd.DealID, sd.SponsorName, c.RoleTitle, c.Status
FROM SponsorshipDeals sd
JOIN CastingCalls c ON sd.FilmID=c.FilmID;

-- 25. Join with DistributionPartners to show partner info
SELECT sd.DealID, sd.SponsorName, dp.PartnerName, dp.NumberOfScreens
FROM SponsorshipDeals sd
JOIN DistributionPartners dp ON sd.FilmID=dp.PartnerID;

-- 26. Left join to show deals even if no streaming rights
SELECT sd.DealID, sd.SponsorName, sr.PlatformName
FROM SponsorshipDeals sd
LEFT JOIN StreamingRights sr ON sd.FilmID=sr.FilmID;

-- 27. Deals with high revenue films and streaming info
SELECT sd.DealID, sd.SponsorName, bo.TotalRevenue, sr.PlatformName, sr.AmountPaid
FROM SponsorshipDeals sd
JOIN BoxOffice bo ON sd.FilmID=bo.FilmID
JOIN StreamingRights sr ON sd.FilmID=sr.FilmID
WHERE bo.TotalRevenue>200000000;

-- 28. Active deals with UA certificate
SELECT sd.DealID, sd.SponsorName, cc.CertificateType
FROM SponsorshipDeals sd
JOIN CensorshipCertificates cc ON sd.FilmID=cc.FilmID
WHERE sd.DealStatus='Active' AND cc.CertificateType='UA';

-- 29. Deals with multiple platforms per film
SELECT sd.FilmID, COUNT(sr.PlatformName) AS NumPlatforms
FROM SponsorshipDeals sd
JOIN StreamingRights sr ON sd.FilmID=sr.FilmID
GROUP BY sd.FilmID
HAVING NumPlatforms>1;

-- 30. Total sponsorship + streaming amount per film
SELECT sd.FilmID, SUM(sd.Amount) AS SponsorshipTotal, SUM(sr.AmountPaid) AS StreamingTotal
FROM SponsorshipDeals sd
JOIN StreamingRights sr ON sd.FilmID=sr.FilmID
GROUP BY sd.FilmID;


-- 31. Function to calculate deal duration in months
DELIMITER $$
CREATE FUNCTION DealDurationMonths(startd DATE, endd DATE) RETURNS INT
BEGIN
  RETURN TIMESTAMPDIFF(MONTH, startd, endd);
END$$
DELIMITER ;

-- 32. Use DealDurationMonths
SELECT DealID, DealDurationMonths(StartDate, EndDate) AS DurationMonths
FROM SponsorshipDeals;

-- 33. Function to check if deal is currently active
DELIMITER $$
CREATE FUNCTION IsDealActive(startd DATE, endd DATE) RETURNS VARCHAR(10)
BEGIN
  RETURN IF(CURDATE() BETWEEN startd AND endd,'Active','Inactive');
END$$
DELIMITER ;

-- 34. Use IsDealActive
SELECT DealID, SponsorName, IsDealActive(StartDate, EndDate) AS Status
FROM SponsorshipDeals;

-- 35. Function to classify sponsor type
DELIMITER $$
CREATE FUNCTION SponsorCategory(sp_type VARCHAR(50)) RETURNS VARCHAR(20)
BEGIN
  RETURN CASE
    WHEN sp_type IN ('Beverage','FMCG') THEN 'Consumer Goods'
    WHEN sp_type IN ('Telecom','Banking','Fintech') THEN 'Services'
    WHEN sp_type IN ('Automobile','Electronics') THEN 'Technology/Vehicle'
    ELSE 'Others'
  END;
END$$
DELIMITER ;

-- 36. Use SponsorCategory
SELECT DealID, SponsorType, SponsorCategory(SponsorType) AS Category
FROM SponsorshipDeals;

-- 37. Function to flag high-value deals
DELIMITER $$
CREATE FUNCTION HighValueDeal(amount DECIMAL(12,2)) RETURNS VARCHAR(10)
BEGIN
  RETURN IF(amount>8000000,'High','Low');
END$$
DELIMITER ;

-- 38. Use HighValueDeal
SELECT DealID, SponsorName, Amount, HighValueDeal(Amount) AS ValueFlag
FROM SponsorshipDeals;

-- 39. Function to check if sponsor type is luxury
DELIMITER $$
CREATE FUNCTION IsLuxurySponsor(sp_type VARCHAR(50)) RETURNS VARCHAR(10)
BEGIN
  RETURN IF(sp_type IN ('Jewellery','Apparel','Cosmetics'),'Luxury','Standard');
END$$
DELIMITER ;

-- 40. Use IsLuxurySponsor
SELECT DealID, SponsorName, SponsorType, IsLuxurySponsor(SponsorType) AS LuxuryFlag
FROM SponsorshipDeals;


-- 41. Rank deals by amount
SELECT DealID, SponsorName, Amount,
       RANK() OVER (ORDER BY Amount DESC) AS RankAmount
FROM SponsorshipDeals;

-- 42. Dense rank by start date
SELECT DealID, SponsorName, StartDate,
       DENSE_RANK() OVER (ORDER BY StartDate) AS StartRank
FROM SponsorshipDeals;

-- 43. Row number per sponsor type
SELECT SponsorType, DealID,
       ROW_NUMBER() OVER (PARTITION BY SponsorType ORDER BY Amount DESC) AS RowNum
FROM SponsorshipDeals;

-- 44. Count deals per sponsor type
SELECT SponsorType, DealID,
       COUNT(*) OVER (PARTITION BY SponsorType) AS DealsPerType
FROM SponsorshipDeals;

-- 45. First deal per sponsor
SELECT SponsorName, DealID,
       FIRST_VALUE(DealID) OVER (PARTITION BY SponsorName ORDER BY StartDate) AS FirstDeal
FROM SponsorshipDeals;

-- 46. Last deal per sponsor
SELECT SponsorName, DealID,
       LAST_VALUE(DealID) OVER (PARTITION BY SponsorName ORDER BY StartDate
       ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS LastDeal
FROM SponsorshipDeals;

-- 47. Lag previous deal start date
SELECT DealID, StartDate,
       LAG(StartDate,1) OVER (ORDER BY StartDate) AS PrevStart
FROM SponsorshipDeals;

-- 48. Lead next deal start date
SELECT DealID, StartDate,
       LEAD(StartDate,1) OVER (ORDER BY StartDate) AS NextStart
FROM SponsorshipDeals;

-- 49. Percent rank of deal amount
SELECT DealID, Amount,
       PERCENT_RANK() OVER (ORDER BY Amount) AS PercentRank
FROM SponsorshipDeals;

-- 50. NTILE quartile of deal amount
SELECT DealID, Amount,
       NTILE(4) OVER (ORDER BY Amount) AS AmountQuartile
FROM SponsorshipDeals;


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


-- 1. Select all production schedules
SELECT * FROM ProductionSchedules;

-- 2. Completed schedules only
SELECT * FROM ProductionSchedules WHERE Status='Completed';

-- 3. Schedules starting in 2022
SELECT * FROM ProductionSchedules WHERE YEAR(StartDate)=2022;

-- 4. Schedules with shooting hours per day >= 8
SELECT * FROM ProductionSchedules WHERE ShootingHoursPerDay>=8;

-- 5. Schedules with crew count > 50
SELECT * FROM ProductionSchedules WHERE CrewCount>50;

-- 6. Count of schedules per location
SELECT Location, COUNT(*) AS NumSchedules
FROM ProductionSchedules
GROUP BY Location;

-- 7. Total shooting hours per schedule
SELECT ScheduleID, ShootingHoursPerDay*(DATEDIFF(EndDate, StartDate)+1) AS TotalHours
FROM ProductionSchedules;

-- 8. Schedules supervised by 'Rajesh Iyer'
SELECT * FROM ProductionSchedules WHERE SupervisorName='Rajesh Iyer';

-- 9. Schedules for FilmID > 120
SELECT * FROM ProductionSchedules WHERE FilmID>120;

-- 10. Schedules ordered by StartDate ascending
SELECT * FROM ProductionSchedules ORDER BY StartDate;

-- 11. Schedules for films with TotalRevenue > 200 million
SELECT * FROM ProductionSchedules
WHERE FilmID IN (SELECT FilmID FROM BoxOffice WHERE TotalRevenue>200000000);

-- 12. Schedules for films with UA certificate
SELECT * FROM ProductionSchedules
WHERE FilmID IN (SELECT FilmID FROM CensorshipCertificates WHERE CertificateType='UA');

-- 13. Schedules where casting call is open
SELECT * FROM ProductionSchedules
WHERE FilmID IN (SELECT FilmID FROM CastingCalls WHERE Status='Open');

-- 14. Schedules with supervisor handling more than 1 schedule
SELECT * FROM ProductionSchedules
WHERE SupervisorName IN (
    SELECT SupervisorName FROM ProductionSchedules GROUP BY SupervisorName HAVING COUNT(*)>1
);

-- 15. Schedules longer than average duration
SELECT * FROM ProductionSchedules
WHERE (DATEDIFF(EndDate, StartDate)+1) > (SELECT AVG(DATEDIFF(EndDate, StartDate)+1) FROM ProductionSchedules);

-- 16. Schedules for films with multiple streaming rights
SELECT * FROM ProductionSchedules
WHERE FilmID IN (SELECT FilmID FROM StreamingRights GROUP BY FilmID HAVING COUNT(*)>1);

-- 17. Schedules ending after the latest release
SELECT * FROM ProductionSchedules
WHERE EndDate > (SELECT MAX(ReleaseDate) FROM BoxOffice);

-- 18. Schedules starting before the earliest sponsorship deal
SELECT * FROM ProductionSchedules
WHERE StartDate < (SELECT MIN(StartDate) FROM SponsorshipDeals);

-- 19. Completed schedules for high revenue films
SELECT * FROM ProductionSchedules
WHERE Status='Completed'
AND FilmID IN (SELECT FilmID FROM BoxOffice WHERE TotalRevenue>200000000);

-- 20. Schedules for films whose certificate expires next year
SELECT * FROM ProductionSchedules
WHERE FilmID IN (
    SELECT FilmID FROM CensorshipCertificates
    WHERE YEAR(ValidUntil)=YEAR(CURDATE())+1
);


-- 21. Join with BoxOffice to get film revenue
SELECT ps.ScheduleID, ps.FilmID, ps.Location, bo.TotalRevenue
FROM ProductionSchedules ps
JOIN BoxOffice bo ON ps.FilmID=bo.FilmID;

-- 22. Join with CastingCalls to get role titles
SELECT ps.ScheduleID, ps.FilmID, c.RoleTitle, c.Status AS CastingStatus
FROM ProductionSchedules ps
JOIN CastingCalls c ON ps.FilmID=c.FilmID;

-- 23. Join with DistributionPartners to get partner info
SELECT ps.ScheduleID, ps.Location, dp.PartnerName, dp.NumberOfScreens
FROM ProductionSchedules ps
JOIN DistributionPartners dp ON ps.FilmID=dp.PartnerID;

-- 24. Join with CensorshipCertificates to get certificate type
SELECT ps.ScheduleID, ps.FilmID, cc.CertificateType, cc.Language
FROM ProductionSchedules ps
JOIN CensorshipCertificates cc ON ps.FilmID=cc.FilmID;

-- 25. Join with StreamingRights to get platform info
SELECT ps.ScheduleID, ps.FilmID, sr.PlatformName, sr.AmountPaid
FROM ProductionSchedules ps
JOIN StreamingRights sr ON ps.FilmID=sr.FilmID;

-- 26. Join with SponsorshipDeals to get sponsor info
SELECT ps.ScheduleID, ps.FilmID, sd.SponsorName, sd.Amount
FROM ProductionSchedules ps
JOIN SponsorshipDeals sd ON ps.FilmID=sd.FilmID;

-- 27. Completed schedules with high revenue and streaming info
SELECT ps.ScheduleID, ps.Location, bo.TotalRevenue, sr.PlatformName, sr.AmountPaid
FROM ProductionSchedules ps
JOIN BoxOffice bo ON ps.FilmID=bo.FilmID
JOIN StreamingRights sr ON ps.FilmID=sr.FilmID
WHERE ps.Status='Completed' AND bo.TotalRevenue>200000000;

-- 28. Schedules for films with UA certificate and active sponsorship
SELECT ps.ScheduleID, ps.Location, cc.CertificateType, sd.SponsorName
FROM ProductionSchedules ps
JOIN CensorshipCertificates cc ON ps.FilmID=cc.FilmID
JOIN SponsorshipDeals sd ON ps.FilmID=sd.FilmID
WHERE cc.CertificateType='UA' AND sd.DealStatus='Active';

-- 29. Count of schedules per film with streaming info
SELECT ps.FilmID, COUNT(ps.ScheduleID) AS NumSchedules, COUNT(sr.PlatformName) AS NumPlatforms
FROM ProductionSchedules ps
LEFT JOIN StreamingRights sr ON ps.FilmID=sr.FilmID
GROUP BY ps.FilmID;

-- 30. Total crew and sponsorship amount per film
SELECT ps.FilmID, SUM(ps.CrewCount) AS TotalCrew, SUM(sd.Amount) AS TotalSponsorAmount
FROM ProductionSchedules ps
JOIN SponsorshipDeals sd ON ps.FilmID=sd.FilmID
GROUP BY ps.FilmID;


-- 31. Function to calculate schedule duration in days
DELIMITER $$
CREATE FUNCTION ScheduleDurationDays(startd DATE, endd DATE) RETURNS INT
BEGIN
  RETURN DATEDIFF(endd, startd)+1;
END$$
DELIMITER ;

-- 32. Use ScheduleDurationDays
SELECT ScheduleID, ScheduleDurationDays(StartDate, EndDate) AS DurationDays
FROM ProductionSchedules;

-- 33. Function to calculate total shooting hours
DELIMITER $$
CREATE FUNCTION TotalShootingHours(hours_per_day INT, startd DATE, endd DATE) RETURNS INT
BEGIN
  RETURN hours_per_day * (DATEDIFF(endd, startd)+1);
END$$
DELIMITER ;

-- 34. Use TotalShootingHours
SELECT ScheduleID, TotalShootingHours(ShootingHoursPerDay, StartDate, EndDate) AS TotalHours
FROM ProductionSchedules;

-- 35. Function to check if schedule is ongoing
DELIMITER $$
CREATE FUNCTION IsScheduleOngoing(startd DATE, endd DATE) RETURNS VARCHAR(10)
BEGIN
  RETURN IF(CURDATE() BETWEEN startd AND endd,'Ongoing','Not Ongoing');
END$$
DELIMITER ;

-- 36. Use IsScheduleOngoing
SELECT ScheduleID, Location, IsScheduleOngoing(StartDate, EndDate) AS StatusCheck
FROM ProductionSchedules;

-- 37. Function to classify shooting intensity
DELIMITER $$
CREATE FUNCTION ShootingIntensity(hours INT) RETURNS VARCHAR(10)
BEGIN
  RETURN IF(hours>=9,'High','Moderate');
END$$
DELIMITER ;

-- 38. Use ShootingIntensity
SELECT ScheduleID, ShootingHoursPerDay, ShootingIntensity(ShootingHoursPerDay) AS Intensity
FROM ProductionSchedules;

-- 39. Function to classify schedule size by crew
DELIMITER $$
CREATE FUNCTION CrewSizeCategory(count INT) RETURNS VARCHAR(10)
BEGIN
  RETURN CASE
    WHEN count>=60 THEN 'Large'
    WHEN count>=40 THEN 'Medium'
    ELSE 'Small'
  END;
END$$
DELIMITER ;

-- 40. Use CrewSizeCategory
SELECT ScheduleID, CrewCount, CrewSizeCategory(CrewCount) AS CrewCategory
FROM ProductionSchedules;


-- 41. Rank schedules by crew count
SELECT ScheduleID, Location, CrewCount,
       RANK() OVER (ORDER BY CrewCount DESC) AS RankCrew
FROM ProductionSchedules;

-- 42. Dense rank by start date
SELECT ScheduleID, Location, StartDate,
       DENSE_RANK() OVER (ORDER BY StartDate) AS StartRank
FROM ProductionSchedules;

-- 43. Row number per location
SELECT Location, ScheduleID,
       ROW_NUMBER() OVER (PARTITION BY Location ORDER BY CrewCount DESC) AS RowNum
FROM ProductionSchedules;

-- 44. Count of schedules per location
SELECT Location, ScheduleID,
       COUNT(*) OVER (PARTITION BY Location) AS NumSchedules
FROM ProductionSchedules;

-- 45. First schedule per location
SELECT Location, ScheduleID,
       FIRST_VALUE(ScheduleID) OVER (PARTITION BY Location ORDER BY StartDate) AS FirstSchedule
FROM ProductionSchedules;

-- 46. Last schedule per location
SELECT Location, ScheduleID,
       LAST_VALUE(ScheduleID) OVER (PARTITION BY Location ORDER BY StartDate
       ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS LastSchedule
FROM ProductionSchedules;

-- 47. Previous schedule start date
SELECT ScheduleID, StartDate,
       LAG(StartDate,1) OVER (ORDER BY StartDate) AS PrevStart
FROM ProductionSchedules;

-- 48. Next schedule start date
SELECT ScheduleID, StartDate,
       LEAD(StartDate,1) OVER (ORDER BY StartDate) AS NextStart
FROM ProductionSchedules;

-- 49. Percent rank of crew count
SELECT ScheduleID, CrewCount,
       PERCENT_RANK() OVER (ORDER BY CrewCount) AS PercentRank
FROM ProductionSchedules;

-- 50. NTILE quartile of crew count
SELECT ScheduleID, CrewCount,
       NTILE(4) OVER (ORDER BY CrewCount) AS CrewQuartile
FROM ProductionSchedules;


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


-- 1. Select all script versions
SELECT * FROM ScriptVersions;

-- 2. Approved scripts
SELECT * FROM ScriptVersions WHERE VersionStatus='Approved';

-- 3. Scripts submitted in 2022
SELECT * FROM ScriptVersions WHERE YEAR(SubmitDate)=2022;

-- 4. Pending scripts
SELECT * FROM ScriptVersions WHERE VersionStatus='Pending';

-- 5. Scripts by writer 'Ravi Verma'
SELECT * FROM ScriptVersions WHERE WriterName='Ravi Verma';

-- 6. Count of script versions per film
SELECT FilmID, COUNT(*) AS NumVersions
FROM ScriptVersions
GROUP BY FilmID;

-- 7. Latest draft per film using subquery
SELECT *
FROM ScriptVersions s
WHERE DraftNumber = (SELECT MAX(DraftNumber) FROM ScriptVersions WHERE FilmID=s.FilmID);

-- 8. Scripts with 'rewrite' in notes
SELECT * FROM ScriptVersions WHERE Notes LIKE '%rewrite%';

-- 9. Scripts approved by 'Anurag Kashyap'
SELECT * FROM ScriptVersions WHERE ApprovedBy='Anurag Kashyap';

-- 10. Scripts ordered by submit date descending
SELECT * FROM ScriptVersions ORDER BY SubmitDate DESC;

-- 11. Scripts for high revenue films (>200M)
SELECT * FROM ScriptVersions
WHERE FilmID IN (SELECT FilmID FROM BoxOffice WHERE TotalRevenue>200000000);

-- 12. Scripts for films with UA certificate
SELECT * FROM ScriptVersions
WHERE FilmID IN (SELECT FilmID FROM CensorshipCertificates WHERE CertificateType='UA');

-- 13. Scripts for films with active sponsorship
SELECT * FROM ScriptVersions
WHERE FilmID IN (SELECT FilmID FROM SponsorshipDeals WHERE DealStatus='Active');

-- 14. Latest approved script per film
SELECT * FROM ScriptVersions s
WHERE DraftNumber = (SELECT MAX(DraftNumber)
                     FROM ScriptVersions
                     WHERE FilmID=s.FilmID AND VersionStatus='Approved');

-- 15. Scripts submitted before production starts
SELECT * FROM ScriptVersions
WHERE SubmitDate < (SELECT MIN(StartDate) FROM ProductionSchedules WHERE ProductionSchedules.FilmID=ScriptVersions.FilmID);

-- 16. Scripts for films with multiple streaming platforms
SELECT * FROM ScriptVersions
WHERE FilmID IN (SELECT FilmID FROM StreamingRights GROUP BY FilmID HAVING COUNT(*)>1);

-- 17. Scripts rejected for films with low box office (<50M)
SELECT * FROM ScriptVersions
WHERE VersionStatus='Rejected' AND FilmID IN (SELECT FilmID FROM BoxOffice WHERE TotalRevenue<50000000);

-- 18. Scripts for films distributed by 'Reliance Entertainment'
SELECT * FROM ScriptVersions
WHERE FilmID IN (SELECT FilmID FROM DistributionPartners WHERE PartnerName='Reliance Entertainment');

-- 19. Scripts where notes contain 'climax'
SELECT * FROM ScriptVersions WHERE Notes LIKE '%climax%';

-- 20. Scripts for films with UA certificate expiring next year
SELECT * FROM ScriptVersions
WHERE FilmID IN (SELECT FilmID FROM CensorshipCertificates
                 WHERE YEAR(ValidUntil)=YEAR(CURDATE())+1);

-- 21. Join with BoxOffice to get film revenue
SELECT sv.VersionID, sv.FilmID, sv.WriterName, bo.TotalRevenue
FROM ScriptVersions sv
JOIN BoxOffice bo ON sv.FilmID=bo.FilmID;

-- 22. Join with CastingCalls to get roles
SELECT sv.VersionID, sv.FilmID, c.RoleTitle, c.Status AS CastingStatus
FROM ScriptVersions sv
JOIN CastingCalls c ON sv.FilmID=c.FilmID;

-- 23. Join with DistributionPartners
SELECT sv.VersionID, sv.FilmID, dp.PartnerName, dp.NumberOfScreens
FROM ScriptVersions sv
JOIN DistributionPartners dp ON sv.FilmID=dp.PartnerID;

-- 24. Join with CensorshipCertificates
SELECT sv.VersionID, sv.FilmID, cc.CertificateType, cc.Language
FROM ScriptVersions sv
JOIN CensorshipCertificates cc ON sv.FilmID=cc.FilmID;

-- 25. Join with StreamingRights
SELECT sv.VersionID, sv.FilmID, sr.PlatformName, sr.AmountPaid
FROM ScriptVersions sv
JOIN StreamingRights sr ON sv.FilmID=sr.FilmID;

-- 26. Join with SponsorshipDeals
SELECT sv.VersionID, sv.FilmID, sd.SponsorName, sd.Amount
FROM ScriptVersions sv
JOIN SponsorshipDeals sd ON sv.FilmID=sd.FilmID;

-- 27. Join with ProductionSchedules to get location & supervisor
SELECT sv.VersionID, sv.FilmID, ps.Location, ps.SupervisorName
FROM ScriptVersions sv
JOIN ProductionSchedules ps ON sv.FilmID=ps.FilmID;

-- 28. Scripts with approved status and high revenue films
SELECT sv.VersionID, sv.WriterName, bo.TotalRevenue
FROM ScriptVersions sv
JOIN BoxOffice bo ON sv.FilmID=bo.FilmID
WHERE sv.VersionStatus='Approved' AND bo.TotalRevenue>200000000;

-- 29. Latest script version with streaming info
SELECT sv.FilmID, sv.VersionID, sr.PlatformName, sr.AmountPaid
FROM ScriptVersions sv
JOIN StreamingRights sr ON sv.FilmID=sr.FilmID
WHERE sv.DraftNumber = (SELECT MAX(DraftNumber) FROM ScriptVersions WHERE FilmID=sv.FilmID);

-- 30. Scripts with active sponsorships and production locations
SELECT sv.FilmID, sv.VersionID, sd.SponsorName, ps.Location
FROM ScriptVersions sv
JOIN SponsorshipDeals sd ON sv.FilmID=sd.FilmID
JOIN ProductionSchedules ps ON sv.FilmID=ps.FilmID
WHERE sd.DealStatus='Active';


-- 31. Function to get script age in days
DELIMITER $$
CREATE FUNCTION ScriptAgeDays(submitd DATE) RETURNS INT
BEGIN
  RETURN DATEDIFF(CURDATE(), submitd);
END$$
DELIMITER ;

-- 32. Use ScriptAgeDays
SELECT VersionID, ScriptAgeDays(SubmitDate) AS AgeInDays FROM ScriptVersions;

-- 33. Function to check if script is approved
DELIMITER $$
CREATE FUNCTION IsApproved(status VARCHAR(20)) RETURNS VARCHAR(10)
BEGIN
  RETURN IF(status='Approved','Yes','No');
END$$
DELIMITER ;

-- 34. Use IsApproved
SELECT VersionID, WriterName, IsApproved(VersionStatus) AS ApprovedFlag FROM ScriptVersions;

-- 35. Function to check if script needs rewrite
DELIMITER $$
CREATE FUNCTION NeedsRewrite(notes TEXT) RETURNS VARCHAR(10)
BEGIN
  RETURN IF(LOWER(notes) LIKE '%rewrite%','Yes','No');
END$$
DELIMITER ;

-- 36. Use NeedsRewrite
SELECT VersionID, Notes, NeedsRewrite(Notes) AS RewriteRequired FROM ScriptVersions;

-- 37. Function to check draft stage
DELIMITER $$
CREATE FUNCTION DraftStage(draft INT) RETURNS VARCHAR(20)
BEGIN
  RETURN CASE
    WHEN draft=1 THEN 'Initial'
    WHEN draft=2 THEN 'Intermediate'
    ELSE 'Final'
  END;
END$$
DELIMITER ;

-- 38. Use DraftStage
SELECT VersionID, DraftNumber, DraftStage(DraftNumber) AS DraftCategory FROM ScriptVersions;

-- 39. Function to summarize change length
DELIMITER $$
CREATE FUNCTION ChangeLength(summary TEXT) RETURNS INT
BEGIN
  RETURN CHAR_LENGTH(summary);
END$$
DELIMITER ;

-- 40. Use ChangeLength
SELECT VersionID, ChangeSummary, ChangeLength(ChangeSummary) AS ChangeChars FROM ScriptVersions;


-- 41. Rank scripts by draft number
SELECT VersionID, FilmID, DraftNumber,
       RANK() OVER (PARTITION BY FilmID ORDER BY DraftNumber DESC) AS RankDraft
FROM ScriptVersions;

-- 42. Dense rank of script age
SELECT VersionID, ScriptAgeDays(SubmitDate) AS AgeDays,
       DENSE_RANK() OVER (ORDER BY ScriptAgeDays(SubmitDate) DESC) AS AgeRank
FROM ScriptVersions;

-- 43. Row number per writer
SELECT WriterName, VersionID,
       ROW_NUMBER() OVER (PARTITION BY WriterName ORDER BY SubmitDate DESC) AS RowNum
FROM ScriptVersions;

-- 44. First script submitted per film
SELECT FilmID, VersionID,
       FIRST_VALUE(VersionID) OVER (PARTITION BY FilmID ORDER BY SubmitDate) AS FirstVersion
FROM ScriptVersions;

-- 45. Last script submitted per film
SELECT FilmID, VersionID,
       LAST_VALUE(VersionID) OVER (PARTITION BY FilmID ORDER BY SubmitDate
       ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS LastVersion
FROM ScriptVersions;

-- 46. Previous script submit date
SELECT VersionID, SubmitDate,
       LAG(SubmitDate,1) OVER (PARTITION BY FilmID ORDER BY DraftNumber) AS PrevSubmit
FROM ScriptVersions;

-- 47. Next script submit date
SELECT VersionID, SubmitDate,
       LEAD(SubmitDate,1) OVER (PARTITION BY FilmID ORDER BY DraftNumber) AS NextSubmit
FROM ScriptVersions;

-- 48. Percent rank of draft number
SELECT VersionID, DraftNumber,
       PERCENT_RANK() OVER (PARTITION BY FilmID ORDER BY DraftNumber) AS DraftPercent
FROM ScriptVersions;

-- 49. NTILE quartile of script length
SELECT VersionID, CHAR_LENGTH(ChangeSummary) AS LengthChars,
       NTILE(4) OVER (ORDER BY CHAR_LENGTH(ChangeSummary)) AS LengthQuartile
FROM ScriptVersions;

-- 50. Count of approved scripts per writer
SELECT WriterName, COUNT(*) AS ApprovedCount
FROM ScriptVersions
WHERE VersionStatus='Approved'
GROUP BY WriterName;


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


-- 1. Select all legal clearances
SELECT * FROM LegalClearances;

-- 2. Approved legal clearances
SELECT * FROM LegalClearances WHERE ApprovalStatus='Approved';

-- 3. Clearances expiring this year
SELECT * FROM LegalClearances WHERE YEAR(ValidTill)=YEAR(CURDATE());

-- 4. Clearances issued by 'Mumbai Police'
SELECT * FROM LegalClearances WHERE IssuedBy='Mumbai Police';

-- 5. Clearances for film ID 110
SELECT * FROM LegalClearances WHERE FilmID=110;

-- 6. Count clearances per film
SELECT FilmID, COUNT(*) AS NumClearances
FROM LegalClearances
GROUP BY FilmID;

-- 7. Clearances issued before production start
SELECT * FROM LegalClearances
WHERE IssueDate < (SELECT MIN(StartDate) FROM ProductionSchedules WHERE ProductionSchedules.FilmID=LegalClearances.FilmID);

-- 8. Clearances valid beyond 2025
SELECT * FROM LegalClearances WHERE ValidTill > '2025-12-31';

-- 9. Clearances containing 'Permit' in type
SELECT * FROM LegalClearances WHERE ClearanceType LIKE '%Permit%';

-- 10. Clearances sorted by issue date descending
SELECT * FROM LegalClearances ORDER BY IssueDate DESC;


-- 11. Films with approvals before 2022
SELECT * FROM LegalClearances
WHERE FilmID IN (SELECT FilmID FROM ScriptVersions WHERE SubmitDate<'2022-01-01');

-- 12. Clearances for films with revenue > 200M
SELECT * FROM LegalClearances
WHERE FilmID IN (SELECT FilmID FROM BoxOffice WHERE TotalRevenue>200000000);

-- 13. Clearances linked to streaming rights
SELECT * FROM LegalClearances
WHERE FilmID IN (SELECT FilmID FROM StreamingRights);

-- 14. Clearances for films with active sponsorship deals
SELECT * FROM LegalClearances
WHERE FilmID IN (SELECT FilmID FROM SponsorshipDeals WHERE DealStatus='Active');

-- 15. Clearances issued before script submission
SELECT * FROM LegalClearances
WHERE IssueDate < (SELECT MIN(SubmitDate) FROM ScriptVersions WHERE ScriptVersions.FilmID=LegalClearances.FilmID);

-- 16. Clearances for films shot at Hyderabad
SELECT * FROM LegalClearances
WHERE FilmID IN (SELECT FilmID FROM ProductionSchedules WHERE Location LIKE '%Hyderabad%');

-- 17. Clearances for rejected scripts
SELECT * FROM LegalClearances
WHERE FilmID IN (SELECT FilmID FROM ScriptVersions WHERE VersionStatus='Rejected');

-- 18. Clearances for films distributed by 'Reliance Entertainment'
SELECT * FROM LegalClearances
WHERE FilmID IN (SELECT FilmID FROM DistributionPartners WHERE PartnerName='Reliance Entertainment');

-- 19. Clearances issued by government agencies only
SELECT * FROM LegalClearances
WHERE IssuedBy IN ('Mumbai Police','Delhi Police','DGCA India','ASI India','MHA India');

-- 20. Clearances for films with more than 2 legal approvals
SELECT * FROM LegalClearances
WHERE FilmID IN (SELECT FilmID FROM LegalClearances GROUP BY FilmID HAVING COUNT(*)>2);


-- 21. Join with ScriptVersions to get writer info
SELECT lc.ClearanceID, lc.FilmID, lc.ClearanceType, sv.WriterName, sv.VersionStatus
FROM LegalClearances lc
JOIN ScriptVersions sv ON lc.FilmID=sv.FilmID;

-- 22. Join with BoxOffice to get revenue
SELECT lc.ClearanceID, lc.FilmID, lc.ApprovalStatus, bo.TotalRevenue
FROM LegalClearances lc
JOIN BoxOffice bo ON lc.FilmID=bo.FilmID;

-- 23. Join with CastingCalls to see casting impact
SELECT lc.ClearanceID, lc.FilmID, c.RoleTitle, c.Status AS CastingStatus
FROM LegalClearances lc
JOIN CastingCalls c ON lc.FilmID=c.FilmID;

-- 24. Join with DistributionPartners
SELECT lc.ClearanceID, lc.FilmID, dp.PartnerName, dp.NumberOfScreens
FROM LegalClearances lc
JOIN DistributionPartners dp ON lc.FilmID=dp.FilmID;

-- 25. Join with CensorshipCertificates
SELECT lc.ClearanceID, lc.FilmID, cc.CertificateType, cc.Language
FROM LegalClearances lc
JOIN CensorshipCertificates cc ON lc.FilmID=cc.FilmID;

-- 26. Join with StreamingRights
SELECT lc.ClearanceID, lc.FilmID, sr.PlatformName, sr.AmountPaid
FROM LegalClearances lc
JOIN StreamingRights sr ON lc.FilmID=sr.FilmID;

-- 27. Join with SponsorshipDeals
SELECT lc.ClearanceID, lc.FilmID, sd.SponsorName, sd.Amount
FROM LegalClearances lc
JOIN SponsorshipDeals sd ON lc.FilmID=sd.FilmID;

-- 28. Join with ProductionSchedules for locations
SELECT lc.ClearanceID, lc.FilmID, ps.Location, ps.SupervisorName
FROM LegalClearances lc
JOIN ProductionSchedules ps ON lc.FilmID=ps.FilmID;

-- 29. Join all: Script + BoxOffice + Legal
SELECT sv.FilmID, sv.WriterName, bo.TotalRevenue, lc.ClearanceType, lc.ApprovalStatus
FROM ScriptVersions sv
JOIN BoxOffice bo ON sv.FilmID=bo.FilmID
JOIN LegalClearances lc ON sv.FilmID=lc.FilmID;

-- 30. Clearances for films with active sponsorships
SELECT lc.FilmID, lc.ClearanceType, sd.SponsorName, sd.DealStatus
FROM LegalClearances lc
JOIN SponsorshipDeals sd ON lc.FilmID=sd.FilmID
WHERE sd.DealStatus='Active';


-- 31. Function to get clearance validity in days
DELIMITER $$
CREATE FUNCTION ClearanceValidityDays(validtill DATE) RETURNS INT
BEGIN
  RETURN DATEDIFF(validtill, CURDATE());
END$$
DELIMITER ;

-- 32. Use ClearanceValidityDays
SELECT ClearanceID, ClearanceType, ClearanceValidityDays(ValidTill) AS DaysRemaining FROM LegalClearances;

-- 33. Function to check if clearance is active
DELIMITER $$
CREATE FUNCTION IsClearanceActive(status VARCHAR(20), validtill DATE) RETURNS VARCHAR(10)
BEGIN
  RETURN IF(status='Approved' AND validtill>=CURDATE(),'Yes','No');
END$$
DELIMITER ;

-- 34. Use IsClearanceActive
SELECT ClearanceID, ClearanceType, IsClearanceActive(ApprovalStatus,ValidTill) AS ActiveFlag FROM LegalClearances;

-- 35. Function to flag government-issued clearance
DELIMITER $$
CREATE FUNCTION IsGovernmentIssued(issuedby VARCHAR(100)) RETURNS VARCHAR(10)
BEGIN
  RETURN IF(issuedby IN ('Mumbai Police','Delhi Police','DGCA India','ASI India','MHA India'),'Yes','No');
END$$
DELIMITER ;

-- 36. Use IsGovernmentIssued
SELECT ClearanceID, ClearanceType, IsGovernmentIssued(IssuedBy) AS GovFlag FROM LegalClearances;

-- 37. Function to check if clearance is expiring soon (<30 days)
DELIMITER $$
CREATE FUNCTION ExpiringSoon(validtill DATE) RETURNS VARCHAR(10)
BEGIN
  RETURN IF(DATEDIFF(validtill,CURDATE())<30,'Yes','No');
END$$
DELIMITER ;

-- 38. Use ExpiringSoon
SELECT ClearanceID, ClearanceType, ExpiringSoon(ValidTill) AS ExpiringSoonFlag FROM LegalClearances;

-- 39. Function to get remarks length
DELIMITER $$
CREATE FUNCTION RemarksLength(rem TEXT) RETURNS INT
BEGIN
  RETURN CHAR_LENGTH(rem);
END$$
DELIMITER ;

-- 40. Use RemarksLength
SELECT ClearanceID, ClearanceType, Remarks, RemarksLength(Remarks) AS LengthChars FROM LegalClearances;


-- 41. Rank clearances by validity days
SELECT ClearanceID, ClearanceType, ClearanceValidityDays(ValidTill) AS DaysValid,
       RANK() OVER (ORDER BY ClearanceValidityDays(ValidTill) DESC) AS RankValid
FROM LegalClearances;

-- 42. Dense rank by days remaining
SELECT ClearanceID, ClearanceType, ClearanceValidityDays(ValidTill) AS DaysLeft,
       DENSE_RANK() OVER (ORDER BY ClearanceValidityDays(ValidTill) DESC) AS DenseRank
FROM LegalClearances;

-- 43. Row number by approval status
SELECT ApprovalStatus, ClearanceID,
       ROW_NUMBER() OVER (PARTITION BY ApprovalStatus ORDER BY IssueDate) AS RowNum
FROM LegalClearances;

-- 44. First clearance issued per film
SELECT FilmID, ClearanceID,
       FIRST_VALUE(ClearanceID) OVER (PARTITION BY FilmID ORDER BY IssueDate) AS FirstClearance
FROM LegalClearances;

-- 45. Last clearance issued per film
SELECT FilmID, ClearanceID,
       LAST_VALUE(ClearanceID) OVER (PARTITION BY FilmID ORDER BY IssueDate
       ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS LastClearance
FROM LegalClearances;

-- 46. Previous clearance issue date
SELECT ClearanceID, IssueDate,
       LAG(IssueDate,1) OVER (PARTITION BY FilmID ORDER BY IssueDate) AS PrevIssue
FROM LegalClearances;

-- 47. Next clearance issue date
SELECT ClearanceID, IssueDate,
       LEAD(IssueDate,1) OVER (PARTITION BY FilmID ORDER BY IssueDate) AS NextIssue
FROM LegalClearances;

-- 48. Percent rank by clearance ID
SELECT ClearanceID,
       PERCENT_RANK() OVER (ORDER BY ClearanceID) AS PercentRank
FROM LegalClearances;

-- 49. NTILE quartile of clearance document length
SELECT ClearanceID, CHAR_LENGTH(DocumentPath) AS DocLength,
       NTILE(4) OVER (ORDER BY CHAR_LENGTH(DocumentPath)) AS DocQuartile
FROM LegalClearances;

-- 50. Count of approved clearances per issuing authority
SELECT IssuedBy, COUNT(*) AS ApprovedCount
FROM LegalClearances
WHERE ApprovalStatus='Approved'
GROUP BY IssuedBy;


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


-- 1. Select all post-production records
SELECT * FROM PostProduction;

-- 2. Completed post-production tasks
SELECT * FROM PostProduction WHERE Status='Completed';

-- 3. Post-production starting in 2022
SELECT * FROM PostProduction WHERE YEAR(StartDate)=2022;

-- 4. Editors working at 'Red Chillies VFX'
SELECT * FROM PostProduction WHERE VFXStudio='Red Chillies VFX';

-- 5. Post-production for FilmID=110
SELECT * FROM PostProduction WHERE FilmID=110;

-- 6. Count of post-production tasks per VFX studio
SELECT VFXStudio, COUNT(*) AS NumProjects FROM PostProduction GROUP BY VFXStudio;

-- 7. Projects longer than 60 days
SELECT *, DATEDIFF(EndDate, StartDate) AS DurationDays 
FROM PostProduction 
WHERE DATEDIFF(EndDate, StartDate)>60;

-- 8. Projects handled by 'Sanjay Varma' as Sound Engineer
SELECT * FROM PostProduction WHERE SoundEngineer='Sanjay Varma';

-- 9. Projects completed before 2021
SELECT * FROM PostProduction WHERE EndDate<'2021-01-01';

-- 10. Projects with remarks containing 'HDR'
SELECT * FROM PostProduction WHERE Remarks LIKE '%HDR%';


-- 11. Post-production for films with revenue > 200M
SELECT * FROM PostProduction
WHERE FilmID IN (SELECT FilmID FROM BoxOffice WHERE TotalRevenue>200000000);

-- 12. Post-production for films with approved legal clearances
SELECT * FROM PostProduction
WHERE FilmID IN (SELECT FilmID FROM LegalClearances WHERE ApprovalStatus='Approved');

-- 13. Post-production for films having active sponsorship
SELECT * FROM PostProduction
WHERE FilmID IN (SELECT FilmID FROM SponsorshipDeals WHERE DealStatus='Active');

-- 14. Projects for writers with multiple script versions
SELECT * FROM PostProduction
WHERE FilmID IN (
  SELECT FilmID FROM ScriptVersions
  GROUP BY FilmID HAVING COUNT(*)>1
);

-- 15. Projects for films distributed by 'Reliance Entertainment'
SELECT * FROM PostProduction
WHERE FilmID IN (SELECT FilmID FROM DistributionPartners WHERE PartnerName='Reliance Entertainment');

-- 16. Post-production for films shot in 'Mumbai'
SELECT * FROM PostProduction
WHERE FilmID IN (SELECT FilmID FROM ProductionSchedules WHERE Location LIKE '%Mumbai%');

-- 17. Projects with post-production overlapping script submission
SELECT * FROM PostProduction
WHERE StartDate <= (SELECT MAX(SubmitDate) FROM ScriptVersions WHERE ScriptVersions.FilmID=PostProduction.FilmID);

-- 18. Projects with editors working in 'Famous Studios'
SELECT * FROM PostProduction
WHERE ColorGradingStudio='Famous Studios';

-- 19. Projects for films with streaming rights
SELECT * FROM PostProduction
WHERE FilmID IN (SELECT FilmID FROM StreamingRights);

-- 20. Projects with remarks containing 'audio'
SELECT * FROM PostProduction
WHERE Remarks LIKE '%audio%';

-- 21. Join with BoxOffice for revenue info
SELECT pp.PostID, pp.FilmID, pp.EditorName, bo.TotalRevenue
FROM PostProduction pp
JOIN BoxOffice bo ON pp.FilmID=bo.FilmID;

-- 22. Join with LegalClearances
SELECT pp.PostID, pp.FilmID, pp.Status, lc.ClearanceType, lc.ApprovalStatus
FROM PostProduction pp
JOIN LegalClearances lc ON pp.FilmID=lc.FilmID;

-- 23. Join with ScriptVersions for writer info
SELECT pp.PostID, pp.FilmID, pp.EditorName, sv.WriterName, sv.VersionStatus
FROM PostProduction pp
JOIN ScriptVersions sv ON pp.FilmID=sv.FilmID;

-- 24. Join with CastingCalls
SELECT pp.PostID, pp.FilmID, c.RoleTitle, c.Status AS CastingStatus
FROM PostProduction pp
JOIN CastingCalls c ON pp.FilmID=c.FilmID;

-- 25. Join with DistributionPartners
SELECT pp.PostID, pp.FilmID, dp.PartnerName, dp.NumberOfScreens
FROM PostProduction pp
JOIN DistributionPartners dp ON pp.FilmID=dp.FilmID;

-- 26. Join with CensorshipCertificates
SELECT pp.PostID, pp.FilmID, cc.CertificateType, cc.Language
FROM PostProduction pp
JOIN CensorshipCertificates cc ON pp.FilmID=cc.FilmID;

-- 27. Join with StreamingRights
SELECT pp.PostID, pp.FilmID, sr.PlatformName, sr.AmountPaid
FROM PostProduction pp
JOIN StreamingRights sr ON pp.FilmID=sr.FilmID;

-- 28. Join with SponsorshipDeals
SELECT pp.PostID, pp.FilmID, sd.SponsorName, sd.Amount
FROM PostProduction pp
JOIN SponsorshipDeals sd ON pp.FilmID=sd.FilmID;

-- 29. Join with ProductionSchedules
SELECT pp.PostID, pp.FilmID, ps.Location, ps.SupervisorName
FROM PostProduction pp
JOIN ProductionSchedules ps ON pp.FilmID=ps.FilmID;

-- 30. Join PostProduction + ScriptVersions + BoxOffice + LegalClearances
SELECT pp.FilmID, pp.EditorName, sv.WriterName, bo.TotalRevenue, lc.ClearanceType
FROM PostProduction pp
JOIN ScriptVersions sv ON pp.FilmID=sv.FilmID
JOIN BoxOffice bo ON pp.FilmID=bo.FilmID
JOIN LegalClearances lc ON pp.FilmID=lc.FilmID;

-- 31. Function to calculate post-production duration
DELIMITER $$
CREATE FUNCTION PostDurationDays(start_date DATE, end_date DATE) RETURNS INT
BEGIN
  RETURN DATEDIFF(end_date, start_date);
END$$
DELIMITER ;

-- 32. Use PostDurationDays
SELECT PostID, FilmID, PostDurationDays(StartDate, EndDate) AS DurationDays
FROM PostProduction;

-- 33. Function to flag long post-production (>60 days)
DELIMITER $$
CREATE FUNCTION IsLongPost(duration INT) RETURNS VARCHAR(10)
BEGIN
  RETURN IF(duration>60,'Yes','No');
END$$
DELIMITER ;

-- 34. Use IsLongPost
SELECT PostID, FilmID, IsLongPost(PostDurationDays(StartDate,EndDate)) AS LongFlag
FROM PostProduction;

-- 35. Function to check if post-production is completed
DELIMITER $$
CREATE FUNCTION IsCompleted(status VARCHAR(20)) RETURNS VARCHAR(10)
BEGIN
  RETURN IF(status='Completed','Yes','No');
END$$
DELIMITER ;

-- 36. Use IsCompleted
SELECT PostID, Status, IsCompleted(Status) AS CompletionFlag FROM PostProduction;

-- 37. Function to flag premium VFX studios
DELIMITER $$
CREATE FUNCTION IsPremiumVFX(studio VARCHAR(100)) RETURNS VARCHAR(10)
BEGIN
  RETURN IF(studio IN ('Red Chillies VFX','Makuta VFX','PhantomFX'),'Yes','No');
END$$
DELIMITER ;

-- 38. Use IsPremiumVFX
SELECT PostID, VFXStudio, IsPremiumVFX(VFXStudio) AS PremiumFlag FROM PostProduction;

-- 39. Function to calculate remarks length
DELIMITER $$
CREATE FUNCTION RemarksLength(rem TEXT) RETURNS INT
BEGIN
  RETURN CHAR_LENGTH(rem);
END$$
DELIMITER ;

-- 40. Use RemarksLength
SELECT PostID, Remarks, RemarksLength(Remarks) AS LengthChars FROM PostProduction;

-- 41. Rank post-productions by duration
SELECT PostID, FilmID, PostDurationDays(StartDate,EndDate) AS Duration,
       RANK() OVER (ORDER BY PostDurationDays(StartDate,EndDate) DESC) AS DurationRank
FROM PostProduction;

-- 42. Dense rank by post-production duration
SELECT PostID, FilmID, PostDurationDays(StartDate,EndDate) AS Duration,
       DENSE_RANK() OVER (ORDER BY PostDurationDays(StartDate,EndDate) DESC) AS DenseRank
FROM PostProduction;

-- 43. Row number partitioned by VFXStudio
SELECT VFXStudio, PostID,
       ROW_NUMBER() OVER (PARTITION BY VFXStudio ORDER BY StartDate) AS RowNum
FROM PostProduction;

-- 44. First post-production start per VFXStudio
SELECT VFXStudio, PostID,
       FIRST_VALUE(PostID) OVER (PARTITION BY VFXStudio ORDER BY StartDate) AS FirstProject
FROM PostProduction;

-- 45. Last post-production end per VFXStudio
SELECT VFXStudio, PostID,
       LAST_VALUE(PostID) OVER (PARTITION BY VFXStudio ORDER BY EndDate
       ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS LastProject
FROM PostProduction;

-- 46. Previous project end date
SELECT PostID, EndDate,
       LAG(EndDate,1) OVER (PARTITION BY VFXStudio ORDER BY EndDate) AS PrevEnd
FROM PostProduction;

-- 47. Next project start date
SELECT PostID, StartDate,
       LEAD(StartDate,1) OVER (PARTITION BY VFXStudio ORDER BY StartDate) AS NextStart
FROM PostProduction;

-- 48. Percent rank by PostID
SELECT PostID,
       PERCENT_RANK() OVER (ORDER BY PostID) AS PercentRank
FROM PostProduction;

-- 49. NTILE quartile of remarks length
SELECT PostID, CHAR_LENGTH(Remarks) AS RemarksLen,
       NTILE(4) OVER (ORDER BY CHAR_LENGTH(Remarks)) AS RemarksQuartile
FROM PostProduction;

-- 50. Count of completed projects per VFXStudio
SELECT VFXStudio, COUNT(*) AS CompletedCount
FROM PostProduction
WHERE Status='Completed'
GROUP BY VFXStudio;


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

-- 1. Select all audience surveys
SELECT * FROM AudienceSurveys;

-- 2. Surveys with rating >= 8
SELECT * FROM AudienceSurveys WHERE Rating>=8;

-- 3. Surveys conducted in Mumbai
SELECT * FROM AudienceSurveys WHERE Region='Mumbai';

-- 4. Surveys for FilmID=110
SELECT * FROM AudienceSurveys WHERE FilmID=110;

-- 5. Surveys for age group 26-35
SELECT * FROM AudienceSurveys WHERE AgeGroup='26-35';

-- 6. Count surveys by gender
SELECT Gender, COUNT(*) AS SurveyCount FROM AudienceSurveys GROUP BY Gender;

-- 7. Average rating per film
SELECT FilmID, AVG(Rating) AS AvgRating FROM AudienceSurveys GROUP BY FilmID;

-- 8. Total responses per region
SELECT Region, SUM(ResponseCount) AS TotalResponses FROM AudienceSurveys GROUP BY Region;

-- 9. Surveys with feedback containing 'emotional'
SELECT * FROM AudienceSurveys WHERE Feedback LIKE '%emotional%';

-- 10. Surveys sorted by Rating descending
SELECT * FROM AudienceSurveys ORDER BY Rating DESC;

-- 11. Surveys for films with revenue > 200M
SELECT * FROM AudienceSurveys
WHERE FilmID IN (SELECT FilmID FROM BoxOffice WHERE TotalRevenue>200000000);

-- 12. Surveys for films with completed post-production
SELECT * FROM AudienceSurveys
WHERE FilmID IN (SELECT FilmID FROM PostProduction WHERE Status='Completed');

-- 13. Surveys for films with approved legal clearances
SELECT * FROM AudienceSurveys
WHERE FilmID IN (SELECT FilmID FROM LegalClearances WHERE ApprovalStatus='Approved');

-- 14. Surveys for films with active sponsorship deals
SELECT * FROM AudienceSurveys
WHERE FilmID IN (SELECT FilmID FROM SponsorshipDeals WHERE DealStatus='Active');

-- 15. Surveys for films distributed by 'Reliance Entertainment'
SELECT * FROM AudienceSurveys
WHERE FilmID IN (SELECT FilmID FROM DistributionPartners WHERE PartnerName='Reliance Entertainment');

-- 16. Surveys for films with script versions submitted before 2022
SELECT * FROM AudienceSurveys
WHERE FilmID IN (SELECT FilmID FROM ScriptVersions WHERE SubmitDate<'2022-01-01');

-- 17. Surveys with response count > 150
SELECT * FROM AudienceSurveys
WHERE ResponseCount>150;

-- 18. Surveys conducted by 'Ormax Media'
SELECT * FROM AudienceSurveys
WHERE ConductedBy='Ormax Media';

-- 19. Surveys for films with streaming rights
SELECT * FROM AudienceSurveys
WHERE FilmID IN (SELECT FilmID FROM StreamingRights);

-- 20. Surveys with ratings below average for the film
SELECT * FROM AudienceSurveys AS a
WHERE Rating < (SELECT AVG(Rating) FROM AudienceSurveys WHERE FilmID=a.FilmID);

-- 21. Join with BoxOffice to get revenue
SELECT a.SurveyID, a.FilmID, a.Rating, bo.TotalRevenue
FROM AudienceSurveys a
JOIN BoxOffice bo ON a.FilmID=bo.FilmID;

-- 22. Join with PostProduction to see impact of post-production
SELECT a.SurveyID, a.FilmID, a.Rating, pp.Status AS PostStatus
FROM AudienceSurveys a
JOIN PostProduction pp ON a.FilmID=pp.FilmID;

-- 23. Join with LegalClearances
SELECT a.SurveyID, a.FilmID, a.Rating, lc.ClearanceType, lc.ApprovalStatus
FROM AudienceSurveys a
JOIN LegalClearances lc ON a.FilmID=lc.FilmID;

-- 24. Join with ScriptVersions to get writer info
SELECT a.SurveyID, a.FilmID, a.Rating, sv.WriterName
FROM AudienceSurveys a
JOIN ScriptVersions sv ON a.FilmID=sv.FilmID;

-- 25. Join with CastingCalls to analyze cast impact
SELECT a.SurveyID, a.FilmID, a.Rating, c.RoleTitle, c.Status AS CastingStatus
FROM AudienceSurveys a
JOIN CastingCalls c ON a.FilmID=c.FilmID;

-- 26. Join with DistributionPartners
SELECT a.SurveyID, a.FilmID, a.Rating, dp.PartnerName, dp.NumberOfScreens
FROM AudienceSurveys a
JOIN DistributionPartners dp ON a.FilmID=dp.FilmID;

-- 27. Join with CensorshipCertificates
SELECT a.SurveyID, a.FilmID, a.Rating, cc.CertificateType
FROM AudienceSurveys a
JOIN CensorshipCertificates cc ON a.FilmID=cc.FilmID;

-- 28. Join with StreamingRights
SELECT a.SurveyID, a.FilmID, a.Rating, sr.PlatformName, sr.AmountPaid
FROM AudienceSurveys a
JOIN StreamingRights sr ON a.FilmID=sr.FilmID;

-- 29. Join with SponsorshipDeals
SELECT a.SurveyID, a.FilmID, a.Rating, sd.SponsorName, sd.Amount
FROM AudienceSurveys a
JOIN SponsorshipDeals sd ON a.FilmID=sd.FilmID;

-- 30. Join with ProductionSchedules to get location
SELECT a.SurveyID, a.FilmID, a.Rating, ps.Location
FROM AudienceSurveys a
JOIN ProductionSchedules ps ON a.FilmID=ps.FilmID;


-- 31. Function to classify rating
DELIMITER $$
CREATE FUNCTION RatingCategory(r INT) RETURNS VARCHAR(20)
BEGIN
  RETURN IF(r>=8,'Excellent', IF(r>=6,'Good','Poor'));
END$$
DELIMITER ;

-- 32. Use RatingCategory
SELECT SurveyID, Rating, RatingCategory(Rating) AS Category FROM AudienceSurveys;

-- 33. Function to check if survey had high response
DELIMITER $$
CREATE FUNCTION HighResponse(resp INT) RETURNS VARCHAR(10)
BEGIN
  RETURN IF(resp>150,'Yes','No');
END$$
DELIMITER ;

-- 34. Use HighResponse
SELECT SurveyID, ResponseCount, HighResponse(ResponseCount) AS HighRespFlag FROM AudienceSurveys;

-- 35. Function to flag female dominant surveys
DELIMITER $$
CREATE FUNCTION FemaleDominant(gender VARCHAR(10)) RETURNS VARCHAR(10)
BEGIN
  RETURN IF(gender='Female','Yes','No');
END$$
DELIMITER ;

-- 36. Use FemaleDominant
SELECT SurveyID, Gender, FemaleDominant(Gender) AS IsFemale FROM AudienceSurveys;

-- 37. Function to check regional surveys
DELIMITER $$
CREATE FUNCTION RegionCheck(region VARCHAR(50)) RETURNS VARCHAR(10)
BEGIN
  RETURN IF(region IN ('Mumbai','Delhi','Bangalore'),'Metro','Non-Metro');
END$$
DELIMITER ;

-- 38. Use RegionCheck
SELECT SurveyID, Region, RegionCheck(Region) AS MetroFlag FROM AudienceSurveys;

-- 39. Function to check if film rating is above average
DELIMITER $$
CREATE FUNCTION AboveAvgRating(film INT, rating INT) RETURNS VARCHAR(10)
BEGIN
  DECLARE avgR DECIMAL(5,2);
  SELECT AVG(Rating) INTO avgR FROM AudienceSurveys WHERE FilmID=film;
  RETURN IF(rating>avgR,'Yes','No');
END$$
DELIMITER ;

-- 40. Use AboveAvgRating
SELECT SurveyID, FilmID, Rating, AboveAvgRating(FilmID, Rating) AS AboveAverage FROM AudienceSurveys;


-- 41. Rank surveys by rating per film
SELECT SurveyID, FilmID, Rating,
       RANK() OVER (PARTITION BY FilmID ORDER BY Rating DESC) AS RatingRank
FROM AudienceSurveys;

-- 42. Dense rank by response count per film
SELECT SurveyID, FilmID, ResponseCount,
       DENSE_RANK() OVER (PARTITION BY FilmID ORDER BY ResponseCount DESC) AS DenseRankResp
FROM AudienceSurveys;

-- 43. Row number per region
SELECT Region, SurveyID,
       ROW_NUMBER() OVER (PARTITION BY Region ORDER BY SurveyDate) AS RowNum
FROM AudienceSurveys;

-- 44. First survey date per film
SELECT FilmID, SurveyID,
       FIRST_VALUE(SurveyDate) OVER (PARTITION BY FilmID ORDER BY SurveyDate) AS FirstSurvey
FROM AudienceSurveys;

-- 45. Last survey date per film
SELECT FilmID, SurveyID,
       LAST_VALUE(SurveyDate) OVER (PARTITION BY FilmID ORDER BY SurveyDate
       ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS LastSurvey
FROM AudienceSurveys;

-- 46. Previous survey rating
SELECT SurveyID, Rating,
       LAG(Rating,1) OVER (PARTITION BY FilmID ORDER BY SurveyDate) AS PrevRating
FROM AudienceSurveys;

-- 47. Next survey rating
SELECT SurveyID, Rating,
       LEAD(Rating,1) OVER (PARTITION BY FilmID ORDER BY SurveyDate) AS NextRating
FROM AudienceSurveys;

-- 48. Percent rank of rating per film
SELECT SurveyID, FilmID, Rating,
       PERCENT_RANK() OVER (PARTITION BY FilmID ORDER BY Rating) AS PercentRank
FROM AudienceSurveys;

-- 49. NTILE quartile of response count
SELECT SurveyID, ResponseCount,
       NTILE(4) OVER (ORDER BY ResponseCount) AS ResponseQuartile
FROM AudienceSurveys;

-- 50. Count of surveys per conducted by agency
SELECT ConductedBy, COUNT(*) AS TotalSurveys
FROM AudienceSurveys
GROUP BY ConductedBy;

