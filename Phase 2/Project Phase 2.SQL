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


-- ---------------------------------------- Database queries ---------------------------------------------------------------------------------------------------------------------------------------------------

-- create a database Film_Production_Company;
CREATE DATABASE Film_Production_Company;

-- to work on database, you need to use it first
USE Film_Production_Company;

-- --------------------------------------------------------- Table Queries ------------------------------------------------------------------------------------------------------------------------------------

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

-- 1. Create a new table to store actors
CREATE TABLE Actors (
    ActorID INT PRIMARY KEY,
    Name VARCHAR(100),
    BirthDate DATE
);

-- 2. Alter Films table to add Director column
ALTER TABLE Films ADD Director VARCHAR(100);

-- 3. Rename the column 'Rating' to 'AgeRating'
ALTER TABLE Films RENAME COLUMN Rating TO AgeRating;

-- 4. Drop the column 'ProductionStatus'
ALTER TABLE Films DROP COLUMN ProductionStatus;

-- 5. Drop the Actors table
DROP TABLE IF EXISTS Actors;

-- 6. Update budget of 'Pathaan'
UPDATE Films SET Budget = 2600000000.00 WHERE Title = 'Pathaan';

-- 7. Delete a film with ID 20
DELETE FROM Films WHERE FilmID = 20;

-- 8. Insert a new film
INSERT INTO Films VALUES (21, 'Don 3', 'Action Thriller', '2025-12-25', 3500000000.00, 'Hindi', 160, 'UA', 'Released', 'Excel Entertainment');

-- 9. Update the language of 'RRR' to 'Multilingual'
UPDATE Films SET Language = 'Multilingual' WHERE Title = 'RRR';

-- 10. Delete all films produced by 'Zee Studios'
DELETE FROM Films WHERE ProductionCompany = 'Zee Studios';

-- 11. Select all films
SELECT * FROM Films;

-- 12. Select Title and Budget where Budget > 100 crore
SELECT Title, Budget FROM Films WHERE Budget > 1000000000;

-- 13. Select distinct languages
SELECT DISTINCT Language FROM Films;

-- 14. Use alias for columns
SELECT Title AS MovieTitle, Budget AS FilmBudget FROM Films;

-- 15. Order by ReleaseDate DESC
SELECT Title, ReleaseDate FROM Films ORDER BY ReleaseDate DESC;

-- 16. Fetch films with duration between 150 and 170 minutes
SELECT Title, DurationMinutes FROM Films WHERE DurationMinutes BETWEEN 150 AND 170;

-- 17. Fetch films that are either 'Hindi' or 'Telugu'
SELECT Title FROM Films WHERE Language IN ('Hindi', 'Telugu');

-- 18. Use LIKE to find titles starting with 'P'
SELECT Title FROM Films WHERE Title LIKE 'P%';

-- 19. Group by Language
SELECT Language, COUNT(*) AS TotalFilms FROM Films GROUP BY Language;

-- 20. Having clause to filter groups with more than 2 films
SELECT ProductionCompany, COUNT(*) FROM Films GROUP BY ProductionCompany HAVING COUNT(*) > 2;

-- 21. Use functions: total budget
SELECT SUM(Budget) AS TotalBudget FROM Films;

-- 22. Use AVG to find average duration
SELECT AVG(DurationMinutes) AS AverageDuration FROM Films;

-- 23. Use MAX to find highest budget
SELECT MAX(Budget) AS MaxBudget FROM Films;

-- 24. Use MIN to find earliest release
SELECT MIN(ReleaseDate) AS EarliestRelease FROM Films;

-- 25. Use LENGTH function on title
SELECT Title, LENGTH(Title) AS TitleLength FROM Films;

-- 26. Subquery to get films with above average budget
SELECT Title, Budget FROM Films
WHERE Budget > (SELECT AVG(Budget) FROM Films);

-- 27. Subquery to find production company with most films
SELECT ProductionCompany FROM Films
GROUP BY ProductionCompany
ORDER BY COUNT(*) DESC LIMIT 1;

-- 28. Create Director table and insert data
CREATE TABLE Directors (
    DirectorID INT PRIMARY KEY,
    Name VARCHAR(100),
    FilmID INT,
    FOREIGN KEY (FilmID) REFERENCES Films(FilmID)
);

-- 29. Join Films with Directors
SELECT F.Title, D.Name AS Director
FROM Films F
JOIN Directors D ON F.FilmID = D.FilmID;

-- 30. Left join to get all films and director if exists
SELECT F.Title, D.Name AS Director
FROM Films F
LEFT JOIN Directors D ON F.FilmID = D.FilmID;

-- 31. Subquery in SELECT clause
SELECT Title, (SELECT Name FROM Directors WHERE FilmID = Films.FilmID) AS DirectorName
FROM Films;

-- 32. Find films with same production company as 'Jawan'
SELECT Title FROM Films
WHERE ProductionCompany = (SELECT ProductionCompany FROM Films WHERE Title = 'Jawan');

-- 33. Nested subquery to get highest budget film
SELECT Title FROM Films
WHERE Budget = (SELECT MAX(Budget) FROM Films);

-- 34. Count of films per genre using subquery
SELECT Genre, (SELECT COUNT(*) FROM Films F2 WHERE F2.Genre = F1.Genre) AS GenreCount
FROM Films F1
GROUP BY Genre;

-- 35. Join with alias for better readability
SELECT F.Title, D.Name AS DirectorName
FROM Films AS F
INNER JOIN Directors AS D ON F.FilmID = D.FilmID;

-- 36. Create a new table with ON DELETE CASCADE
CREATE TABLE Reviews (
    ReviewID INT PRIMARY KEY,
    FilmID INT,
    Rating INT,
    FOREIGN KEY (FilmID) REFERENCES Films(FilmID) ON DELETE CASCADE
);

-- 37. Insert a review
INSERT INTO Reviews VALUES (1, 1, 5);

-- 38. Delete a film to test CASCADE
-- This will delete the film and its review
DELETE FROM Films WHERE FilmID = 1;

-- 39. Create a table with ON UPDATE CASCADE
CREATE TABLE Awards (
    AwardID INT PRIMARY KEY,
    FilmID INT,
    AwardName VARCHAR(100),
    FOREIGN KEY (FilmID) REFERENCES Films(FilmID) ON UPDATE CASCADE
);

-- 40. Update FilmID in Films and cascade it to Awards
UPDATE Films SET FilmID = 101 WHERE Title = 'RRR';

-- 41. Use CASE to classify films by budget
SELECT Title,
    CASE 
        WHEN Budget > 3000000000 THEN 'Blockbuster'
        WHEN Budget > 1000000000 THEN 'Hit'
        ELSE 'Moderate'
    END AS BudgetCategory
FROM Films;

-- 42. Use IN with NOT
SELECT Title FROM Films WHERE Language NOT IN ('Hindi', 'Tamil');

-- 43. Use EXISTS to find films that have reviews
SELECT Title FROM Films
WHERE EXISTS (SELECT 1 FROM Reviews WHERE Reviews.FilmID = Films.FilmID);

-- 44. Use NOT EXISTS for films without reviews
SELECT Title FROM Films
WHERE NOT EXISTS (SELECT 1 FROM Reviews WHERE Reviews.FilmID = Films.FilmID);

-- 45. Combine AND/OR in WHERE
SELECT Title FROM Films
WHERE Genre = 'Action' AND (Language = 'Hindi' OR Language = 'Telugu');

-- 46. Count films by AgeRating
SELECT AgeRating, COUNT(*) FROM Films GROUP BY AgeRating;

-- 47. Filter by Release year using YEAR()
SELECT Title FROM Films WHERE EXTRACT(YEAR FROM ReleaseDate) = 2022;

-- 48. Select films with NULL director (after join)
SELECT F.Title FROM Films F
LEFT JOIN Directors D ON F.FilmID = D.FilmID
WHERE D.Name IS NULL;

-- 49. Using LIMIT to fetch top 5 highest budget films
SELECT Title, Budget FROM Films ORDER BY Budget DESC LIMIT 5;

-- 50. Using OFFSET for pagination (next 5 films)
SELECT Title FROM Films ORDER BY ReleaseDate DESC LIMIT 5 OFFSET 5;


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

-- 1. Create a table to store films directed by each director
CREATE TABLE DirectedFilms (
    FilmID INT PRIMARY KEY,
    FilmName VARCHAR(100),
    DirectorID INT,
    FOREIGN KEY (DirectorID) REFERENCES Directors(DirectorID)
);

-- 2. Add a new column 'Active' to indicate if director is still working
ALTER TABLE Directors ADD Active BOOLEAN DEFAULT TRUE;

-- 3. Modify the datatype of Phone to make it more flexible
ALTER TABLE Directors MODIFY Phone VARCHAR(30);

-- 4. Rename column 'Email' to 'EmailAddress'
ALTER TABLE Directors RENAME COLUMN Email TO EmailAddress;

-- 5. Drop the 'Active' column
ALTER TABLE Directors DROP COLUMN Active;

-- 6. Update the specialization of a director
UPDATE Directors SET Specialization = 'Action/Thriller' WHERE Name = 'Rohit Shetty';

-- 7. Delete a director by ID
DELETE FROM Directors WHERE DirectorID = 20;

-- 8. Insert a new director
INSERT INTO Directors (DirectorID, Name, ExperienceYears, Nationality, EmailAddress, Phone, Specialization, DebutYear, NotableFilms, AwardsWon)
VALUES (21, 'Ali Abbas Zafar', 14, 'Indian', 'ali.zafar@example.com', '9876543230', 'Action/Drama', 2010, 'Sultan, Tiger Zinda Hai', 5);

-- 9. Update awards won by 'Rajkumar Hirani'
UPDATE Directors SET AwardsWon = AwardsWon + 1 WHERE Name = 'Rajkumar Hirani';

-- 10. Delete all directors with less than 10 years of experience
DELETE FROM Directors WHERE ExperienceYears < 10;

-- 11. Select all data from Directors
SELECT * FROM Directors;

-- 12. Fetch names of directors with more than 20 years of experience
SELECT Name FROM Directors WHERE ExperienceYears > 20;

-- 13. Count total number of Indian directors
SELECT COUNT(*) AS IndianDirectors FROM Directors WHERE Nationality = 'Indian';

-- 14. Get list of all unique specializations
SELECT DISTINCT Specialization FROM Directors;

-- 15. Alias use: Display Name and Email as DirectorName and ContactEmail
SELECT Name AS DirectorName, EmailAddress AS ContactEmail FROM Directors;

-- 16. Find directors who debuted before 2000
SELECT Name, DebutYear FROM Directors WHERE DebutYear < 2000;

-- 17. List of directors ordered by AwardsWon descending
SELECT Name, AwardsWon FROM Directors ORDER BY AwardsWon DESC;

-- 18. List of directors ordered alphabetically
SELECT Name FROM Directors ORDER BY Name;

-- 19. Directors whose name starts with 'S'
SELECT Name FROM Directors WHERE Name LIKE 'S%';

-- 20. Directors with experience between 15 and 25 years
SELECT Name FROM Directors WHERE ExperienceYears BETWEEN 15 AND 25;

-- 21. Count of directors per specialization
SELECT Specialization, COUNT(*) AS Total FROM Directors GROUP BY Specialization;

-- 22. Group directors by nationality
SELECT Nationality, COUNT(*) AS CountByNationality FROM Directors GROUP BY Nationality;

-- 23. Filter groups having more than 3 directors per specialization
SELECT Specialization, COUNT(*) FROM Directors GROUP BY Specialization HAVING COUNT(*) > 3;

-- 24. Get maximum experience
SELECT MAX(ExperienceYears) AS MaxExperience FROM Directors;

-- 25. Get minimum debut year
SELECT MIN(DebutYear) AS EarliestDebut FROM Directors;

-- 26. Calculate average awards won
SELECT AVG(AwardsWon) AS AvgAwards FROM Directors;

-- 27. Use LENGTH function on NotableFilms
SELECT Name, LENGTH(NotableFilms) AS FilmTextLength FROM Directors;

-- 28. Use UPPER() on specialization
SELECT Name, UPPER(Specialization) AS SpecializationCaps FROM Directors;

-- 29. Use CONCAT to form full contact details
SELECT Name, CONCAT(EmailAddress, ' / ', Phone) AS Contact FROM Directors;

-- 30. Use CASE to categorize experience levels
SELECT Name,
  CASE 
    WHEN ExperienceYears >= 25 THEN 'Veteran'
    WHEN ExperienceYears >= 15 THEN 'Experienced'
    ELSE 'Emerging'
  END AS ExperienceLevel
FROM Directors;

-- 31. Use IN operator
SELECT Name FROM Directors WHERE Specialization IN ('Drama', 'Romantic Drama');

-- 32. Use NOT IN
SELECT Name FROM Directors WHERE Specialization NOT IN ('Action', 'Thriller');

-- 33. Use IS NOT NULL
SELECT Name FROM Directors WHERE EmailAddress IS NOT NULL;

-- 34. Use multiple conditions with AND
SELECT Name FROM Directors WHERE ExperienceYears > 15 AND AwardsWon > 5;

-- 35. Use OR
SELECT Name FROM Directors WHERE Specialization = 'Thriller' OR AwardsWon >= 10;

-- 36. Create Awards table referencing Directors
CREATE TABLE DirectorAwards (
    AwardID INT PRIMARY KEY,
    DirectorID INT,
    AwardName VARCHAR(100),
    AwardYear INT,
    FOREIGN KEY (DirectorID) REFERENCES Directors(DirectorID)
);

-- 37. Inner join between Directors and DirectedFilms
SELECT D.Name, F.FilmName
FROM Directors D
JOIN DirectedFilms F ON D.DirectorID = F.DirectorID;

-- 38. Left join to show all directors even if they haven’t directed a film
SELECT D.Name, F.FilmName
FROM Directors D
LEFT JOIN DirectedFilms F ON D.DirectorID = F.DirectorID;

-- 39. Subquery to get directors who have won more than average awards
SELECT Name, AwardsWon FROM Directors
WHERE AwardsWon > (SELECT AVG(AwardsWon) FROM Directors);

-- 40. Subquery in SELECT clause
SELECT Name,
  (SELECT COUNT(*) FROM DirectedFilms WHERE DirectedFilms.DirectorID = Directors.DirectorID) AS FilmsDirected
FROM Directors;

-- 41. Get directors who directed a specific film
SELECT Name FROM Directors
WHERE DirectorID IN (SELECT DirectorID FROM DirectedFilms WHERE FilmName = '3 Idiots');

-- 42. Directors who have not won any awards
SELECT Name FROM Directors WHERE AwardsWon = 0;

-- 43. Directors with films listed in DirectedFilms table
SELECT DISTINCT D.Name
FROM Directors D
WHERE EXISTS (SELECT 1 FROM DirectedFilms F WHERE F.DirectorID = D.DirectorID);

-- 44. Subquery to get top 5 experienced directors
SELECT * FROM Directors
WHERE ExperienceYears IN (
  SELECT ExperienceYears FROM Directors ORDER BY ExperienceYears DESC LIMIT 5
);

-- 45. Count films directed by each director using GROUP BY
SELECT D.Name, COUNT(F.FilmID) AS TotalFilms
FROM Directors D
LEFT JOIN DirectedFilms F ON D.DirectorID = F.DirectorID
GROUP BY D.Name;

-- 46. Create a child table with ON DELETE CASCADE
CREATE TABLE DirectorContacts (
    ContactID INT PRIMARY KEY,
    DirectorID INT,
    Platform VARCHAR(50),
    Handle VARCHAR(100),
    FOREIGN KEY (DirectorID) REFERENCES Directors(DirectorID) ON DELETE CASCADE
);

-- 47. Insert contact and delete the director to observe cascade
INSERT INTO DirectorContacts VALUES (1, 1, 'Twitter', '@ssrajamouli');
DELETE FROM Directors WHERE DirectorID = 1; -- This will also delete the contact

-- 48. Create table with ON UPDATE CASCADE
CREATE TABLE DirectorProfiles (
    ProfileID INT PRIMARY KEY,
    DirectorID INT,
    Bio TEXT,
    FOREIGN KEY (DirectorID) REFERENCES Directors(DirectorID) ON UPDATE CASCADE
);

-- 49. Update DirectorID in parent to test ON UPDATE CASCADE
-- Only valid if the DirectorID is NOT PRIMARY KEY or if supported with constraints
-- UPDATE Directors SET DirectorID = 101 WHERE Name = 'Zoya Akhtar';

-- 50. Delete all directors who have no awards and see effect on child tables
DELETE FROM Directors WHERE AwardsWon = 0;


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

-- 1. Create Actors table (already done)
-- 2. Create table for Actor Awards
CREATE TABLE ActorAwards (
    AwardID INT PRIMARY KEY,
    ActorID INT,
    AwardTitle VARCHAR(100),
    AwardYear INT,
    FOREIGN KEY (ActorID) REFERENCES Actors(ActorID)
);

-- 3. Create ActorSocial with ON DELETE CASCADE
CREATE TABLE ActorSocial (
    SocialID INT PRIMARY KEY,
    ActorID INT,
    Platform VARCHAR(50),
    Handle VARCHAR(100),
    FOREIGN KEY (ActorID) REFERENCES Actors(ActorID) ON DELETE CASCADE
);

-- 4. Add a new column to Actors
ALTER TABLE Actors ADD InstagramHandle VARCHAR(100);

-- 5. Rename 'Agency' to 'TalentAgency'
ALTER TABLE Actors RENAME COLUMN Agency TO TalentAgency;

-- 6. Insert new actor
INSERT INTO Actors VALUES (21, 'Dhanush', 'Male', '1983-07-28', 'Indian', 'dhanush@example.com', '9876543021', 2002, 'Wunderbar Films', 10);

-- 7. Update an actor's agency
UPDATE Actors SET TalentAgency = 'Eternal Sunshine Talent' WHERE Name = 'Alia Bhatt';

-- 8. Increase awards by 1 where more than 15
UPDATE Actors SET AwardsWon = AwardsWon + 1 WHERE AwardsWon > 15;

-- 9. Delete a specific actor
DELETE FROM Actors WHERE ActorID = 21;

-- 10. Delete actors with < 5 awards
DELETE FROM Actors WHERE AwardsWon < 5;

-- 11. Add entry to ActorAwards
INSERT INTO ActorAwards VALUES (1, 1, 'Best Actor', 2020);

-- 12. Add ActorSocial record
INSERT INTO ActorSocial VALUES (1, 2, 'Instagram', '@amitabh');

-- 13. Delete an actor to trigger CASCADE
DELETE FROM Actors WHERE ActorID = 2;

-- 14. Update debut year
UPDATE Actors SET DebutYear = 2014 WHERE Name = 'Vicky Kaushal';

-- 15. Set Instagram handle for an actor
UPDATE Actors SET InstagramHandle = '@aliaa08' WHERE Name = 'Alia Bhatt';

-- 16. All actors
SELECT * FROM Actors;

-- 17. Female actors
SELECT Name FROM Actors WHERE Gender = 'Female';

-- 18. Actors with > 10 awards
SELECT Name, AwardsWon FROM Actors WHERE AwardsWon > 10;

-- 19. Actors from 'Dharma Talent'
SELECT Name FROM Actors WHERE TalentAgency = 'Dharma Talent';

-- 20. Actors debuted between 2000 and 2010
SELECT Name FROM Actors WHERE DebutYear BETWEEN 2000 AND 2010;

-- 21. Actors with 'Khan' in name
SELECT Name FROM Actors WHERE Name LIKE '%Khan%';

-- 22. Sort by awards
SELECT Name, AwardsWon FROM Actors ORDER BY AwardsWon DESC;

-- 23. Count by gender
SELECT Gender, COUNT(*) AS Total FROM Actors GROUP BY Gender;

-- 24. Max awards
SELECT MAX(AwardsWon) AS MaxAwards FROM Actors;

-- 25. Average awards
SELECT AVG(AwardsWon) AS AvgAwards FROM Actors;

-- 26. Name + Email alias
SELECT CONCAT(Name, ' <', Email, '>') AS Contact FROM Actors;

-- 27. Category by Awards
SELECT Name, CASE WHEN AwardsWon > 15 THEN 'Legend' WHEN AwardsWon >= 10 THEN 'Star' ELSE 'Rising' END AS Category FROM Actors;

-- 28. Debut year of 'Alia Bhatt'
SELECT DebutYear FROM Actors WHERE Name = 'Alia Bhatt';

-- 29. Oldest actor
SELECT Name FROM Actors ORDER BY DateOfBirth ASC LIMIT 1;

-- 30. Actors without email
SELECT Name FROM Actors WHERE Email IS NULL;

-- 31. Debut in 2010 or after
SELECT Name FROM Actors WHERE DebutYear >= 2010;

-- 32. Actors with awards = avg
SELECT Name FROM Actors WHERE AwardsWon = (SELECT ROUND(AVG(AwardsWon)) FROM Actors);

-- 33. Actor with max awards
SELECT Name FROM Actors WHERE AwardsWon = (SELECT MAX(AwardsWon) FROM Actors);

-- 34. Group by agency
SELECT TalentAgency, COUNT(*) FROM Actors GROUP BY TalentAgency;

-- 35. Agency starting with 'D'
SELECT Name FROM Actors WHERE TalentAgency LIKE 'D%';

-- 36. Actors with same debut year as 'Hrithik Roshan'
SELECT Name FROM Actors WHERE DebutYear = (SELECT DebutYear FROM Actors WHERE Name = 'Hrithik Roshan');

-- 37. Actors with awards above avg using subquery
SELECT Name FROM Actors WHERE AwardsWon > (SELECT AVG(AwardsWon) FROM Actors);

-- 38. Inner join Actors and ActorAwards
SELECT A.Name, AW.AwardTitle FROM Actors A JOIN ActorAwards AW ON A.ActorID = AW.ActorID;

-- 39. Left join Actors with Awards
SELECT A.Name, AW.AwardTitle FROM Actors A LEFT JOIN ActorAwards AW ON A.ActorID = AW.ActorID;

-- 40. Actor with highest awards using subquery
SELECT Name FROM Actors WHERE AwardsWon = (SELECT MAX(AwardsWon) FROM Actors);

-- 41. EXISTS clause
SELECT Name FROM Actors A WHERE EXISTS (SELECT 1 FROM ActorAwards AW WHERE A.ActorID = AW.ActorID);

-- 42. Actor count by debut decade
SELECT FLOOR(DebutYear/10)*10 AS Decade, COUNT(*) FROM Actors GROUP BY Decade;

-- 43. Total awards by agency
SELECT TalentAgency, SUM(AwardsWon) FROM Actors GROUP BY TalentAgency;

-- 44. Gender-wise avg awards
SELECT Gender, AVG(AwardsWon) FROM Actors GROUP BY Gender;

-- 45. Top 3 actors
SELECT Name FROM Actors ORDER BY AwardsWon DESC LIMIT 3;

-- 46. Create table ActorContracts with ON DELETE CASCADE
CREATE TABLE ActorContracts (
    ContractID INT PRIMARY KEY,
    ActorID INT,
    ContractTitle VARCHAR(100),
    StartDate DATE,
    FOREIGN KEY (ActorID) REFERENCES Actors(ActorID) ON DELETE CASCADE
);

-- 47. Insert contract for Alia Bhatt
INSERT INTO ActorContracts VALUES (1, 5, 'Netflix Exclusive', '2024-06-01');

-- 48. Delete Alia Bhatt to cascade delete from contracts
DELETE FROM Actors WHERE ActorID = 5;

-- 49. Drop ActorSocial table
DROP TABLE IF EXISTS ActorSocial;

-- 50. Drop ActorAwards table
DROP TABLE IF EXISTS ActorAwards;


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

-- 1. Select all studios
SELECT * FROM Studios;

-- 2. Find studios in Mumbai
SELECT * FROM Studios WHERE Location LIKE '%Mumbai%';

-- 3. Studios with capacity over 300
SELECT * FROM Studios WHERE Capacity > 300;

-- 4. Studios available for booking
SELECT * FROM Studios WHERE AvailabilityStatus = 'Available';

-- 5. Studios booked or under maintenance
SELECT * FROM Studios WHERE AvailabilityStatus IN ('Booked', 'Under Maintenance');

-- 6. Count of studios per city (approx using GROUP BY)
SELECT Location, COUNT(*) AS StudioCount FROM Studios GROUP BY Location;

-- 7. Studio with highest capacity
SELECT * FROM Studios ORDER BY Capacity DESC LIMIT 1;

-- 8. Studios sorted by area
SELECT * FROM Studios ORDER BY AreaSqFt DESC;

-- 9. Studios with capacity between 100 and 300
SELECT * FROM Studios WHERE Capacity BETWEEN 100 AND 300;

-- 10. Rename column (depends on DBMS)
-- ALTER TABLE Studios RENAME COLUMN Phone TO ContactNumber; -- For PostgreSQL

-- 11. Add new column for hourly rate
ALTER TABLE Studios ADD HourlyRate INT;

-- 12. Update hourly rate based on capacity
UPDATE Studios SET HourlyRate = 2000 WHERE Capacity > 300;

-- 13. Find studios with word 'sound' in facilities
SELECT * FROM Studios WHERE Facilities LIKE '%sound%';

-- 14. Studios with short names
SELECT * FROM Studios WHERE LENGTH(Name) < 20;

-- 15. Average capacity
SELECT AVG(Capacity) AS AvgCapacity FROM Studios;

-- 16. Studio count
SELECT COUNT(*) FROM Studios;

-- 17. Studios with email domains
SELECT Name, SUBSTRING_INDEX(Email, '@', -1) AS Domain FROM Studios;

-- 18. Studios with missing phone (none currently)
SELECT * FROM Studios WHERE Phone IS NULL;

-- 19. Studios ordered alphabetically
SELECT * FROM Studios ORDER BY Name;

-- 20. Studios in Tamil Nadu
SELECT * FROM Studios WHERE Location LIKE '%Tamil Nadu%';

-- 21. Top 5 largest studios by area
SELECT * FROM Studios ORDER BY AreaSqFt DESC LIMIT 5;

-- 22. Studios not booked
SELECT * FROM Studios WHERE AvailabilityStatus != 'Booked';

-- 23. Studios with specific contact person
SELECT * FROM Studios WHERE ContactPerson = 'Rohit Khanna';

-- 24. Studios where capacity is multiple of 100
SELECT * FROM Studios WHERE Capacity % 100 = 0;

-- 25. Set all hourly rates to default
UPDATE Studios SET HourlyRate = 1500;

-- 26. Delete studio by ID
DELETE FROM Studios WHERE StudioID = 20;

-- 27. Restore deleted row (re-insert)
INSERT INTO Studios VALUES (20, 'Hombale Studios', 'Bangalore, Karnataka', 55000, 250, 'Lakshmi V.', 'info@hombalefilms.com', '9820000020', 'Lighting rigs, post-production', 'Available', 1500);

-- 28. Create a new table with foreign key
CREATE TABLE StudioBookings (
    BookingID INT PRIMARY KEY,
    StudioID INT,
    BookingDate DATE,
    ClientName VARCHAR(100),
    FOREIGN KEY (StudioID) REFERENCES Studios(StudioID)
        ON DELETE CASCADE ON UPDATE CASCADE
);

-- 29. Insert into StudioBookings
INSERT INTO StudioBookings VALUES (1, 1, '2025-07-01', 'Excel Entertainment');

-- 30. Join Studios with StudioBookings
SELECT s.Name, sb.ClientName, sb.BookingDate
FROM Studios s
JOIN StudioBookings sb ON s.StudioID = sb.StudioID;

-- 31. Subquery: Studios with bookings
SELECT * FROM Studios WHERE StudioID IN (SELECT StudioID FROM StudioBookings);

-- 32. Subquery: Studios without bookings
SELECT * FROM Studios WHERE StudioID NOT IN (SELECT StudioID FROM StudioBookings);

-- 33. Alias: Show contact and studio
SELECT Name AS StudioName, ContactPerson AS Manager FROM Studios;

-- 34. Studios where name starts with 'P'
SELECT * FROM Studios WHERE Name LIKE 'P%';

-- 35. Studios with max area
SELECT * FROM Studios WHERE AreaSqFt = (SELECT MAX(AreaSqFt) FROM Studios);

-- 36. Group by availability
SELECT AvailabilityStatus, COUNT(*) FROM Studios GROUP BY AvailabilityStatus;

-- 37. Studios sorted by contact person
SELECT * FROM Studios ORDER BY ContactPerson;

-- 38. Change studio status
UPDATE Studios SET AvailabilityStatus = 'Booked' WHERE StudioID = 10;

-- 39. Studios with area over average
SELECT * FROM Studios WHERE AreaSqFt > (SELECT AVG(AreaSqFt) FROM Studios);

-- 40. Studios with exact 150 capacity
SELECT * FROM Studios WHERE Capacity = 150;

-- 41. Limit and offset example
SELECT * FROM Studios LIMIT 5 OFFSET 5;

-- 42. Studios with both sound and light in facilities
SELECT * FROM Studios WHERE Facilities LIKE '%sound%' AND Facilities LIKE '%light%';

-- 43. Studios ending with 'Studio'
SELECT * FROM Studios WHERE Name LIKE '%Studio';

-- 44. Studios with more than one word in name
SELECT * FROM Studios WHERE Name LIKE '% %';

-- 45. Set unavailable studios under maintenance
UPDATE Studios SET AvailabilityStatus = 'Under Maintenance' WHERE AvailabilityStatus = 'Unavailable';

-- 46. Use IN clause
SELECT * FROM Studios WHERE StudioID IN (1, 5, 10);

-- 47. Use CASE to label status
SELECT Name, AvailabilityStatus,
  CASE 
    WHEN AvailabilityStatus = 'Available' THEN 'Green'
    WHEN AvailabilityStatus = 'Booked' THEN 'Red'
    ELSE 'Yellow'
  END AS StatusColor
FROM Studios;

-- 48. Add constraint on AreaSqFt
ALTER TABLE Studios ADD CONSTRAINT chk_area CHECK (AreaSqFt > 0);

-- 49. Drop constraint (syntax may vary by DBMS)
-- ALTER TABLE Studios DROP CONSTRAINT chk_area; -- Example for PostgreSQL

-- 50. Create a view for available studios
CREATE VIEW AvailableStudios AS
SELECT * FROM Studios WHERE AvailabilityStatus = 'Available';

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

-- 1. DDL: Create Table (Already Provided)
-- 2. DML: Sample Inserts (Already Provided)

-- 3. SELECT all data
SELECT * FROM CrewMembers;

-- 4. SELECT with alias
SELECT Name AS Crew_Name, Role AS Position FROM CrewMembers;

-- 5. SELECT with WHERE clause
SELECT * FROM CrewMembers WHERE Gender = 'Female';

-- 6. SELECT with AND condition
SELECT * FROM CrewMembers WHERE Gender = 'Female' AND Department = 'Makeup';

-- 7. SELECT with OR condition
SELECT * FROM CrewMembers WHERE Role = 'Editor' OR Role = 'Sound Designer';

-- 8. SELECT using BETWEEN
SELECT * FROM CrewMembers WHERE ExperienceYears BETWEEN 5 AND 10;

-- 9. SELECT using IN
SELECT * FROM CrewMembers WHERE Department IN ('Lighting', 'Sound');

-- 10. SELECT using NOT IN
SELECT * FROM CrewMembers WHERE Department NOT IN ('Makeup', 'Costume');

-- 11. ORDER BY clause
SELECT * FROM CrewMembers ORDER BY ExperienceYears DESC;

-- 12. LIMIT clause
SELECT * FROM CrewMembers LIMIT 5;

-- 13. Aggregate Function: COUNT
SELECT COUNT(*) AS Total_Crew FROM CrewMembers;

-- 14. Aggregate Function: AVG
SELECT AVG(ExperienceYears) AS Avg_Experience FROM CrewMembers;

-- 15. Aggregate Function: MAX
SELECT MAX(ExperienceYears) AS Max_Experience FROM CrewMembers;

-- 16. Aggregate Function: MIN
SELECT MIN(JoiningDate) AS Earliest_Join FROM CrewMembers;

-- 17. GROUP BY clause
SELECT Department, COUNT(*) AS Members FROM CrewMembers GROUP BY Department;

-- 18. HAVING clause
SELECT Department, COUNT(*) AS Members FROM CrewMembers GROUP BY Department HAVING COUNT(*) > 1;

-- 19. UPDATE record
UPDATE CrewMembers SET Status = 'Inactive' WHERE CrewID = 20;

-- 20. DELETE record
DELETE FROM CrewMembers WHERE CrewID = 20;

-- 21. LIKE operator
SELECT * FROM CrewMembers WHERE Email LIKE '%@example.com';

-- 22. IS NULL check (assuming null values in another scenario)
SELECT * FROM CrewMembers WHERE Phone IS NULL;

-- 23. DATE function
SELECT Name, YEAR(JoiningDate) AS YearJoined FROM CrewMembers;

-- 24. LENGTH function
SELECT Name, LENGTH(Name) AS NameLength FROM CrewMembers;

-- 25. CONCAT function
SELECT CONCAT(Name, ' - ', Role) AS FullTitle FROM CrewMembers;

-- 26. NOW() to get current date
SELECT NOW() AS CurrentDate;

-- 27. Subquery: Get crew with max experience
SELECT * FROM CrewMembers WHERE ExperienceYears = (SELECT MAX(ExperienceYears) FROM CrewMembers);

-- 28. Subquery: Count per department
SELECT Name FROM CrewMembers WHERE Department = (SELECT Department FROM CrewMembers WHERE CrewID = 1);

-- 29. INNER JOIN example with hypothetical table (Studios)
-- Assume: Studios(CrewID, StudioName)
-- SELECT CM.Name, S.StudioName FROM CrewMembers CM JOIN Studios S ON CM.CrewID = S.CrewID;

-- 30. LEFT JOIN example
-- SELECT CM.Name, S.StudioName FROM CrewMembers CM LEFT JOIN Studios S ON CM.CrewID = S.CrewID;

-- 31. RIGHT JOIN example
-- SELECT CM.Name, S.StudioName FROM CrewMembers CM RIGHT JOIN Studios S ON CM.CrewID = S.CrewID;

-- 32. FULL OUTER JOIN (some databases)
-- SELECT CM.Name, S.StudioName FROM CrewMembers CM FULL OUTER JOIN Studios S ON CM.CrewID = S.CrewID;

-- 33. EXISTS clause
SELECT Name FROM CrewMembers CM WHERE EXISTS (SELECT 1 FROM CrewMembers WHERE Department = CM.Department);

-- 34. NOT EXISTS clause
SELECT * FROM CrewMembers CM WHERE NOT EXISTS (SELECT 1 FROM CrewMembers WHERE Status = 'Inactive' AND CM.CrewID = CrewID);

-- 35. DISTINCT clause
SELECT DISTINCT Department FROM CrewMembers;

-- 36. ALIAS for table
SELECT CM.Name, CM.Role FROM CrewMembers AS CM;

-- 37. BETWEEN dates
SELECT * FROM CrewMembers WHERE JoiningDate BETWEEN '2015-01-01' AND '2020-12-31';

-- 38. TRIM function
SELECT TRIM(Name) FROM CrewMembers;

-- 39. UPPER function
SELECT UPPER(Name) FROM CrewMembers;

-- 40. LOWER function
SELECT LOWER(Name) FROM CrewMembers;

-- 41. REPLACE function
SELECT REPLACE(Email, '@example.com', '@filmcrew.com') AS NewEmail FROM CrewMembers;

-- 42. SUBSTRING function
SELECT SUBSTRING(Name, 1, 4) AS ShortName FROM CrewMembers;

-- 43. IF condition (MySQL)
SELECT Name, IF(Gender = 'Male', 'M', 'F') AS GenderCode FROM CrewMembers;

-- 44. CASE statement
SELECT Name, 
  CASE 
    WHEN ExperienceYears >= 10 THEN 'Veteran'
    WHEN ExperienceYears >= 5 THEN 'Experienced'
    ELSE 'Junior'
  END AS ExperienceLevel
FROM CrewMembers;

-- 45. CREATE VIEW
CREATE VIEW ActiveCrew AS SELECT * FROM CrewMembers WHERE Status = 'Active';

-- 46. SELECT from VIEW
SELECT * FROM ActiveCrew;

-- 47. ALTER TABLE to add FK with ON DELETE CASCADE (example)
ALTER TABLE CrewMembers ADD COLUMN StudioID INT,
ADD CONSTRAINT FK_Studio FOREIGN KEY (StudioID) REFERENCES Studios(StudioID) ON DELETE CASCADE;

-- 48. SHOW TABLES
SHOW TABLES;

-- 49. DESCRIBE structure
DESCRIBE CrewMembers;

-- 50. DROP VIEW
DROP VIEW IF EXISTS ActiveCrew;

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

-- 1. DDL: Create the ProductionCompanies table
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

-- 2. DML: Sample INSERT already provided

-- 3. DQL: Select all records
SELECT * FROM ProductionCompanies;

-- 4. Select with specific columns
SELECT Name, CEO, Status FROM ProductionCompanies;

-- 5. WHERE clause usage
SELECT * FROM ProductionCompanies WHERE Status = 'Active';

-- 6. AND operator
SELECT * FROM ProductionCompanies WHERE Status = 'Active' AND GenreSpecialization = 'Drama';

-- 7. OR operator
SELECT * FROM ProductionCompanies WHERE FoundedYear < 1980 OR TotalFilmsProduced > 100;

-- 8. BETWEEN operator
SELECT * FROM ProductionCompanies WHERE FoundedYear BETWEEN 1970 AND 2000;

-- 9. IN clause
SELECT * FROM ProductionCompanies WHERE GenreSpecialization IN ('Drama', 'Action', 'Comedy');

-- 10. LIKE operator
SELECT * FROM ProductionCompanies WHERE Name LIKE '%Productions';

-- 11. NOT operator
SELECT * FROM ProductionCompanies WHERE Status NOT IN ('Inactive');

-- 12. ORDER BY clause
SELECT * FROM ProductionCompanies ORDER BY FoundedYear DESC;

-- 13. LIMIT clause (if supported by the DBMS)
SELECT * FROM ProductionCompanies LIMIT 5;

-- 14. ALIAS usage
SELECT Name AS CompanyName, CEO AS ChiefExecutive FROM ProductionCompanies;

-- 15. COUNT function
SELECT COUNT(*) AS TotalCompanies FROM ProductionCompanies;

-- 16. AVG function
SELECT AVG(TotalFilmsProduced) AS AverageFilms FROM ProductionCompanies;

-- 17. MAX function
SELECT MAX(TotalFilmsProduced) AS MostFilms FROM ProductionCompanies;

-- 18. MIN function
SELECT MIN(FoundedYear) AS OldestCompany FROM ProductionCompanies;

-- 19. GROUP BY clause
SELECT GenreSpecialization, COUNT(*) FROM ProductionCompanies GROUP BY GenreSpecialization;

-- 20. HAVING clause
SELECT GenreSpecialization, COUNT(*) AS GenreCount FROM ProductionCompanies GROUP BY GenreSpecialization HAVING COUNT(*) > 2;

-- 21. UPDATE Status
UPDATE ProductionCompanies SET Status = 'Inactive' WHERE TotalFilmsProduced < 40;

-- 22. DELETE rows
DELETE FROM ProductionCompanies WHERE Status = 'Inactive' AND TotalFilmsProduced < 30;

-- 23. DISTINCT keyword
SELECT DISTINCT Headquarters FROM ProductionCompanies;

-- 24. Subquery in WHERE
SELECT * FROM ProductionCompanies WHERE TotalFilmsProduced > (SELECT AVG(TotalFilmsProduced) FROM ProductionCompanies);

-- 25. Subquery with IN
SELECT * FROM ProductionCompanies WHERE CompanyID IN (SELECT CompanyID FROM ProductionCompanies WHERE Status = 'Active');

-- 26. Nested subquery
SELECT Name FROM ProductionCompanies WHERE TotalFilmsProduced = (SELECT MAX(TotalFilmsProduced) FROM ProductionCompanies);

-- 27. Function in SELECT
SELECT Name, UPPER(CEO) AS CEO_Upper FROM ProductionCompanies;

-- 28. Function in WHERE
SELECT * FROM ProductionCompanies WHERE LENGTH(Name) > 15;

-- 29. Function CONCAT
SELECT CONCAT(Name, ' - ', CEO) AS FullInfo FROM ProductionCompanies;

-- 30. Function SUBSTRING
SELECT Name, SUBSTRING(Email, 1, 10) AS EmailPrefix FROM ProductionCompanies;

-- 31. JOIN with dummy table
-- Assume we have a table Awards(CompanyID INT, AwardsWon INT)
-- SELECT pc.Name, a.AwardsWon FROM ProductionCompanies pc JOIN Awards a ON pc.CompanyID = a.CompanyID;

-- 32. LEFT JOIN (same assumption)
-- SELECT pc.Name, a.AwardsWon FROM ProductionCompanies pc LEFT JOIN Awards a ON pc.CompanyID = a.CompanyID;

-- 33. RIGHT JOIN (same assumption)
-- SELECT pc.Name, a.AwardsWon FROM ProductionCompanies pc RIGHT JOIN Awards a ON pc.CompanyID = a.CompanyID;

-- 34. CASE expression
SELECT Name,
       CASE WHEN TotalFilmsProduced > 90 THEN 'Top Producer'
            WHEN TotalFilmsProduced > 60 THEN 'Mid Producer'
            ELSE 'Newcomer' END AS Category
FROM ProductionCompanies;

-- 35. IS NULL check
SELECT * FROM ProductionCompanies WHERE Phone IS NULL;

-- 36. IS NOT NULL check
SELECT * FROM ProductionCompanies WHERE Email IS NOT NULL;

-- 37. CREATE VIEW
CREATE VIEW ActiveCompanies AS
SELECT Name, CEO FROM ProductionCompanies WHERE Status = 'Active';

-- 38. SELECT FROM VIEW
SELECT * FROM ActiveCompanies;

-- 39. DROP VIEW
DROP VIEW ActiveCompanies;

-- 40. Add foreign key with cascade (example table Films)
-- CREATE TABLE Films (
--   FilmID INT PRIMARY KEY,
--   Title VARCHAR(100),
--   CompanyID INT,
--   FOREIGN KEY (CompanyID) REFERENCES ProductionCompanies(CompanyID) ON DELETE CASCADE ON UPDATE CASCADE
-- );

-- 41. DELETE CASCADE test
-- DELETE FROM ProductionCompanies WHERE CompanyID = 1;
-- Films with CompanyID = 1 will be deleted automatically if CASCADE is set.

-- 42. UPDATE CASCADE test
-- UPDATE ProductionCompanies SET CompanyID = 99 WHERE CompanyID = 2;
-- Will update Films.CompanyID = 2 to 99.

-- 43. Add a new column
ALTER TABLE ProductionCompanies ADD Website VARCHAR(100);

-- 44. Rename column (DBMS dependent)
-- ALTER TABLE ProductionCompanies RENAME COLUMN Status TO CompanyStatus;

-- 45. DROP column
ALTER TABLE ProductionCompanies DROP COLUMN Website;

-- 46. COPY table structure
CREATE TABLE ProductionCompanies_Backup AS SELECT * FROM ProductionCompanies WHERE 1=0;

-- 47. COPY table with data
CREATE TABLE ProductionCompanies_Clone AS SELECT * FROM ProductionCompanies;

-- 48. TRUNCATE table
-- TRUNCATE TABLE ProductionCompanies;

-- 49. DROP table
-- DROP TABLE ProductionCompanies;

-- 50. Complex query with GROUP BY, HAVING, ORDER BY
SELECT Headquarters, COUNT(*) AS Companies, AVG(TotalFilmsProduced) AS AvgFilms
FROM ProductionCompanies
GROUP BY Headquarters
HAVING COUNT(*) > 1
ORDER BY AvgFilms DESC;

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

-- 1. DDL - Create Table already provided above

-- 2. DML - Insert queries already provided above

-- 3. DQL - SELECT basic data
-- Get all film genres
SELECT * FROM FilmGenres;

-- 4. SELECT specific columns
SELECT Name, Description FROM FilmGenres;

-- 5. WHERE clause
SELECT * FROM FilmGenres WHERE SuitableForKids = TRUE;

-- 6. Comparison operator: >=
SELECT * FROM FilmGenres WHERE AverageDuration >= 140;

-- 7. LIKE operator
SELECT * FROM FilmGenres WHERE Name LIKE 'A%';

-- 8. IN operator
SELECT * FROM FilmGenres WHERE GenreID IN (1, 5, 10);

-- 9. BETWEEN operator
SELECT * FROM FilmGenres WHERE AverageDuration BETWEEN 120 AND 150;

-- 10. ORDER BY ascending
SELECT * FROM FilmGenres ORDER BY PopularityRank ASC;

-- 11. ORDER BY descending
SELECT * FROM FilmGenres ORDER BY AverageDuration DESC;

-- 12. GROUP BY with COUNT
SELECT SuitableForKids, COUNT(*) AS CountByKids FROM FilmGenres GROUP BY SuitableForKids;

-- 13. GROUP BY with AVG
SELECT SuitableForKids, AVG(AverageDuration) AS AvgDuration FROM FilmGenres GROUP BY SuitableForKids;

-- 14. Aggregate Function: MAX
SELECT MAX(AverageDuration) AS MaxDuration FROM FilmGenres;

-- 15. Aggregate Function: MIN
SELECT MIN(FirstAppearedYear) AS EarliestGenreYear FROM FilmGenres;

-- 16. Aggregate Function: SUM (with dummy logic)
SELECT SUM(AverageDuration) AS TotalDuration FROM FilmGenres;

-- 17. DISTINCT
SELECT DISTINCT LanguageOrigin FROM FilmGenres;

-- 18. Alias for columns
SELECT Name AS GenreName, Description AS GenreDescription FROM FilmGenres;

-- 19. CASE statement
SELECT Name,
       CASE WHEN SuitableForKids THEN 'Kids Friendly' ELSE 'Not for Kids' END AS AudienceType
FROM FilmGenres;

-- 20. LENGTH function
SELECT Name, LENGTH(Name) AS NameLength FROM FilmGenres;

-- 21. UPPER function
SELECT UPPER(Name) AS UpperName FROM FilmGenres;

-- 22. LOWER function
SELECT LOWER(Name) AS LowerName FROM FilmGenres;

-- 23. Substring function
SELECT Name, SUBSTRING(Description, 1, 30) AS ShortDescription FROM FilmGenres;

-- 24. CONCAT function
SELECT CONCAT(Name, ' - ', LanguageOrigin) AS FullLabel FROM FilmGenres;

-- 25. Logical AND
SELECT * FROM FilmGenres WHERE SuitableForKids = TRUE AND AverageDuration < 140;

-- 26. Logical OR
SELECT * FROM FilmGenres WHERE AverageDuration < 100 OR TypicalBudgetRange = '1-5 Crore';

-- 27. NOT operator
SELECT * FROM FilmGenres WHERE NOT SuitableForKids;

-- 28. Subquery (single row)
SELECT * FROM FilmGenres WHERE AverageDuration = (SELECT MAX(AverageDuration) FROM FilmGenres);

-- 29. Subquery (multiple row)
SELECT * FROM FilmGenres WHERE LanguageOrigin IN (SELECT DISTINCT LanguageOrigin FROM FilmGenres);

-- 30. EXISTS
SELECT * FROM FilmGenres fg WHERE EXISTS (
    SELECT 1 FROM FilmGenres WHERE SuitableForKids = TRUE AND fg.GenreID = GenreID
);

-- 31. JOIN simulation - Create a dummy relation to join
-- Assume a table: Film (FilmID, GenreID, Title)
-- SELECT with JOIN
-- SELECT fg.Name, f.Title FROM FilmGenres fg JOIN Film f ON fg.GenreID = f.GenreID;

-- 32. View: Genres suitable for kids
CREATE VIEW KidsGenres AS
SELECT * FROM FilmGenres WHERE SuitableForKids = TRUE;

-- 33. SELECT from view
SELECT * FROM KidsGenres;

-- 34. ALTER TABLE - add column
ALTER TABLE FilmGenres ADD COLUMN AwardsWon INT DEFAULT 0;

-- 35. UPDATE with condition
UPDATE FilmGenres SET AverageDuration = 125 WHERE Name = 'Horror';

-- 36. DELETE with condition
DELETE FROM FilmGenres WHERE Name = 'Art House';

-- 37. UPDATE with arithmetic
UPDATE FilmGenres SET AverageDuration = AverageDuration + 10 WHERE GenreID <= 5;

-- 38. IS NULL check
SELECT * FROM FilmGenres WHERE TypicalBudgetRange IS NULL;

-- 39. LIMIT (Top N genres)
SELECT * FROM FilmGenres ORDER BY PopularityRank LIMIT 5;

-- 40. OFFSET
SELECT * FROM FilmGenres ORDER BY PopularityRank LIMIT 5 OFFSET 5;

-- 41. ON DELETE CASCADE simulation
-- Requires child table referencing GenreID with ON DELETE CASCADE
-- CREATE TABLE Films (FilmID INT PRIMARY KEY, Title VARCHAR(100), GenreID INT,
-- FOREIGN KEY (GenreID) REFERENCES FilmGenres(GenreID) ON DELETE CASCADE);

-- 42. ON UPDATE CASCADE simulation
-- CREATE TABLE GenreDetails (DetailID INT PRIMARY KEY, GenreID INT,
-- FOREIGN KEY (GenreID) REFERENCES FilmGenres(GenreID) ON UPDATE CASCADE);

-- 43. Filter genres by year
SELECT * FROM FilmGenres WHERE FirstAppearedYear < 1950;

-- 44. Boolean casting to string
SELECT Name, CASE WHEN SuitableForKids THEN 'Yes' ELSE 'No' END AS KidFriendly FROM FilmGenres;

-- 45. COUNT by LanguageOrigin
SELECT LanguageOrigin, COUNT(*) AS CountPerLanguage FROM FilmGenres GROUP BY LanguageOrigin;

-- 46. Find genres not active
SELECT * FROM FilmGenres WHERE ActiveStatus != 'Active';

-- 47. ROUND function (Assuming AverageDuration has decimals)
-- ALTER TABLE FilmGenres MODIFY AverageDuration DECIMAL(5,2);
-- SELECT ROUND(AverageDuration) FROM FilmGenres;

-- 48. Simple math in SELECT
SELECT Name, AverageDuration, AverageDuration + 15 AS ExtendedDuration FROM FilmGenres;

-- 49. Multiple filters
SELECT * FROM FilmGenres WHERE SuitableForKids = TRUE AND AverageDuration > 120 AND ActiveStatus = 'Active';

-- 50. Combined sort
SELECT * FROM FilmGenres ORDER BY SuitableForKids DESC, PopularityRank ASC;


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

-- 2. Add a new column for Website
ALTER TABLE Distributors ADD Website VARCHAR(100);

-- 3. Modify the Email column to be NOT NULL
ALTER TABLE Distributors MODIFY Email VARCHAR(100) NOT NULL;

-- 4. Drop the Website column
ALTER TABLE Distributors DROP COLUMN Website;

-- 5. Rename the table to FilmDistributors
ALTER TABLE Distributors RENAME TO FilmDistributors;

-- 6. Insert a new distributor
INSERT INTO FilmDistributors (DistributorID, Name, Country, Email, Phone, YearsActive, TotalDeals, PlatformType, DistributionRegions, ContractStatus)
VALUES (21, 'New Age Films', 'India', 'contact@newagefilms.in', '022-12345678', 5, 50, 'OTT', 'India', 'Active');

-- 7. Update the TotalDeals for a specific distributor
UPDATE FilmDistributors SET TotalDeals = 55 WHERE DistributorID = 21;

-- 8. Delete a distributor by ID
DELETE FROM FilmDistributors WHERE DistributorID = 21;

-- 9. Insert multiple distributors
INSERT INTO FilmDistributors (DistributorID, Name, Country, Email, Phone, YearsActive, TotalDeals, PlatformType, DistributionRegions, ContractStatus)
VALUES
(22, 'Global Distributors', 'USA', 'info@globaldistributors.com', '001-9876543210', 10, 100, 'Theatrical', 'USA, Canada', 'Active'),
(23, 'Euro Films', 'UK', 'contact@eurofilms.co.uk', '044-12345678', 8, 80, 'OTT', 'UK, EU', 'Active');

-- 10. Update multiple rows
UPDATE FilmDistributors SET ContractStatus = 'Inactive' WHERE YearsActive < 5;

-- 11. Delete distributors from a specific country
DELETE FROM FilmDistributors WHERE Country = 'USA';

-- 12. Insert a distributor with NULL values
INSERT INTO FilmDistributors (DistributorID, Name, Country, Email, Phone, YearsActive, TotalDeals, PlatformType, DistributionRegions, ContractStatus)
VALUES (24, 'Null Films', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- 13. Update NULL values to default
UPDATE FilmDistributors SET Country = 'Unknown' WHERE Country IS NULL;

-- 14. Delete rows with NULL Email
DELETE FROM FilmDistributors WHERE Email IS NULL;

-- 15. Insert a distributor with specific fields
INSERT INTO FilmDistributors (DistributorID, Name, Country, Email, Phone)
VALUES (25, 'Selective Films', 'India', 'selective@films.in', '022-11223344');

-- 16. Select all distributors
SELECT * FROM FilmDistributors;

-- 17. Select specific columns with aliases
SELECT Name AS DistributorName, Country AS Location FROM FilmDistributors;

-- 18. Use WHERE clause with AND
SELECT * FROM FilmDistributors WHERE Country = 'India' AND ContractStatus = 'Active';

-- 19. Use WHERE clause with OR
SELECT * FROM FilmDistributors WHERE Country = 'India' OR Country = 'UK';

-- 20. Use BETWEEN operator
SELECT * FROM FilmDistributors WHERE YearsActive BETWEEN 10 AND 20;

-- 21. Use IN operator
SELECT * FROM FilmDistributors WHERE Country IN ('India', 'UK', 'USA');

-- 22. Use LIKE operator
SELECT * FROM FilmDistributors WHERE Name LIKE '%Films%';

-- 23. Use ORDER BY clause
SELECT * FROM FilmDistributors ORDER BY YearsActive DESC;

-- 24. Use GROUP BY and COUNT
SELECT Country, COUNT(*) AS DistributorCount FROM FilmDistributors GROUP BY Country;

-- 25. Use aggregate functions
SELECT MAX(TotalDeals) AS MaxDeals, MIN(TotalDeals) AS MinDeals, AVG(TotalDeals) AS AvgDeals FROM FilmDistributors;

-- 26. Create a new table for Regions
CREATE TABLE Regions (
    RegionID INT PRIMARY KEY,
    RegionName VARCHAR(100)
);

-- 27. Create a junction table for DistributorRegions
CREATE TABLE DistributorRegions (
    DistributorID INT,
    RegionID INT,
    FOREIGN KEY (DistributorID) REFERENCES FilmDistributors(DistributorID),
    FOREIGN KEY (RegionID) REFERENCES Regions(RegionID)
);

-- 28. Inner Join between FilmDistributors and DistributorRegions
SELECT fd.Name, r.RegionName
FROM FilmDistributors fd
INNER JOIN DistributorRegions dr ON fd.DistributorID = dr.DistributorID
INNER JOIN Regions r ON dr.RegionID = r.RegionID;

-- 29. Left Join to find distributors without regions
SELECT fd.Name, r.RegionName
FROM FilmDistributors fd
LEFT JOIN DistributorRegions dr ON fd.DistributorID = dr.DistributorID
LEFT JOIN Regions r ON dr.RegionID = r.RegionID
WHERE r.RegionName IS NULL;

-- 30. Subquery in WHERE clause
SELECT * FROM FilmDistributors
WHERE DistributorID IN (
    SELECT DistributorID FROM DistributorRegions WHERE RegionID = 1
);

-- 31. Subquery in SELECT clause
SELECT Name,
    (SELECT COUNT(*) FROM DistributorRegions dr WHERE dr.DistributorID = fd.DistributorID) AS RegionCount
FROM FilmDistributors fd;

-- 32. Subquery in FROM clause
SELECT AVG(RegionCount) FROM (
    SELECT DistributorID, COUNT(*) AS RegionCount
    FROM DistributorRegions
    GROUP BY DistributorID
) AS SubQuery;

-- 33. Correlated subquery
SELECT Name FROM FilmDistributors fd
WHERE EXISTS (
    SELECT 1 FROM DistributorRegions dr WHERE dr.DistributorID = fd.DistributorID
);

-- 34. NOT EXISTS subquery
SELECT Name FROM FilmDistributors fd
WHERE NOT EXISTS (
    SELECT 1 FROM DistributorRegions dr WHERE dr.DistributorID = fd.DistributorID
);

-- 35. Subquery with ALL
SELECT * FROM FilmDistributors
WHERE TotalDeals > ALL (
    SELECT TotalDeals FROM FilmDistributors WHERE Country = 'UK'
);

-- 36. Create parent table with ON DELETE CASCADE
CREATE TABLE ParentDistributor (
    DistributorID INT PRIMARY KEY,
    Name VARCHAR(100)
);

-- 37. Create child table with foreign key and ON DELETE CASCADE
CREATE TABLE ChildDistributor (
    ChildID INT PRIMARY KEY,
    DistributorID INT,
    FOREIGN KEY (DistributorID) REFERENCES ParentDistributor(DistributorID) ON DELETE CASCADE
);

-- 38. Insert into ParentDistributor
INSERT INTO ParentDistributor (DistributorID, Name) VALUES (1, 'Parent Films');

-- 39. Insert into ChildDistributor
INSERT INTO ChildDistributor (ChildID, DistributorID) VALUES (1, 1);

-- 40. Delete from ParentDistributor and observe cascade
DELETE FROM ParentDistributor WHERE DistributorID = 1;
-- This will automatically delete the corresponding row in ChildDistributor

-- 41. Use CASE statement
SELECT Name,
    CASE
        WHEN TotalDeals > 200 THEN 'High'
        WHEN TotalDeals BETWEEN 100 AND 200 THEN 'Medium'
        ELSE 'Low'
    END AS DealCategory
FROM FilmDistributors;

-- 42. Use COALESCE to handle NULLs
SELECT Name, COALESCE(Email, 'No Email Provided') AS ContactEmail FROM FilmDistributors;

-- 43. Use NULLIF to compare values
SELECT Name, NULLIF(YearsActive, TotalDeals) AS Difference FROM FilmDistributors;

-- 44. Use ROUND function
SELECT Name, ROUND(TotalDeals / YearsActive, 2) AS DealsPerYear FROM FilmDistributors WHERE YearsActive > 0;

-- 45. Use CONCAT to combine strings
SELECT CONCAT(Name, ' - ', Country) AS DistributorInfo FROM FilmDistributors;

-- 46. Find distributors with the maximum TotalDeals
SELECT * FROM FilmDistributors
WHERE TotalDeals = (SELECT MAX(TotalDeals) FROM FilmDistributors);

-- 47. Find distributors with no deals
SELECT * FROM FilmDistributors WHERE TotalDeals = 0;

-- 48. Count distributors per PlatformType
SELECT PlatformType, COUNT(*) AS Count FROM FilmDistributors GROUP BY PlatformType;

-- 49. List all unique countries
SELECT DISTINCT Country FROM FilmDistributors;

-- 50. Find distributors active for more than the average YearsActive
SELECT * FROM FilmDistributors
WHERE YearsActive > (SELECT AVG(YearsActive) FROM FilmDistributors);


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

-- 1. Create Soundtracks table
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

-- 2. Add a new column for FileFormat
ALTER TABLE Soundtracks ADD FileFormat VARCHAR(20);

-- 3. Modify Rating column to NOT NULL
ALTER TABLE Soundtracks MODIFY COLUMN Rating VARCHAR(10) NOT NULL;

-- 4. Drop the FileFormat column
ALTER TABLE Soundtracks DROP COLUMN FileFormat;

-- 5. Rename table to FilmSoundtracks
ALTER TABLE Soundtracks RENAME TO FilmSoundtracks;

-- 6. Insert a new soundtrack
INSERT INTO FilmSoundtracks (TrackID, Title, Composer, DurationSeconds,
  Genre, FilmID, ReleaseDate, Language, Rating, Publisher)
VALUES (21, 'New Theme', 'Composer X', 180, 'Theme', 121,
  '2025-07-22', 'English', '4', 'Indie Records');

-- 7. Update Rating for a track
UPDATE FilmSoundtracks SET Rating = '5' WHERE TrackID = 21;

-- 8. Delete a track by TrackID
DELETE FROM FilmSoundtracks WHERE TrackID = 21;

-- 9. Batch insert multiple records
INSERT INTO FilmSoundtracks VALUES
(22, 'Theme A', 'Composer Y', 200, 'Action', 122, '2025-06-01', 'English', '4', 'Label A'),
(23, 'Theme B', 'Composer Z', 210, 'Drama', 123, '2025-05-15', 'Hindi', '4', 'Label B');

-- 10. Update Ratings to '3' for older releases
UPDATE FilmSoundtracks SET Rating = '3'
 WHERE ReleaseDate < '2000-01-01';

-- 11. Delete tracks with low rating
DELETE FROM FilmSoundtracks WHERE Rating < '3';

-- 12. Insert a track with some NULLs
INSERT INTO FilmSoundtracks (TrackID, Title, Composer)
VALUES (24, 'Mystery', NULL);

-- 13. Patch NULL Composer to 'Unknown'
UPDATE FilmSoundtracks SET Composer = 'Unknown'
 WHERE Composer IS NULL;

-- 14. Remove records with NULL Title
DELETE FROM FilmSoundtracks WHERE Title IS NULL;

-- 15. Insert a minimal track
INSERT INTO FilmSoundtracks (TrackID, Title, FilmID)
VALUES (25, 'Minimal', 124);

-- 16. Select all data
SELECT * FROM FilmSoundtracks;

-- 17. Selected columns with aliases
SELECT Title AS TrackTitle, Composer AS MadeBy,
  DurationSeconds/60.0 AS DurationMin
FROM FilmSoundtracks;

-- 18. Filter by language and high rating
SELECT * FROM FilmSoundtracks
WHERE Language = 'Hindi' AND Rating = '5';

-- 19. Filter using OR
SELECT * FROM FilmSoundtracks
WHERE Genre = 'Romantic' OR Genre = 'Sufi';

-- 20. Use BETWEEN on track length
SELECT * FROM FilmSoundtracks
WHERE DurationSeconds BETWEEN 200 AND 260;

-- 21. Use IN operator
SELECT * FROM FilmSoundtracks
WHERE Genre IN ('Romantic', 'Classical');

-- 22. Wildcard match with LIKE
SELECT * FROM FilmSoundtracks
WHERE Title LIKE '%Theme%';

-- 23. Sort descending by duration
SELECT * FROM FilmSoundtracks
ORDER BY DurationSeconds DESC;

-- 24. Group by Genre
SELECT Genre, COUNT(*) AS TrackCount
FROM FilmSoundtracks
GROUP BY Genre;

-- 25. Aggregates: max/min/avg duration
SELECT MAX(DurationSeconds) AS MaxLen,
  MIN(DurationSeconds) AS MinLen,
  AVG(DurationSeconds) AS AvgLen
FROM FilmSoundtracks;

-- 26. Create Films table (parent)
CREATE TABLE Films (
  FilmID INT PRIMARY KEY,
  Title VARCHAR(100),
  ReleaseYear INT
);

-- 27. Insert sample Films
INSERT INTO Films VALUES
(101, 'Film A', 2013), (102, 'Film B', 2008);

-- 28. Inner join: soundtrack with film info
SELECT s.Title, f.Title AS FilmTitle, s.ReleaseDate
FROM FilmSoundtracks s
JOIN Films f ON s.FilmID = f.FilmID;

-- 29. Left join to find orphans
SELECT s.Title, f.Title
FROM FilmSoundtracks s
LEFT JOIN Films f ON s.FilmID = f.FilmID
WHERE f.FilmID IS NULL;

-- 30. Subquery in WHERE
SELECT * FROM FilmSoundtracks
WHERE FilmID IN (SELECT FilmID FROM Films WHERE ReleaseYear > 2015);

-- 31. Subquery in SELECT
SELECT Title,
 (SELECT COUNT(*) FROM FilmSoundtracks s2 WHERE s2.Composer = s.Composer) AS NumByComposer
FROM FilmSoundtracks s;

-- 32. Subquery in FROM
SELECT AVG(TrackCount) FROM (
 SELECT Composer, COUNT(*) AS TrackCount
 FROM FilmSoundtracks GROUP BY Composer
) AS T;

-- 33. Correlated subquery with EXISTS
SELECT Title FROM FilmSoundtracks s
WHERE EXISTS (
 SELECT 1 FROM Films f WHERE f.FilmID = s.FilmID AND f.ReleaseYear < 2000
);

-- 34. Find soundtracks without associated films
SELECT Title FROM FilmSoundtracks s
WHERE NOT EXISTS (
 SELECT 1 FROM Films f WHERE f.FilmID = s.FilmID
);

-- 35. Use ALL in subquery
SELECT * FROM FilmSoundtracks
WHERE DurationSeconds > ALL (
 SELECT DurationSeconds FROM FilmSoundtracks WHERE Genre = 'Classical'
);

-- 36. Parent table: SoundtrackAlbums
CREATE TABLE SoundtrackAlbums (
  AlbumID INT PRIMARY KEY,
  Name VARCHAR(100)
);

-- 37. Child table referencing albums with ON DELETE/UPDATE CASCADE
CREATE TABLE AlbumTracks (
  TrackID INT PRIMARY KEY,
  AlbumID INT,
  FOREIGN KEY (AlbumID) REFERENCES SoundtrackAlbums(AlbumID)
    ON DELETE CASCADE ON UPDATE CASCADE
);

-- 38. Insert parent + child
INSERT INTO SoundtrackAlbums VALUES (1,'Album One');
INSERT INTO AlbumTracks VALUES (1, 1);

-- 39. Delete album triggers cascade delete of tracks :contentReference[oaicite:1]{index=1}
DELETE FROM SoundtrackAlbums WHERE AlbumID = 1;

-- 40. Update primary key book AlbumIDs cascade :contentReference[oaicite:2]{index=2}
UPDATE SoundtrackAlbums SET AlbumID = 2 WHERE AlbumID = 1;

-- 41. CASE expression for rating category
SELECT Title,
 CASE
   WHEN Rating = '5' THEN 'Excellent'
   WHEN Rating = '4' THEN 'Good'
   ELSE 'Fair'
 END AS RatingDesc
FROM FilmSoundtracks;

-- 42. COALESCE to handle NULLs
SELECT Title, COALESCE(Composer, 'Unknown Composer') AS ComposerName
FROM FilmSoundtracks;

-- 43. NULLIF to detect equal fields (example)
SELECT Title, NULLIF(DurationSeconds, 0) AS NonZeroDuration
FROM FilmSoundtracks;

-- 44. ROUND average duration per language
SELECT Language, ROUND(AVG(DurationSeconds),0) AS AvgDuration
FROM FilmSoundtracks
GROUP BY Language;

-- 45. CONCAT for display
SELECT CONCAT(Title,' [',Language,']') AS DisplayTitle FROM FilmSoundtracks;

-- 46. Track(s) with maximum duration
SELECT * FROM FilmSoundtracks
WHERE DurationSeconds = (SELECT MAX(DurationSeconds) FROM FilmSoundtracks);

-- 47. Tracks with zero duration edge case
SELECT * FROM FilmSoundtracks WHERE DurationSeconds = 0;

-- 48. Count by Publisher
SELECT Publisher, COUNT(*) AS CountPerPub
FROM FilmSoundtracks GROUP BY Publisher;

-- 49. Distinct genres
SELECT DISTINCT Genre FROM FilmSoundtracks;

-- 50. Tracks released after average release date (year)
SELECT * FROM FilmSoundtracks
WHERE EXTRACT(YEAR FROM ReleaseDate) > (
  SELECT AVG(EXTRACT(YEAR FROM ReleaseDate)) FROM FilmSoundtracks
);

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

-- 1. Create the Awards table
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

-- 2. Add a new column for EventDate
ALTER TABLE Awards ADD EventDate DATE;

-- 3. Alter PrizeAmount to NOT NULL
ALTER TABLE Awards MODIFY COLUMN PrizeAmount DECIMAL(10,2) NOT NULL;

-- 4. Drop the EventDate column
ALTER TABLE Awards DROP COLUMN EventDate;

-- 5. Rename table to FilmAwards
ALTER TABLE Awards RENAME TO FilmAwards;

-- 6. Insert a new award
INSERT INTO FilmAwards (AwardID, Name, Category, Year, WinnerName, FilmID, PresentedBy, Country, PrizeAmount, Level)
VALUES (21, 'Critics Choice Awards', 'Best Screenplay', 2024, 'Writer X', 128, 'Critics Circle', 'India', 120000.00, 'National');

-- 7. Update PrizeAmount for a specific award
UPDATE FilmAwards SET PrizeAmount = 130000.00 WHERE AwardID = 21;

-- 8. Delete an award by AwardID
DELETE FROM FilmAwards WHERE AwardID = 21;

-- 9. Insert multiple awards in one go
INSERT INTO FilmAwards VALUES
(22, 'BAFTA', 'Best Film', 2024, 'Film Y', 129, 'BAFTA', 'UK', 200000.00, 'International'),
(23, 'Oscar', 'Best Picture', 2024, 'Film Z', 130, 'Academy', 'USA', 300000.00, 'International');

-- 10. Update multiple rows (adjust prize based on year)
UPDATE FilmAwards SET PrizeAmount = PrizeAmount * 1.10
WHERE Year = 2023;

-- 11. Delete awards older than a certain year
DELETE FROM FilmAwards WHERE Year < 2020;

-- 12. Insert an award with NULL WinnerName
INSERT INTO FilmAwards (AwardID, Name, Category, Year, FilmID, PresentedBy, Country, PrizeAmount, Level)
VALUES (24, 'Unknown Awards', 'Special Mention', 2025, 131, 'Unknown Org', 'Unknown', 50000.00, 'Regional');

-- 13. Set WinnerName default for NULL
UPDATE FilmAwards SET WinnerName = 'TBA' WHERE WinnerName IS NULL;

-- 14. Remove entries with NULL FilmID
DELETE FROM FilmAwards WHERE FilmID IS NULL;

-- 15. Insert minimal information award
INSERT INTO FilmAwards (AwardID, Name, Year) VALUES (25, 'Local Honor', 2025);

-- 16. Select all awards
SELECT * FROM FilmAwards;

-- 17. Select with column aliases
SELECT Name AS AwardName, WinnerName AS Winner, PrizeAmount AS Prize
FROM FilmAwards;

-- 18. Filter by country and level
SELECT * FROM FilmAwards
WHERE Country = 'India' AND Level = 'National';

-- 19. Filter using OR
SELECT * FROM FilmAwards
WHERE Level = 'International' OR Level = 'South';

-- 20. Numeric BETWEEN filter
SELECT * FROM FilmAwards
WHERE PrizeAmount BETWEEN 100000 AND 300000;

-- 21. Filter using IN list
SELECT * FROM FilmAwards
WHERE Country IN ('USA', 'UK', 'India');

-- 22. Pattern-matching with LIKE
SELECT * FROM FilmAwards
WHERE Name LIKE '%Film%';

-- 23. Order by descending prize
SELECT * FROM FilmAwards
ORDER BY PrizeAmount DESC;

-- 24. Group by year and count awards
SELECT Year, COUNT(*) AS AwardsCount
FROM FilmAwards
GROUP BY Year;

-- 25. Aggregate functions across awards
SELECT MAX(PrizeAmount) AS MaxPrize, MIN(PrizeAmount) AS MinPrize, AVG(PrizeAmount) AS AvgPrize
FROM FilmAwards;

-- 26. Create Films table
CREATE TABLE Films (
  FilmID INT PRIMARY KEY,
  Title VARCHAR(100),
  ReleaseYear INT
);

-- 27. Sample insert into Films
INSERT INTO Films VALUES (110, 'Pushpa', 2021), (114, 'Kal Ho Naa Ho', 2003);

-- 28. Inner join awards with film titles
SELECT fa.Name AS Award, f.Title AS FilmTitle, fa.WinnerName
FROM FilmAwards fa
JOIN Films f ON fa.FilmID = f.FilmID;

-- 29. Left join to include awards without films
SELECT fa.Name, f.Title
FROM FilmAwards fa
LEFT JOIN Films f ON fa.FilmID = f.FilmID
WHERE f.FilmID IS NULL;

-- 30. Subquery filter by film release year
SELECT * FROM FilmAwards
WHERE FilmID IN (SELECT FilmID FROM Films WHERE ReleaseYear > 2020);

-- 31. Subquery in SELECT for awards per film
SELECT FilmID,
  (SELECT COUNT(*) FROM FilmAwards fa2 WHERE fa2.FilmID = fa.FilmID) AS AwardsPerFilm
FROM FilmAwards fa
GROUP BY FilmID;

-- 32. Subquery as a derived table
SELECT AVG(AwardsCount) FROM (
  SELECT FilmID, COUNT(*) AS AwardsCount
  FROM FilmAwards
  GROUP BY FilmID
) AS FilmAwardsCount;

-- 33. Correlated subquery with EXISTS
SELECT Name FROM FilmAwards fa
WHERE EXISTS (
  SELECT 1 FROM Films f WHERE f.FilmID = fa.FilmID AND f.ReleaseYear < 2010
);

-- 34. Find awards with no matching film rows
SELECT Name FROM FilmAwards fa
WHERE NOT EXISTS (SELECT 1 FROM Films f WHERE f.FilmID = fa.FilmID);

-- 35. Using ALL operator with prize comparison
SELECT * FROM FilmAwards
WHERE PrizeAmount > ALL (SELECT PrizeAmount FROM FilmAwards WHERE Country = 'India');

-- 36. Create AwardSeries parent table
CREATE TABLE AwardSeries (
  SeriesID INT PRIMARY KEY,
  SeriesName VARCHAR(100)
);

-- 37. Create Awards child table with cascade
CREATE TABLE CeremonyAwards (
  AwardID INT PRIMARY KEY,
  SeriesID INT,
  FOREIGN KEY (SeriesID) REFERENCES AwardSeries(SeriesID)
    ON DELETE CASCADE ON UPDATE CASCADE
);

-- 38. Insert parent and child records
INSERT INTO AwardSeries VALUES (1, 'National Film Awards Series');
INSERT INTO CeremonyAwards VALUES (101, 1);

-- 39. Delete series cascades awards
DELETE FROM AwardSeries WHERE SeriesID = 1;
-- All related CeremonyAwards rows get deleted

-- 40. Update SeriesID cascades to child
-- (if there were existing rows)
UPDATE AwardSeries SET SeriesID = 2 WHERE SeriesID = 1;

-- 41. CASE to describe prize magnitude
SELECT Name, PrizeAmount,
  CASE
    WHEN PrizeAmount >= 300000 THEN 'High'
    WHEN PrizeAmount BETWEEN 150000 AND 299999 THEN 'Medium'
    ELSE 'Low'
  END AS PrizeLevel
FROM FilmAwards;

-- 42. COALESCE for missing WinnerName
SELECT Name, COALESCE(WinnerName, 'TBA') AS Winner
FROM FilmAwards;

-- 43. NULLIF with prize comparisons
SELECT Name, NULLIF(PrizeAmount, 0) AS NonZeroPrize
FROM FilmAwards;

-- 44. ROUND average prize per year
SELECT Year, ROUND(AVG(PrizeAmount),2) AS AvgPrize
FROM FilmAwards
GROUP BY Year;

-- 45. CONCAT to build display strings
SELECT CONCAT(Name, ' (', Year, ') - ', WinnerName) AS DisplayAward
FROM FilmAwards;

-- 46. Awards with the top prize amount
SELECT * FROM FilmAwards
WHERE PrizeAmount = (SELECT MAX(PrizeAmount) FROM FilmAwards);

-- 47. Awards where prize is zero (edge case)
SELECT * FROM FilmAwards WHERE PrizeAmount = 0;

-- 48. Count awards by category
SELECT Category, COUNT(*) AS TotalAwards
FROM FilmAwards
GROUP BY Category;

-- 49. List distinct countries that present awards
SELECT DISTINCT Country FROM FilmAwards;

-- 50. Awards where year > average award year
SELECT * FROM FilmAwards
WHERE Year > (SELECT AVG(Year) FROM FilmAwards);

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

-- 2. Add a new column
ALTER TABLE ShootingLocations
ADD RentalCostPerDay DECIMAL(8,2);

-- 3. Rename a column
ALTER TABLE ShootingLocations
RENAME COLUMN LocalContact TO LocalContactInfo;

-- 4. Drop a column
ALTER TABLE ShootingLocations
DROP COLUMN RentalCostPerDay;

-- 5. Drop the table
DROP TABLE ShootingLocations;

-- 6. Insert a single record
INSERT INTO ShootingLocations VALUES
(21, 130, 'India','Punjab','Ludhiana','Rose Garden',2,'Outdoor',TRUE,'A K Sharma');

-- 7. Update film ID for a location
UPDATE ShootingLocations
SET FilmID = 200
WHERE LocationID = 1;

-- 8. Increment DaysSpent by 1 for outdoor shoots
UPDATE ShootingLocations
SET DaysSpent = DaysSpent + 1
WHERE IndoorOutdoor = 'Outdoor';

-- 9. Delete records with fewer than 3 days
DELETE FROM ShootingLocations
WHERE DaysSpent < 3;

-- 10. Truncate all records quickly
TRUNCATE TABLE ShootingLocations;

-- 11. All columns
SELECT * FROM ShootingLocations;

-- 12. Specific columns
SELECT City, SiteName, DaysSpent FROM ShootingLocations;

-- 13. Unique states
SELECT DISTINCT State FROM ShootingLocations;

-- 14. Filtering by state
SELECT * FROM ShootingLocations
WHERE State = 'Goa';

-- 15. Ordering by DaysSpent descending
SELECT * FROM ShootingLocations
ORDER BY DaysSpent DESC;

-- 16. Top 5 by DaysSpent
SELECT * FROM ShootingLocations
ORDER BY DaysSpent DESC
LIMIT 5;

-- 17. Count locations per state
SELECT State, COUNT(*) AS NumLocations
FROM ShootingLocations
GROUP BY State;

-- 18. Having clause for totals >2
SELECT State, COUNT(*) AS CountLoc
FROM ShootingLocations
GROUP BY State
HAVING COUNT(*) > 2;

-- 19. Sum days by whether permit required
SELECT IndoorOutdoor,
       SUM(DaysSpent) AS TotalDays
FROM ShootingLocations
GROUP BY IndoorOutdoor;

-- 20. Average DaysSpent
SELECT AVG(DaysSpent) AS AvgDays
FROM ShootingLocations;

-- 21. Using aliases
SELECT City AS LocationCity, DaysSpent AS Days
FROM ShootingLocations;

-- 22. Conditional with CASE
SELECT SiteName,
       CASE WHEN DaysSpent > 5 THEN 'Long' ELSE 'Short' END AS ShootType
FROM ShootingLocations;

-- 23. Boolean cast to int
SELECT SiteName, PermitRequired AS PermRequired
FROM ShootingLocations;

-- 24. Length of SiteName
SELECT SiteName, LENGTH(SiteName) AS NameLength
FROM ShootingLocations;

-- 25. Filter using LIKE
SELECT * FROM ShootingLocations
WHERE SiteName LIKE '%Film City%';

-- 26. Inner join to get film titles
SELECT SL.SiteName, F.Title
FROM ShootingLocations AS SL
JOIN Films AS F USING (FilmID);

-- 27. Left join: show all locations, even without films
SELECT SL.SiteName, F.Title
FROM ShootingLocations SL
LEFT JOIN Films F ON SL.FilmID = F.FilmID;

-- 28. Join with alias and filter
SELECT SL.City, F.Title, F.Budget
FROM ShootingLocations SL
JOIN Films F ON SL.FilmID = F.FilmID
WHERE F.Budget > 1000000;

-- 29. Subquery in WHERE: long shoots only
SELECT * FROM ShootingLocations
WHERE DaysSpent > (
  SELECT AVG(DaysSpent) FROM ShootingLocations
);

-- 30. IN subquery: select from high-budget films
SELECT * FROM ShootingLocations
WHERE FilmID IN (
  SELECT FilmID FROM Films WHERE Budget > 1000000
);

-- 31. Correlated subquery to find max days per state
SELECT L1.*
FROM ShootingLocations L1
WHERE DaysSpent = (
  SELECT MAX(DaysSpent)
  FROM ShootingLocations L2
  WHERE L2.State = L1.State
);

-- 32. CTE for total days per state
WITH Totals AS (
  SELECT State, SUM(DaysSpent) AS TotalDays
  FROM ShootingLocations
  GROUP BY State
)
SELECT SL.City, Totals.TotalDays
FROM ShootingLocations SL
JOIN Totals USING (State);

-- 33. Recursive CTE (example structure, though no recursion here)
WITH RECURSIVE Seq(n) AS (
  SELECT 1
  UNION ALL
  SELECT n+1 FROM Seq WHERE n < 5
)
SELECT * FROM Seq;

-- 34. UNION with fictional old table
SELECT SiteName FROM ShootingLocations
UNION
SELECT OldSiteName AS SiteName FROM OldLocations;

-- 35. Intersect example
SELECT SiteName
FROM ShootingLocations
WHERE SiteName IN (SELECT SiteName FROM OtherLocations);

-- 36. EXCEPT to find non-overlapping
SELECT SiteName
FROM ShootingLocations
WHERE SiteName NOT IN (SELECT SiteName FROM OtherLocations);

-- 37. Use transaction for safety
BEGIN;
UPDATE ShootingLocations SET DaysSpent = 0 WHERE City = 'Panaji';
DELETE FROM ShootingLocations WHERE DaysSpent = 0;
COMMIT;

-- 38. Rollback example
BEGIN;
UPDATE ShootingLocations SET DaysSpent = 99 WHERE City = 'Mumbai';
ROLLBACK;

-- 39. Alter Filming table to add FK with cascading deletes
ALTER TABLE ShootingLocations
ADD CONSTRAINT fk_film
FOREIGN KEY (FilmID)
REFERENCES Films(FilmID)
ON DELETE CASCADE
ON UPDATE CASCADE;

-- 40. Locations without permit required
SELECT * FROM ShootingLocations
WHERE PermitRequired = FALSE;

-- 41. Outdoor shoots only
SELECT * FROM ShootingLocations
WHERE IndoorOutdoor = 'Outdoor';

-- 42. Count by city and state
SELECT State, City, COUNT(*) AS CountLoc
FROM ShootingLocations
GROUP BY State, City;

-- 43. CTE + ranking
WITH Ranked AS (
  SELECT *, RANK() OVER (PARTITION BY State ORDER BY DaysSpent DESC) AS rnk
  FROM ShootingLocations
)
SELECT * FROM Ranked WHERE rnk = 1;

-- 44. Difference between days
SELECT LocationID,
       DaysSpent - 5 AS DiffFrom5Days
FROM ShootingLocations;

-- 45. Permits counts
SELECT IndoorOutdoor,
       SUM(CASE WHEN PermitRequired THEN 1 ELSE 0 END) AS PermitsCount
FROM ShootingLocations
GROUP BY IndoorOutdoor;

-- 46. Pagination: 5 rows at a time
SELECT * FROM ShootingLocations
ORDER BY LocationID
LIMIT 5 OFFSET 5;

-- 47. Find siteNames with space count in name
SELECT SiteName,
       (LENGTH(SiteName) - LENGTH(REPLACE(SiteName, ' ', ''))) AS SpaceCount
FROM ShootingLocations;

-- 48. Date example: add hypothetical date column
SELECT *, CURRENT_DATE AS QueryDate
FROM ShootingLocations;

-- 49. Filter using boolean syntax (PostgreSQL)
SELECT * FROM ShootingLocations
WHERE PermitRequired IS TRUE;


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

-- 1: Create table
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

-- 2: Add a column for CurrencyRate
ALTER TABLE FilmBudgets ADD CurrencyRate DECIMAL(10,4);

-- 3: Rename a column
ALTER TABLE FilmBudgets RENAME COLUMN Currency TO CurrencyCode;

-- 4: Drop a column
ALTER TABLE FilmBudgets DROP COLUMN CurrencyRate;

-- 5: Drop the table
DROP TABLE FilmBudgets;

-- 6: Insert one record
INSERT INTO FilmBudgets
  (BudgetID, FilmID, PreProductionCost, ProductionCost, PostProductionCost,
   MarketingCost, DistributionCost, MiscellaneousCost, TotalBudget, CurrencyCode)
VALUES
  (21, 130, 12000000.00, 50000000.00, 8000000.00, 5000000.00, 3000000.00, 1500000.00, 84000000.00, 'INR');

-- 7: Update ProductionCost
UPDATE FilmBudgets
SET ProductionCost = ProductionCost * 1.05
WHERE FilmID = 110;

-- 8: Recalculate TotalBudget
UPDATE FilmBudgets
SET TotalBudget = PreProductionCost + ProductionCost + PostProductionCost
    + MarketingCost + DistributionCost + MiscellaneousCost;

-- 9: Delete low-budget entries
DELETE FROM FilmBudgets
WHERE TotalBudget < 60000000.00;

-- 10: Clear all records
TRUNCATE TABLE FilmBudgets;

-- 11: Select all budgets
SELECT * FROM FilmBudgets;

-- 12: Specific columns
SELECT FilmID, TotalBudget, CurrencyCode
FROM FilmBudgets;

-- 13: Budget > 100 million
SELECT FilmID, TotalBudget
FROM FilmBudgets
WHERE TotalBudget > 100000000;

-- 14: IN operator example
SELECT FilmID, TotalBudget
FROM FilmBudgets
WHERE CurrencyCode IN ('INR', 'USD');

-- 15: Range filtering
SELECT FilmID, TotalBudget
FROM FilmBudgets
WHERE TotalBudget BETWEEN 80000000 AND 150000000;

-- 16: Pattern match
SELECT *
FROM FilmBudgets
WHERE CurrencyCode LIKE 'I%';

-- 17: Ordering
SELECT FilmID, TotalBudget
FROM FilmBudgets
ORDER BY TotalBudget DESC;

-- 18: Top 5 budgets
SELECT FilmID, TotalBudget
FROM FilmBudgets
ORDER BY TotalBudget DESC
LIMIT 5;

-- 19: Count films
SELECT COUNT(*) AS NumberOfFilms
FROM FilmBudgets;

-- 20: Aggregate totals
SELECT 
  SUM(ProductionCost) AS TotalProdCost,
  AVG(TotalBudget) AS AvgBudget,
  MIN(TotalBudget) AS MinBudget,
  MAX(TotalBudget) AS MaxBudget
FROM FilmBudgets;

-- 21: Use aliases
SELECT FilmID AS FID, TotalBudget AS Budget
FROM FilmBudgets;

-- 22: Add a markup column
SELECT FilmID,
  TotalBudget,
  TotalBudget * 1.10 AS BudgetWithMarkup
FROM FilmBudgets;

-- 23: Conditional CASE
SELECT FilmID,
  CASE
    WHEN TotalBudget > 150000000 THEN 'High'
    WHEN TotalBudget > 100000000 THEN 'Medium'
    ELSE 'Low'
  END AS BudgetCategory
FROM FilmBudgets;

-- 24: Rounded ProductionCost
SELECT FilmID, ROUND(ProductionCost, -6) AS RoundedProd
FROM FilmBudgets;

-- 25: Currency code length
SELECT FilmID, LENGTH(CurrencyCode) AS CCLen
FROM FilmBudgets;

-- 26: Nullable check
SELECT FilmID, COALESCE(CurrencyCode, 'UNKNOWN') AS Curr
FROM FilmBudgets;

-- 27: Arithmetic in WHERE
SELECT FilmID, TotalBudget
FROM FilmBudgets
WHERE TotalBudget - ProductionCost > 50000000;

-- 28: Boolean expression
SELECT FilmID,
  (MarketingCost > 10000000) AS BigMarketing
FROM FilmBudgets;

-- 29: Sum all cost fields (row-level)
SELECT FilmID,
  PreProductionCost + ProductionCost + PostProductionCost
  + MarketingCost + DistributionCost + MiscellaneousCost
  AS ComputedTotal
FROM FilmBudgets;

-- 30: Filter based on computed column
SELECT FilmID,
  TotalBudget
FROM FilmBudgets
WHERE TotalBudget = (
  PreProductionCost + ProductionCost + PostProductionCost
  + MarketingCost + DistributionCost + MiscellaneousCost
);

-- 31: Suppose Films table exists – get title with budget
SELECT B.FilmID, F.Title, B.TotalBudget
FROM FilmBudgets B
JOIN Films F ON B.FilmID = F.FilmID;

-- 32: Left join to include all budgets
SELECT B.FilmID, F.Title, B.TotalBudget
FROM FilmBudgets B
LEFT JOIN Films F ON B.FilmID = F.FilmID;

-- 33: Inner join with filter
SELECT B.FilmID, F.Title, B.TotalBudget
FROM FilmBudgets B
JOIN Films F ON B.FilmID = F.FilmID
WHERE F.Budget > 100000000;

-- 34: Add foreign key with cascade
ALTER TABLE FilmBudgets
ADD CONSTRAINT fk_film
FOREIGN KEY (FilmID) REFERENCES Films(FilmID)
ON DELETE CASCADE ON UPDATE CASCADE;

-- 35: Simulate delete cascade
DELETE FROM Films WHERE FilmID = 110;
-- This also removes relevant FilmBudgets row via cascade.

-- 36: Above-average budgets
SELECT * FROM FilmBudgets
WHERE TotalBudget > (SELECT AVG(TotalBudget) FROM FilmBudgets);

-- 37: FilmIDs in result subquery
SELECT * FROM FilmBudgets
WHERE FilmID IN (SELECT FilmID FROM Films WHERE Genre = 'Action');

-- 38: Correlated to detect max production cost per currency
SELECT FB.*
FROM FilmBudgets FB
WHERE FB.ProductionCost = (
  SELECT MAX(ProductionCost)
  FROM FilmBudgets FB2
  WHERE FB2.CurrencyCode = FB.CurrencyCode
);

-- 39: Subselect in SELECT
SELECT FilmID, TotalBudget,
  (SELECT Title FROM Films WHERE Films.FilmID = FilmBudgets.FilmID)
  AS FilmTitle
FROM FilmBudgets;

-- 40: Derived table join
SELECT d.CurrencyCode, AVG(d.TotalBudget) AS AvgBudget
FROM (
  SELECT CurrencyCode, TotalBudget
  FROM FilmBudgets
  WHERE TotalBudget > 50000000
) d
GROUP BY d.CurrencyCode;

-- 41: Simple CTE
WITH HighBudgets AS (
  SELECT FilmID, TotalBudget
  FROM FilmBudgets
  WHERE TotalBudget > 120000000
)
SELECT * FROM HighBudgets;

-- 42: CTE then join
WITH AvgByCurr AS (
  SELECT CurrencyCode, AVG(TotalBudget) AS AvgBudget
  FROM FilmBudgets
  GROUP BY CurrencyCode
)
SELECT B.FilmID, B.TotalBudget, A.AvgBudget
FROM FilmBudgets B
JOIN AvgByCurr A USING (CurrencyCode);

-- 43: Window ranking by budget
SELECT FilmID, TotalBudget,
  RANK() OVER (ORDER BY TotalBudget DESC) AS RankByBudget
FROM FilmBudgets;

-- 44: Partitioned average by currency
SELECT FilmID, CurrencyCode, TotalBudget,
  AVG(TotalBudget) OVER (PARTITION BY CurrencyCode) AS AvgCurrBudget
FROM FilmBudgets;

-- 45: Row number per currency
SELECT FilmID, CurrencyCode, TotalBudget,
  ROW_NUMBER() OVER (PARTITION BY CurrencyCode ORDER BY TotalBudget DESC) AS RowNum
FROM FilmBudgets;

-- 46: EXISTS subquery
SELECT FilmID
FROM FilmBudgets B
WHERE EXISTS (
  SELECT 1 FROM Films F WHERE F.FilmID = B.FilmID AND F.ReleaseYear > 2020
);

-- 47: UNION example (assuming another table)
SELECT FilmID, TotalBudget FROM FilmBudgets
UNION
SELECT FilmID, Budget AS TotalBudget FROM Films
WHERE Budget IS NOT NULL;

-- 48: Transaction block
BEGIN;
UPDATE FilmBudgets
SET MarketingCost = MarketingCost * 1.2
WHERE FilmID IN (114,115);
-- intentionally erroneous update?
ROLLBACK;

-- 49: Anti-join to find orphan budgets
SELECT B.FilmID, B.TotalBudget
FROM FilmBudgets B
LEFT JOIN Films F ON B.FilmID = F.FilmID
WHERE F.FilmID IS NULL;

-- 50: Conditional delete with transaction
BEGIN;
DELETE FROM FilmBudgets
WHERE TotalBudget < 50000000;
COMMIT;


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

-- 1. Create FilmReviews table
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

-- 2. Add a new column for ReviewLanguage
ALTER TABLE FilmReviews
ADD ReviewLanguage VARCHAR(50);

-- 3. Rename ReviewerName to CriticName
ALTER TABLE FilmReviews
RENAME COLUMN ReviewerName TO CriticName;

-- 4. Drop the Verified column
ALTER TABLE FilmReviews
DROP COLUMN Verified;

-- 5. Drop the FilmReviews table completely
DROP TABLE FilmReviews;

-- 6. Insert a single new review
INSERT INTO FilmReviews
  (ReviewID, FilmID, CriticName, Platform, Rating, ReviewDate, ReviewTitle, ReviewText, Likes)
VALUES
  (21, 130, 'Ria Kapoor', 'Letterboxd', 4.2, '2024-05-10', 'Intriguing Plot', 'A well-paced thriller with strong leads.', 850);

-- 7. Insert multiple reviews in bulk using VALUES
INSERT INTO FilmReviews
  (ReviewID, FilmID, CriticName, Platform, Rating, ReviewDate, ReviewTitle, ReviewText, Likes)
VALUES
  (22, 131, 'Deepak Singh', 'IMDb', 3.9, '2024-06-01', 'Decent Effort', 'Somewhat predictable but enjoyable.', 430),
  (23, 132, 'Megha Joshi', 'BookMyShow', 4.5, '2024-06-15', 'Must Watch', 'Brilliant scripting and direction.', 1270);

-- 8. Update Rating based on text sentiment (example formula)
UPDATE FilmReviews
SET Rating = ROUND(Rating + 0.1, 1)
WHERE ReviewText LIKE '%brilliant%';

-- 9. Increment likes by 10 on YouTube reviews
UPDATE FilmReviews
SET Likes = Likes + 10
WHERE Platform = 'YouTube';

-- 10. Delete reviews older than 2022
DELETE FROM FilmReviews
WHERE ReviewDate < '2022-01-01';

-- 11. Truncate (remove all reviews)
TRUNCATE TABLE FilmReviews;

-- 12. Mark reviews as verified based on known critics
UPDATE FilmReviews
SET Verified = TRUE
WHERE CriticName IN ('Taran Adarsh', 'Rajeev Masand');

-- 13. Reset likes to zero for low-rated reviews
UPDATE FilmReviews
SET Likes = 0
WHERE Rating < 3.0;

-- 14. Insert with DEFAULT ReviewLanguage
INSERT INTO FilmReviews
  (ReviewID, FilmID, CriticName, Platform, Rating, ReviewDate, ReviewTitle, ReviewText, Likes, ReviewLanguage)
VALUES
  (24, 133, 'Arun Patel', 'The Hindu', 4.0, '2024-04-20', 'Thoughtful Drama', 'A compelling insight into social issues.', 620, DEFAULT);

-- 15. Delete reviews with NULL or zero rating
DELETE FROM FilmReviews
WHERE Rating IS NULL OR Rating = 0;

-- 16. Retrieve all reviews
SELECT * FROM FilmReviews;

-- 17. Select critic, platform, and rating
SELECT CriticName, Platform, Rating
FROM FilmReviews;

-- 18. High ratings (>= 4.5)
SELECT * FROM FilmReviews
WHERE Rating >= 4.5;

-- 19. Reviews in 2023
SELECT * FROM FilmReviews
WHERE ReviewDate BETWEEN '2023-01-01' AND '2023-12-31';

-- 20. Count reviews per film
SELECT FilmID, COUNT(*) AS ReviewCount
FROM FilmReviews
GROUP BY FilmID;

-- 21. Average rating per film
SELECT FilmID, ROUND(AVG(Rating), 2) AS AvgRating
FROM FilmReviews
GROUP BY FilmID;

-- 22. Maximum likes across reviews
SELECT MAX(Likes) AS MaxLikes
FROM FilmReviews;

-- 23. Minimum rating per platform
SELECT Platform, MIN(Rating) AS MinRating
FROM FilmReviews
GROUP BY Platform;

-- 24. Avg likes per platform
SELECT Platform, ROUND(AVG(Likes), 1) AS AvgLikes
FROM FilmReviews
GROUP BY Platform;

-- 25. Platforms with >100 reviews
SELECT Platform, COUNT(*) AS ReviewCount
FROM FilmReviews
GROUP BY Platform
HAVING COUNT(*) > 100;

-- 26. Categorize reviews using CASE
SELECT Rating,
  CASE
    WHEN Rating >= 4.5 THEN 'Excellent'
    WHEN Rating >= 3.5 THEN 'Good'
    ELSE 'Fair'
  END AS RatingCategory
FROM FilmReviews;

-- 27. Length of review titles
SELECT ReviewTitle, LENGTH(ReviewTitle) AS TitleLength
FROM FilmReviews;

-- 28. Handle NULL review text
SELECT ReviewID, COALESCE(ReviewText, 'No content') AS Content
FROM FilmReviews;

-- 29. Contains “action” in text (case-insensitive)
SELECT * FROM FilmReviews
WHERE LOWER(ReviewText) LIKE '%action%';

-- 30. Days since review
SELECT ReviewID,
  CURRENT_DATE - ReviewDate AS DaysAgo
FROM FilmReviews;

-- 31. Rank reviews by likes within each film
SELECT ReviewID, FilmID, Likes,
  RANK() OVER (PARTITION BY FilmID ORDER BY Likes DESC) AS ReviewRank
FROM FilmReviews;

-- 32. Row number per film based on likes
SELECT ReviewID, FilmID, Likes,
  ROW_NUMBER() OVER (PARTITION BY FilmID ORDER BY Likes DESC) AS RowNum
FROM FilmReviews;

-- 33. Rounded average rating
SELECT FilmID, ROUND(AVG(Rating),1) AS AvgRating
FROM FilmReviews
GROUP BY FilmID;

-- 34. Boolean expression output
SELECT ReviewID, (Likes > 2000) AS Popular
FROM FilmReviews;

-- 35. Impact score: likes × rating
SELECT ReviewID, Likes * Rating AS ImpactScore
FROM FilmReviews;

-- 36. Join reviews with budgets to include film cost
SELECT R.FilmID, R.Rating, B.TotalBudget
FROM FilmReviews R
JOIN FilmBudgets B ON R.FilmID = B.FilmID;

-- 37. Left join to include films even without reviews:
SELECT B.FilmID, B.TotalBudget, R.ReviewID
FROM FilmBudgets B
LEFT JOIN FilmReviews R ON B.FilmID = R.FilmID;

-- 38. Inner join filtering big-budget films (>120M)
SELECT R.FilmID, R.Rating, B.TotalBudget
FROM FilmReviews R
JOIN FilmBudgets B ON R.FilmID = B.FilmID
WHERE B.TotalBudget > 120000000;

-- 39. Add foreign key with cascading delete
ALTER TABLE FilmReviews
ADD CONSTRAINT fk_film_rev
FOREIGN KEY (FilmID) REFERENCES FilmBudgets(FilmID)
ON DELETE CASCADE
ON UPDATE CASCADE;

-- 40. Deleting a budget entry cascades its reviews:
DELETE FROM FilmBudgets WHERE FilmID = 110;

-- 41. Find reviews with max likes per film
SELECT * FROM FilmReviews R1
WHERE Likes = (
  SELECT MAX(Likes) FROM FilmReviews R2
  WHERE R2.FilmID = R1.FilmID
);

-- 42. Reviews with rating above film average
SELECT * FROM FilmReviews R
WHERE Rating > (
  SELECT AVG(Rating)
  FROM FilmReviews
  WHERE FilmID = R.FilmID
);

-- 43. Reviews on highly-liked platforms
SELECT * FROM FilmReviews
WHERE Platform IN (
  SELECT Platform
  FROM FilmReviews
  GROUP BY Platform
  HAVING AVG(Likes) > 2000
);

-- 44. Insert reviews for films in a planning table
INSERT INTO FilmReviews (ReviewID, FilmID, CriticName, Platform, Rating, ReviewDate, ReviewTitle, ReviewText, Likes)
SELECT 100+FilmID, FilmID, 'AutoCritic', 'AutoSys',
       3.5, CURRENT_DATE, 'Auto Review', 'Generated review.', 0
FROM FilmBudgets
WHERE TotalBudget > 150000000;

-- 45. Delete films with no reviews using FilmBudgets
DELETE FROM FilmBudgets
WHERE FilmID NOT IN (SELECT DISTINCT FilmID FROM FilmReviews);

-- 46. CTE for top-reviewed films
WITH ReviewCounts AS (
  SELECT FilmID, COUNT(*) AS ReviewCount
  FROM FilmReviews
  GROUP BY FilmID
)
SELECT * FROM ReviewCounts
ORDER BY ReviewCount DESC
LIMIT 5;

-- 47. Cumulative sum of likes over review date
SELECT ReviewDate, Likes,
  SUM(Likes) OVER (ORDER BY ReviewDate) AS CumulativeLikes
FROM FilmReviews;

-- 48. CTE join for above-average films
WITH AvgRatings AS (
  SELECT FilmID, AVG(Rating) AS AvgRating
  FROM FilmReviews
  GROUP BY FilmID
)
SELECT R.FilmID, R.Rating, A.AvgRating
FROM FilmReviews R
JOIN AvgRatings A ON R.FilmID = A.FilmID
WHERE R.Rating > A.AvgRating;

-- 49. Top 3 reviews per film by likes
SELECT ReviewID, FilmID, Likes
FROM (
   SELECT ReviewID, FilmID, Likes,
          ROW_NUMBER() OVER (PARTITION BY FilmID ORDER BY Likes DESC) AS RN
   FROM FilmReviews
) t
WHERE RN <= 3;

-- 50. Transaction: update and commit
BEGIN;
UPDATE FilmReviews
SET Likes = Likes + 50
WHERE Platform = 'IMDb';
-- simulate error?
COMMIT;


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

-- 1: Create FilmScripts table
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

-- 2: Add a Notes column if absent
ALTER TABLE FilmScripts
ADD Notes TEXT;

-- 3: Rename WriterName to AuthorName
ALTER TABLE FilmScripts
RENAME COLUMN WriterName TO AuthorName;

-- 4: Drop the Approved column
ALTER TABLE FilmScripts
DROP COLUMN Approved;

-- 5: Drop the FilmScripts table
DROP TABLE FilmScripts;

-- 6: Insert a new script draft
INSERT INTO FilmScripts
  (ScriptID, FilmID, ScriptTitle, AuthorName, Language, VersionNumber, SubmissionDate, Approved, Genre, Notes)
VALUES
  (21, 130, 'New Film Draft', 'Richa Mehta', 'Hindi', 1, '2024-07-01', FALSE, 'Drama', 'First draft.');

-- 7: Batch insert using multiple VALUES
INSERT INTO FilmScripts
  (ScriptID, FilmID, ScriptTitle, AuthorName, Language, VersionNumber, SubmissionDate, Approved, Genre)
VALUES
  (22, 131, 'Epic Tale', 'Arjun Lal', 'English', 1, '2024-06-20', FALSE, 'Fantasy'),
  (23, 132, 'Thriller Night', 'Priya Shah', 'Hindi', 2, '2024-06-25', TRUE, 'Thriller');

-- 8: Update version number post-revision
UPDATE FilmScripts
SET VersionNumber = VersionNumber + 1, Notes = 'Revised scenes'
WHERE ScriptID = 1;

-- 9: Approve all scripts above version 2
UPDATE FilmScripts
SET Approved = TRUE
WHERE VersionNumber > 2;

-- 10: Delete scripts not approved after 1 year
DELETE FROM FilmScripts
WHERE Approved = FALSE AND SubmissionDate < DATE_SUB(CURRENT_DATE, INTERVAL 1 YEAR);

-- 11: Retrieve all script entries
SELECT * FROM FilmScripts;

-- 12: List ScriptID, Title, Author, and Version
SELECT ScriptID, ScriptTitle, AuthorName, VersionNumber
FROM FilmScripts;

-- 13: Find scripts in Hindi language
SELECT * FROM FilmScripts
WHERE Language = 'Hindi';

-- 14: Scripts with version >1
SELECT * FROM FilmScripts
WHERE VersionNumber > 1;

-- 15: Order scripts by submission date descending
SELECT * FROM FilmScripts
ORDER BY SubmissionDate DESC;

-- 16: Scripts submitted in 2020
SELECT * FROM FilmScripts
WHERE YEAR(SubmissionDate) = 2020;

-- 17: Count scripts per language
SELECT Language, COUNT(*) AS NumScripts
FROM FilmScripts
GROUP BY Language;

-- 18: Approved vs not approved counts
SELECT Approved, COUNT(*) AS CountScripts
FROM FilmScripts
GROUP BY Approved;

-- 19: Max version per author
SELECT AuthorName, MAX(VersionNumber) AS MaxVersion
FROM FilmScripts
GROUP BY AuthorName;

-- 20: Average version number overall
SELECT ROUND(AVG(VersionNumber),1) AS AvgVersion
FROM FilmScripts;

-- 21: Alias columns clearly
SELECT ScriptID AS ID, ScriptTitle AS Title, AuthorName AS Author
FROM FilmScripts;

-- 22: Title length using LENGTH()
SELECT ScriptTitle, LENGTH(ScriptTitle) AS TitleLen
FROM FilmScripts;

-- 23: Uppercase genres
SELECT Genre, UPPER(Genre) AS GenreAllCaps
FROM FilmScripts;

-- 24: Conditional tagging with CASE
SELECT ScriptID, VersionNumber,
  CASE WHEN VersionNumber >= 3 THEN 'Mature' ELSE 'Draft' END AS Status
FROM FilmScripts;

-- 25: Concatenate title + version
SELECT ScriptID,
  CONCAT(ScriptTitle, ' v', VersionNumber) AS FullTitle
FROM FilmScripts;

-- 26: Date difference days since submission
SELECT ScriptID,
  DATEDIFF(CURRENT_DATE, SubmissionDate) AS DaysAgo
FROM FilmScripts;

-- 27: Filter by notes presence
SELECT * FROM FilmScripts
WHERE Notes IS NOT NULL;

-- 28: Approved boolean check
SELECT ScriptID, Approved = TRUE AS IsApproved
FROM FilmScripts;

-- 29: Filter by genre pattern
SELECT * FROM FilmScripts
WHERE Genre LIKE '%Thrill%';

-- 30: Order by version then author
SELECT * FROM FilmScripts
ORDER BY VersionNumber DESC, AuthorName ASC;

-- (Assuming Films table exists)
-- 31: Join with Films table for title
SELECT F.Title, S.ScriptTitle, S.VersionNumber
FROM FilmScripts S
JOIN Films F ON S.FilmID = F.FilmID;

-- 32: List all films and any scripts (left join)
SELECT F.FilmID, F.Title, S.ScriptID
FROM Films F
LEFT JOIN FilmScripts S ON F.FilmID = S.FilmID;

-- 33: Inner join for approved scripts only
SELECT F.Title, S.ScriptTitle
FROM FilmScripts S
JOIN Films F ON S.FilmID = F.FilmID
WHERE S.Approved = TRUE;

-- 34: Add foreign key with delete/update cascade
ALTER TABLE FilmScripts
ADD CONSTRAINT fk_scripts_films
FOREIGN KEY (FilmID) REFERENCES Films(FilmID)
ON DELETE CASCADE
ON UPDATE CASCADE;

-- 35: Delete a film to cascade delete scripts
DELETE FROM Films WHERE FilmID = 110;

-- 36: Scripts with highest version per film
SELECT * FROM FilmScripts S1
WHERE VersionNumber = (
  SELECT MAX(VersionNumber)
  FROM FilmScripts S2
  WHERE S2.FilmID = S1.FilmID
);

-- 37: Scripts that are older than average submission date
SELECT * FROM FilmScripts
WHERE SubmissionDate < (
  SELECT AVG(UNIX_TIMESTAMP(SubmissionDate))
  FROM FilmScripts
);

-- 38: Scripts by prolific authors
SELECT * FROM FilmScripts
WHERE AuthorName IN (
  SELECT AuthorName
  FROM FilmScripts
  GROUP BY AuthorName
  HAVING COUNT(*) > 2
);

-- 39: Insert a script for films missing drafts
INSERT INTO FilmScripts (ScriptID, FilmID, ScriptTitle, AuthorName, Language, VersionNumber, SubmissionDate, Approved, Genre)
SELECT FilmID * 100 + 1, FilmID, 'Auto-Draft', 'System', 'English', 1, CURRENT_DATE, FALSE, 'Draft'
FROM Films
WHERE FilmID NOT IN (SELECT DISTINCT FilmID FROM FilmScripts);

-- 40: Delete old drafts for films with no updates
DELETE FROM FilmScripts
WHERE VersionNumber = 1
  AND SubmissionDate < '2020-01-01';

-- 41: CTE – count scripts per writer
WITH WriterCounts AS (
  SELECT AuthorName, COUNT(*) AS NumScripts
  FROM FilmScripts
  GROUP BY AuthorName
)
SELECT * FROM WriterCounts;

-- 42: Cumulative count by date
SELECT SubmissionDate,
  COUNT(*) OVER (ORDER BY SubmissionDate) AS CumScripts
FROM FilmScripts;

-- 43: Scripts above average version
WITH AvgVer AS (
  SELECT AVG(VersionNumber) AS AvgV FROM FilmScripts
)
SELECT * FROM FilmScripts
WHERE VersionNumber > (SELECT AvgV FROM AvgVer);

-- 44: Top 3 recent scripts per film
SELECT ScriptID, FilmID, SubmissionDate
FROM (
  SELECT ScriptID, FilmID, SubmissionDate,
    ROW_NUMBER() OVER (PARTITION BY FilmID ORDER BY SubmissionDate DESC) AS RN
  FROM FilmScripts
) t
WHERE RN <= 3;

-- 45: Scripts count per language with window
SELECT Language,
  COUNT(*) OVER (PARTITION BY Language) AS LangCount
FROM FilmScripts;

-- 46: Transaction to increment versions safely
BEGIN;
UPDATE FilmScripts
SET VersionNumber = VersionNumber + 1
WHERE Approved = FALSE;
COMMIT;

-- 47: Rollback example on error condition
BEGIN;
UPDATE FilmScripts SET VersionNumber = VersionNumber + 1;
-- Assume error:
ROLLBACK;

-- 48: Transaction with delete of obsolete scripts
BEGIN;
DELETE FROM FilmScripts WHERE SubmissionDate < '2015-01-01';
COMMIT;

-- 49: Locking – simulate update with lock (MySQL)
START TRANSACTION;
SELECT * FROM FilmScripts WHERE ScriptID = 1 FOR UPDATE;
UPDATE FilmScripts SET Notes = 'Checked' WHERE ScriptID = 1;
COMMIT;

-- 50: Savepoint for partial rollback
BEGIN;
UPDATE FilmScripts SET VersionNumber = 99 WHERE ScriptID = 2;
SAVEPOINT sp1;
UPDATE FilmScripts SET VersionNumber = 100 WHERE ScriptID = 3;
ROLLBACK TO sp1;
COMMIT;


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

-- 1. Create BoxOffice table
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

-- 2. Add a column for ROI percentage
ALTER TABLE BoxOffice
ADD ROIPercentage DECIMAL(5,2);

-- 3. Rename column Currency to CurrencyCode
ALTER TABLE BoxOffice
RENAME COLUMN Currency TO CurrencyCode;

-- 4. Drop the ProfitOrLoss column
ALTER TABLE BoxOffice
DROP COLUMN ProfitOrLoss;

-- 5. Drop the BoxOffice table entirely
DROP TABLE BoxOffice;

-- 6. Insert a single box-office record
INSERT INTO BoxOffice
  (BoxOfficeID, FilmID, ReleaseDate, OpeningWeekendCollection,
   TotalDomesticCollection, TotalInternationalCollection,
   TotalScreens, CurrencyCode, TotalRevenue, ProfitOrLoss)
VALUES
  (21, 130, '2024-07-05', 80000000.00, 320000000.00, 150000000.00, 5000, 'INR', 620000000.00, 'Profit');

-- 7. Bulk insert multiple records
INSERT INTO BoxOffice
  (BoxOfficeID, FilmID, ReleaseDate, OpeningWeekendCollection,
   TotalDomesticCollection, TotalInternationalCollection,
   TotalScreens, CurrencyCode, TotalRevenue, ProfitOrLoss)
VALUES
  (22, 131, '2024-05-12', 40000000.00, 200000000.00, 60000000.00, 3000, 'INR', 320000000.00, 'Profit'),
  (23, 132, '2024-06-10', 25000000.00, 100000000.00, 30000000.00, 2000, 'INR', 130000000.00, 'Profit');

-- 8. Update TotalRevenue after adding international figures
UPDATE BoxOffice
SET TotalRevenue = TotalDomesticCollection + TotalInternationalCollection;

-- 9. Calculate ROI percentage
UPDATE BoxOffice
SET ROIPercentage = ROUND(
    (TotalRevenue - OpeningWeekendCollection) * 100 / OpeningWeekendCollection, 2
);

-- 10. Delete small releases
DELETE FROM BoxOffice
WHERE TotalScreens < 1000;

-- 11. Select all box office records
SELECT * FROM BoxOffice;

-- 12. Select key columns only
SELECT FilmID, ReleaseDate, TotalRevenue, ProfitOrLoss
FROM BoxOffice;

-- 13. High-grossing films (revenue > 300M)
SELECT * FROM BoxOffice
WHERE TotalRevenue > 300000000;

-- 14. Profit-making movies only
SELECT * FROM BoxOffice
WHERE ProfitOrLoss = 'Profit';

-- 15. Release year extraction and filter
SELECT * FROM BoxOffice
WHERE YEAR(ReleaseDate) = 2022;

-- 16. Sort by opening weekend revenue
SELECT * FROM BoxOffice
ORDER BY OpeningWeekendCollection DESC;

-- 17. Top 5 performers
SELECT * FROM BoxOffice
ORDER BY TotalRevenue DESC
LIMIT 5;

-- 18. Count of films by profit status
SELECT ProfitOrLoss, COUNT(*) AS CountFilms
FROM BoxOffice
GROUP BY ProfitOrLoss;

-- 19. Average revenue
SELECT AVG(TotalRevenue) AS AvgRevenue
FROM BoxOffice;

-- 20. Max ROI
SELECT MAX(ROIPercentage) AS MaxROI
FROM BoxOffice;

-- 21. Alias for clarity
SELECT FilmID AS FID, TotalRevenue AS Revenue
FROM BoxOffice;

-- 22. ROI categories using CASE
SELECT FilmID,
  CASE
    WHEN ROIPercentage >= 50 THEN 'High ROI'
    WHEN ROIPercentage >= 20 THEN 'Medium ROI'
    ELSE 'Low ROI'
  END AS ROICategory
FROM BoxOffice;

-- 23. Screens per opening revenue
SELECT FilmID,
  TotalScreens / OpeningWeekendCollection AS ScreensPerMillion
FROM BoxOffice;

-- 24. Title-case currency code
SELECT DISTINCT CurrencyCode,
  CONCAT(UPPER(LEFT(CurrencyCode,1)), LOWER(SUBSTRING(CurrencyCode,2))) AS CurrencyFormatted
FROM BoxOffice;

-- 25. ReleaseDayName
SELECT FilmID, ReleaseDate,
  DAYNAME(ReleaseDate) AS ReleaseDay
FROM BoxOffice;

-- 26. Revenue difference domestic vs international
SELECT FilmID,
  TotalDomesticCollection - TotalInternationalCollection AS DomIntDiff
FROM BoxOffice;

-- 27. Filter via boolean check
SELECT FilmID,
  (TotalRevenue > 200000000) AS IsBlockbuster
FROM BoxOffice;

-- 28. Percentage share domestic
SELECT FilmID,
  ROUND(TotalDomesticCollection*100 / TotalRevenue, 1) AS DomesticSharePercent
FROM BoxOffice;

-- 29. Release year label
SELECT FilmID,
  CONCAT('Year-', YEAR(ReleaseDate)) AS ReleaseYearLabel
FROM BoxOffice;

-- 30. Filter with pattern match
SELECT * FROM BoxOffice
WHERE ProfitOrLoss LIKE '%Loss%';

-- 31. Inner join with Films for title
SELECT B.FilmID, F.Title, B.TotalRevenue
FROM BoxOffice B
JOIN Films F ON B.FilmID = F.FilmID;

-- 32. Left join listing all films regardless of box office data
SELECT F.FilmID, F.Title, B.TotalRevenue
FROM Films F
LEFT JOIN BoxOffice B ON F.FilmID = B.FilmID;

-- 33. High-budget + high-revenue combo
SELECT B.FilmID, F.Title, B.TotalRevenue
FROM BoxOffice B
JOIN Films F ON B.FilmID = F.FilmID
WHERE F.Budget > 150000000 AND B.TotalRevenue > 500000000;

-- 34. Add cascading foreign key
ALTER TABLE BoxOffice
ADD CONSTRAINT fk_bo_films
FOREIGN KEY (FilmID) REFERENCES Films(FilmID)
ON DELETE CASCADE
ON UPDATE CASCADE;

-- 35. Deleting a film cascades its box office data
DELETE FROM Films WHERE FilmID = 110;

-- 36. Highest revenue per year
SELECT * FROM BoxOffice B1
WHERE TotalRevenue = (
  SELECT MAX(TotalRevenue) FROM BoxOffice B2
  WHERE YEAR(B2.ReleaseDate) = YEAR(B1.ReleaseDate)
);

-- 37. Films exceeding average screens
SELECT * FROM BoxOffice
WHERE TotalScreens > (
  SELECT AVG(TotalScreens) FROM BoxOffice
);

-- 38. Loss-making films list
SELECT * FROM BoxOffice
WHERE ProfitOrLoss = 'Loss';

-- 39. Insert auto entries for missing films
INSERT INTO BoxOffice (BoxOfficeID, FilmID, ReleaseDate, OpeningWeekendCollection,
  TotalDomesticCollection, TotalInternationalCollection,
  TotalScreens, CurrencyCode, TotalRevenue, ProfitOrLoss)
SELECT FilmID*10, FilmID, CURRENT_DATE, 0, 0, 0, 0, 'INR', 0, 'Loss'
FROM Films
WHERE FilmID NOT IN (SELECT FilmID FROM BoxOffice);

-- 40. Delete films with no revenue data
DELETE FROM BoxOffice
WHERE TotalRevenue IS NULL OR TotalRevenue = 0;

-- 41. CTE counting films per year
WITH YearlyCounts AS (
  SELECT YEAR(ReleaseDate) AS ReleaseYear, COUNT(*) AS NumFilms
  FROM BoxOffice
  GROUP BY YEAR(ReleaseDate)
)
SELECT * FROM YearlyCounts;

-- 42. Cumulative revenue over time
SELECT ReleaseDate,
  SUM(TotalRevenue) OVER (ORDER BY ReleaseDate) AS CumulativeRevenue
FROM BoxOffice;

-- 43. Films above average revenue
WITH AvgRev AS (
  SELECT AVG(TotalRevenue) AS AvgRevenue FROM BoxOffice
)
SELECT * FROM BoxOffice B
WHERE B.TotalRevenue > (SELECT AvgRevenue FROM AvgRev);

-- 44. Rank films by revenue per year
SELECT FilmID, ReleaseDate, TotalRevenue,
  RANK() OVER (PARTITION BY YEAR(ReleaseDate) ORDER BY TotalRevenue DESC) AS YearlyRank
FROM BoxOffice;

-- 45. Top 3 films per year
SELECT FilmID, ReleaseDate, TotalRevenue
FROM (
  SELECT FilmID, ReleaseDate, TotalRevenue,
    ROW_NUMBER() OVER (PARTITION BY YEAR(ReleaseDate) ORDER BY TotalRevenue DESC) AS RN
  FROM BoxOffice
) t
WHERE RN <= 3;

-- 46. Transaction: update ROI and commit
BEGIN;
UPDATE BoxOffice
SET ROIPercentage = ROUND(
  (TotalRevenue - OpeningWeekendCollection) * 100 / OpeningWeekendCollection, 2
);
COMMIT;

-- 47. Transaction: rollback scenario
BEGIN;
UPDATE BoxOffice
SET TotalScreens = TotalScreens + 100;
ROLLBACK;

-- 48. Delete old data within transaction
BEGIN;
DELETE FROM BoxOffice WHERE ReleaseDate < '2010-01-01';
COMMIT;

-- 49. Locking & updating safely (MySQL syntax)
START TRANSACTION;
SELECT * FROM BoxOffice WHERE BoxOfficeID = 1 FOR UPDATE;
UPDATE BoxOffice SET ProfitOrLoss = 'Profit' WHERE BoxOfficeID = 1;
COMMIT;

-- 50. Savepoint example
BEGIN;
UPDATE BoxOffice SET TotalScreens = TotalScreens + 500 WHERE FilmID = 119;
SAVEPOINT sp1;
UPDATE BoxOffice SET TotalScreens = TotalScreens + 1000 WHERE FilmID = 120;
ROLLBACK TO sp1;
COMMIT;

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

-- 2. Add a column for CallbackDate
ALTER TABLE CastingCalls
  ADD CallbackDate DATE;

-- 3. Rename ContactEmail to EmailContact
ALTER TABLE CastingCalls
  RENAME COLUMN ContactEmail TO EmailContact;

-- 4. Drop the Remarks column
ALTER TABLE CastingCalls
  DROP COLUMN Remarks;

-- 5. Drop the entire table
DROP TABLE CastingCalls;

-- 6. Insert a single record
INSERT INTO CastingCalls
  (CallID, FilmID, RoleTitle, GenderRequired, AgeRange,
   AuditionDate, Location, EmailContact, Status)
VALUES
  (21, 130, 'Supporting Actress', 'Female', '22-28',
   '2024-07-21', 'Jaipur', 'cast@newfilm.com', 'Open');

-- 7. Bulk insert using VALUES clause
INSERT INTO CastingCalls 
VALUES
  (22, 131, 'Lead Actor', 'Male', '27-35', '2024-07-22', 'Delhi', 'lead@cast.com', 'Open'),
  (23, 132, 'Villain', 'Male', '35-45', '2024-07-23', 'Mumbai', 'villain@darkroles.com', 'Open');

-- 8. Update status post-auditions
UPDATE CastingCalls
SET Status = 'Closed'
WHERE AuditionDate < CURRENT_DATE;

-- 9. Extend age range for specific roles
UPDATE CastingCalls
SET AgeRange = '25-40'
WHERE RoleTitle = 'Villain';

-- 10. Delete cancelled casting calls
DELETE FROM CastingCalls
WHERE Status = 'Cancelled';

-- 11. Retrieve all casting calls
SELECT * FROM CastingCalls;

-- 12. Key fields only
SELECT CallID, FilmID, RoleTitle, Status, AuditionDate
FROM CastingCalls;

-- 13. Upcoming auditions
SELECT * FROM CastingCalls
WHERE AuditionDate >= CURRENT_DATE
ORDER BY AuditionDate;

-- 14. Open roles only
SELECT * FROM CastingCalls
WHERE Status = 'Open';

-- 15. Roles requiring females
SELECT RoleTitle, Location
FROM CastingCalls
WHERE GenderRequired = 'Female';

-- 16. Count calls by film
SELECT FilmID, COUNT(*) AS NumCalls
FROM CastingCalls
GROUP BY FilmID;

-- 17. Calls by gender requirement
SELECT GenderRequired, COUNT(*) AS Count
FROM CastingCalls
GROUP BY GenderRequired;

-- 18. Calls by location
SELECT Location, COUNT(*) AS NumAuditions
FROM CastingCalls
GROUP BY Location
HAVING COUNT(*) > 2;

-- 19. Earliest and latest auditions
SELECT MIN(AuditionDate) AS FirstCall,
       MAX(AuditionDate) AS LastCall
FROM CastingCalls;

-- 20. Average age range span (approx)
SELECT AVG(
  (
    CAST(SUBSTRING_INDEX(AgeRange, '-', 1) AS UNSIGNED) +
    CAST(SUBSTRING_INDEX(AgeRange, '-', -1) AS UNSIGNED)
  ) / 2
) AS AvgAgeMidpoint
FROM CastingCalls;


-- 21. Use aliases for clarity
SELECT CallID AS CID, RoleTitle AS Role, Status AS CallStatus
FROM CastingCalls;

-- 22. Tag senior roles
SELECT RoleTitle,
  CASE
    WHEN AgeRange LIKE '4%' THEN 'Senior'
    ELSE 'General'
  END AS Category
FROM CastingCalls;

-- 23. Extract min age
SELECT CallID,
  CAST(SUBSTRING_INDEX(AgeRange, '-', 1) AS UNSIGNED) AS MinAge
FROM CastingCalls;

-- 24. Days to audition
SELECT CallID,
  DATEDIFF(AuditionDate, CURRENT_DATE) AS DaysToAudition
FROM CastingCalls;

-- 25. Email domain extraction
SELECT EmailContact,
  LOWER(SUBSTRING(EmailContact, POSITION('@' IN EmailContact)+1)) AS Domain
FROM CastingCalls;

-- 26. Filter by age range pattern
SELECT *
FROM CastingCalls
WHERE AgeRange LIKE '2%-3%';

-- 27. Upcoming again next week
SELECT *
FROM CastingCalls
WHERE AuditionDate BETWEEN CURRENT_DATE AND DATE_ADD(CURRENT_DATE, INTERVAL 7 DAY);

-- 28. Boolean check for open calls
SELECT CallID, (Status = 'Open') AS IsOpen
FROM CastingCalls;

-- 29. Concatenate role & location
SELECT CONCAT(RoleTitle, ' @ ', Location) AS RoleLoc
FROM CastingCalls;

-- 30. Uppercase role titles
SELECT UPPER(RoleTitle) AS RoleUpper
FROM CastingCalls;

-- 31. Join with Films for title
SELECT C.CallID, C.RoleTitle, F.Title AS FilmTitle
FROM CastingCalls C
JOIN Films F ON C.FilmID = F.FilmID;

-- 32. Show all films and their casting calls
SELECT F.FilmID, F.Title, C.CallID
FROM Films F
LEFT JOIN CastingCalls C ON F.FilmID = C.FilmID;

-- 33. Join for upcoming open roles
SELECT F.Title, C.RoleTitle, C.AuditionDate
FROM CastingCalls C
JOIN Films F ON C.FilmID = F.FilmID
WHERE C.Status = 'Open' AND C.AuditionDate > CURRENT_DATE;

-- 34. Add FK with cascade rules in child table:
ALTER TABLE CastingCalls
ADD CONSTRAINT fk_castings_films
FOREIGN KEY (FilmID)
REFERENCES Films(FilmID)
ON DELETE CASCADE
ON UPDATE CASCADE;  -- Parent deletion cascades child deletion :contentReference[oaicite:8]{index=8}

-- 35. Deleting a film cascades its casting calls
DELETE FROM Films WHERE FilmID = 110;

-- 36. Latest audition per film
SELECT * FROM CastingCalls C1
WHERE AuditionDate = (
  SELECT MAX(AuditionDate)
  FROM CastingCalls C2
  WHERE C2.FilmID = C1.FilmID
);

-- 37. Films with open calls
SELECT DISTINCT FilmID
FROM CastingCalls
WHERE Status = 'Open';

-- 38. Calls with same location as most common audition venue
SELECT * FROM CastingCalls
WHERE Location = (
  SELECT Location
  FROM (
    SELECT Location, COUNT(*) AS cnt
    FROM CastingCalls
    GROUP BY Location
    ORDER BY cnt DESC
    LIMIT 1
  ) t
);

-- 39. Insert placeholder call for films missing any
INSERT INTO CastingCalls
( CallID, FilmID, RoleTitle, GenderRequired, AgeRange, AuditionDate, Location, EmailContact, Status)
SELECT FilmID*100+1, FilmID, 'To be decided', 'Any', '18-60',
  CURRENT_DATE, 'TBD', 'contact@hold.com', 'Pending'
FROM Films
WHERE FilmID NOT IN (SELECT DISTINCT FilmID FROM CastingCalls);

-- 40. Delete expired calls
DELETE FROM CastingCalls
WHERE AuditionDate < CURRENT_DATE
  AND Status = 'Closed';

-- 41. CTE: number of calls per gender
WITH GenderCounts AS (
  SELECT GenderRequired, COUNT(*) AS NumCalls
  FROM CastingCalls
  GROUP BY GenderRequired
)
SELECT * FROM GenderCounts;

-- 42. Cumulative calls by date
SELECT AuditionDate,
  COUNT(*) OVER (ORDER BY AuditionDate) AS CumulativeCalls
FROM CastingCalls;

-- 43. Calls on late schedule (after average AuditionDate)
WITH AvgDate AS (
  SELECT AVG(DATEDIFF(AuditionDate, '2000-01-01')) AS AvgOffset
  FROM CastingCalls
)
SELECT * FROM CastingCalls C
WHERE DATEDIFF(C.AuditionDate, '2000-01-01') > (SELECT AvgOffset FROM AvgDate);

-- 44. Rank roles by number of auditions per film
SELECT CallID, FilmID, RoleTitle,
  ROW_NUMBER() OVER (PARTITION BY FilmID ORDER BY AuditionDate ASC) AS RoleSeq
FROM CastingCalls;

-- 45. Rank locations by frequency
SELECT Location,
  RANK() OVER (ORDER BY COUNT(*) DESC) AS LocationRank
FROM CastingCalls
GROUP BY Location;

-- 46. Transaction to update statuses safely
BEGIN;
UPDATE CastingCalls
SET Status = 'Closed'
WHERE AuditionDate <= CURRENT_DATE;
COMMIT;

-- 47. Simulated failure rollback
BEGIN;
UPDATE CastingCalls SET Status = 'Error' WHERE CallID = -1;
ROLLBACK;

-- 48. Delete old records within a transaction
BEGIN;
DELETE FROM CastingCalls WHERE AuditionDate < '2023-01-01';
COMMIT;

-- 49. Locking a record for update (MySQL style)
START TRANSACTION;
SELECT * FROM CastingCalls WHERE CallID = 1 FOR UPDATE;
UPDATE CastingCalls SET Status = 'Locked' WHERE CallID = 1;
COMMIT;

-- 50. Savepoint example
BEGIN;
UPDATE CastingCalls SET Status = 'Review' WHERE FilmID = 110;
SAVEPOINT sp1;
UPDATE CastingCalls SET Status = 'Final' WHERE FilmID = 111;
ROLLBACK TO sp1;
COMMIT;

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

-- 1. Create DistributionPartners table
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

-- 2. Add a column for ContractStatus
ALTER TABLE DistributionPartners
ADD ContractStatus VARCHAR(20);

-- 3. Rename ContactPerson to RepName
ALTER TABLE DistributionPartners
RENAME COLUMN ContactPerson TO RepName;

-- 4. Drop the PhoneNumber column
ALTER TABLE DistributionPartners
DROP COLUMN PhoneNumber;

-- 5. Drop the entire table
DROP TABLE DistributionPartners;

-- 6. Insert a single partner record
INSERT INTO DistributionPartners
  (PartnerID, PartnerName, Country, RepName, Email, ContractStart, ContractEnd, NumberOfScreens, RevenueSharePercent)
VALUES
  (21, 'Global Films', 'USA', 'Jennifer Lee',
   'jennifer@globalfilms.com', '2023-01-01', '2028-01-01', 600, 22.50);

-- 7. Bulk insert multiple records
INSERT INTO DistributionPartners
  
VALUES
  (22, 'Cinema World', 'UK', 'Oliver King', 'oliver@cw.uk', '2022-05-01','2027-05-01', 450, 21.00),
  (23, 'MovieMax', 'Canada', 'Sophie Clarke', 'sophie@moviemax.ca', '2021-09-01','2026-09-01', 300, 20.75);

-- 8. Update revenue share for a partner
UPDATE DistributionPartners
SET RevenueSharePercent = RevenueSharePercent + 1.0
WHERE PartnerName = 'PVR Cinemas';

-- 9. Mark contracts ending within 6 months as "Expiring"
UPDATE DistributionPartners
SET ContractStatus = 'Expiring'
WHERE ContractEnd < DATE_ADD(CURDATE(), INTERVAL 6 MONTH);

-- 10. Delete expired contracts
DELETE FROM DistributionPartners
WHERE ContractEnd < CURDATE();

-- 11. Retrieve all partners
SELECT * FROM DistributionPartners;

-- 12. Key details only
SELECT PartnerName, Country, NumberOfScreens, RevenueSharePercent
FROM DistributionPartners;

-- 13. Partners with >800 screens
SELECT PartnerName, NumberOfScreens
FROM DistributionPartners
WHERE NumberOfScreens > 800;

-- 14. Indian partners only
SELECT * FROM DistributionPartners
WHERE Country = 'India';

-- 15. Contracts active this year
SELECT * FROM DistributionPartners
WHERE ContractStart <= CURDATE()
  AND ContractEnd >= CURDATE();

-- 16. Top 5 partners by screens
SELECT PartnerName, NumberOfScreens
FROM DistributionPartners
ORDER BY NumberOfScreens DESC
LIMIT 5;

-- 17. Count by country
SELECT Country, COUNT(*) AS PartnerCount
FROM DistributionPartners
GROUP BY Country;

-- 18. Average screens per partner
SELECT ROUND(AVG(NumberOfScreens),0) AS AvgScreens
FROM DistributionPartners;

-- 19. Max revenue share
SELECT MAX(RevenueSharePercent) AS MaxShare
FROM DistributionPartners;

-- 20. Min contract duration (days)
SELECT MIN(DATEDIFF(ContractEnd, ContractStart)) AS MinDuration
FROM DistributionPartners;

-- 21. Use aliases
SELECT PartnerID AS PID, PartnerName AS Name, RevenueSharePercent AS Share
FROM DistributionPartners;

-- 22. Categorize partners by size
SELECT PartnerName,
  CASE
    WHEN NumberOfScreens >= 1000 THEN 'Large'
    WHEN NumberOfScreens >= 600 THEN 'Medium'
    ELSE 'Small'
  END AS SizeCategory
FROM DistributionPartners;

-- 23. Email domain extraction
SELECT Email,
  SUBSTRING_INDEX(Email, '@', -1) AS Domain
FROM DistributionPartners;

-- 24. Days until contract ends
SELECT PartnerName,
  DATEDIFF(ContractEnd, CURDATE()) AS DaysToEnd
FROM DistributionPartners;

-- 25. Filter by suffix
SELECT * FROM DistributionPartners
WHERE Email LIKE '%@pvr.in';

-- 26. Uppercase partner names
SELECT UPPER(PartnerName) AS UpperName
FROM DistributionPartners;

-- 27. Screens per share percentage
SELECT PartnerName,
  ROUND(NumberOfScreens / RevenueSharePercent,2) AS ScreensPerPercent
FROM DistributionPartners;

-- 28. Validate revenue share threshold
SELECT PartnerName,
  (RevenueSharePercent > 20) AS HighShare
FROM DistributionPartners;

-- 29. Contract length in years
SELECT PartnerName,
  ROUND(DATEDIFF(ContractEnd, ContractStart) / 365,2) AS ContractYears
FROM DistributionPartners;

-- 30. Partners with prefix "Cine"
SELECT * FROM DistributionPartners
WHERE PartnerName LIKE 'Cine%';

-- 31. Join to show partner and film
SELECT DP.PartnerName, F.Title, DP.NumberOfScreens
FROM DistributionPartners DP
JOIN Films F ON DP.PartnerID = F.FilmID;

-- 32. Left join to list all partners with films, if any
SELECT DP.PartnerName, F.Title
FROM DistributionPartners DP
LEFT JOIN Films F ON DP.PartnerID = F.FilmID;

-- 33. Filter by partner-film high screens
SELECT DP.PartnerName, F.Title, DP.NumberOfScreens
FROM DistributionPartners DP
JOIN Films F ON DP.PartnerID = F.FilmID
WHERE DP.NumberOfScreens > 800;

-- 34. Add foreign key with cascading deletes/updates
ALTER TABLE DistributionPartners
ADD CONSTRAINT fk_dp_films
FOREIGN KEY (PartnerID) REFERENCES Films(FilmID)
ON DELETE CASCADE
ON UPDATE CASCADE;  -- cascade behavior explained below :contentReference[oaicite:1]{index=1}

-- 35. Deleting a film will auto-delete its partner record
DELETE FROM Films WHERE FilmID = 1;

-- 36. Find partners with above-average screens
SELECT * FROM DistributionPartners
WHERE NumberOfScreens > (
  SELECT AVG(NumberOfScreens) FROM DistributionPartners
);

-- 37. Email domains used by top partners
SELECT DISTINCT SUBSTRING_INDEX(Email,'@',-1) AS Domain
FROM DistributionPartners
WHERE NumberOfScreens > 800;

-- 38. Partners with longest contract
SELECT * FROM DistributionPartners
WHERE DATEDIFF(ContractEnd, ContractStart) = (
  SELECT MAX(DATEDIFF(ContractEnd, ContractStart))
  FROM DistributionPartners
);

-- 39. Add placeholder partner for films missing distribution
INSERT INTO DistributionPartners
  (PartnerID, PartnerName, Country, RepName, Email, ContractStart, ContractEnd, NumberOfScreens, RevenueSharePercent)
SELECT FilmID+100, CONCAT('AutoDist_', FilmID), 'N/A', 'System',
       'auto@dist.com', CURDATE(), DATE_ADD(CURDATE(), INTERVAL 1 YEAR), 0, 0.0
FROM Films
WHERE FilmID NOT IN (SELECT PartnerID FROM DistributionPartners);

-- 40. Delete low-screen partners
DELETE FROM DistributionPartners
WHERE NumberOfScreens < 300;

-- 41. Count of partners by country
WITH CountryCounts AS (
  SELECT Country, COUNT(*) AS CountPartners
  FROM DistributionPartners
  GROUP BY Country
)
SELECT * FROM CountryCounts;

-- 42. Cumulative screens by contract start
SELECT ContractStart,
  SUM(NumberOfScreens) OVER (ORDER BY ContractStart) AS CumulativeScreens
FROM DistributionPartners;

-- 43. Partners with above-average  screens
WITH AvgScreens AS (
  SELECT AVG(NumberOfScreens) AS AvgVal FROM DistributionPartners
)
SELECT * FROM DistributionPartners DP
WHERE DP.NumberOfScreens > (SELECT AvgVal FROM AvgScreens);

-- 44. Rank partners by revenue share
SELECT PartnerName, RevenueSharePercent,
  RANK() OVER (ORDER BY RevenueSharePercent DESC) AS ShareRank
FROM DistributionPartners;

-- 45. Top 3 partners by screens
SELECT PartnerName, NumberOfScreens
FROM (
  SELECT PartnerName, NumberOfScreens,
    ROW_NUMBER() OVER (ORDER BY NumberOfScreens DESC) AS RN
  FROM DistributionPartners
) t
WHERE RN <= 3;

-- 46. Transaction to update status
BEGIN;
UPDATE DistributionPartners
SET ContractStatus = 'Reviewed'
WHERE ContractEnd > CURDATE();
COMMIT;

-- 47. Simulate failure rollback
BEGIN;
UPDATE DistributionPartners SET ContractStatus = 'Error' WHERE PartnerID = -1;
ROLLBACK;

-- 48. Bulk delete old contracts
BEGIN;
DELETE FROM DistributionPartners WHERE ContractEnd < '2022-01-01';
COMMIT;

-- 49. Lock row, update safely
START TRANSACTION;
SELECT * FROM DistributionPartners WHERE PartnerID = 1 FOR UPDATE;
UPDATE DistributionPartners SET RevenueSharePercent = 21.00 WHERE PartnerID = 1;
COMMIT;

-- 50. Savepoint example
BEGIN;
UPDATE DistributionPartners SET NumberOfScreens = NumberOfScreens + 100 WHERE PartnerID = 2;
SAVEPOINT sp1;
UPDATE DistributionPartners SET NumberOfScreens = NumberOfScreens + 50 WHERE PartnerID = 3;
ROLLBACK TO sp1;
COMMIT;


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

-- 1. Create table
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

-- 2. Add a column for RenewalStatus
ALTER TABLE CensorshipCertificates
ADD RenewalStatus VARCHAR(20);

-- 3. Rename CertificateType to CertType
ALTER TABLE CensorshipCertificates
RENAME COLUMN CertificateType TO CertType;

-- 4. Drop the Remarks column
ALTER TABLE CensorshipCertificates
DROP COLUMN Remarks;

-- 5. Drop the table
DROP TABLE CensorshipCertificates;

-- 6. Insert one certificate
INSERT INTO CensorshipCertificates
  (CertificateID, FilmID, CertType, IssuingCountry, IssueDate, ValidUntil, CensorBoard, Language, CertificateNumber)
VALUES
  (21, 130, 'UA', 'India', '2024-01-01', '2034-01-01', 'CBFC Mumbai', 'Hindi', 'CBFC-HI-2024-001');

-- 7. Bulk insert multiple records
INSERT INTO CensorshipCertificates 
VALUES
  (22, 131, 'U', 'India', '2023-06-15', '2033-06-15','CBFC Delhi','English','CBFC-EN-2023-002'),
  (23, 132, 'A', 'India', '2022-07-20', '2032-07-20','CBFC Chennai','Tamil','CBFC-TA-2022-003');

-- 8. Update CertType for older films
UPDATE CensorshipCertificates
SET CertType = 'U'
WHERE IssueDate < '2010-01-01';

-- 9. Mark renewal status for soon-to-expire certificates
UPDATE CensorshipCertificates
SET RenewalStatus = 'Renew'
WHERE ValidUntil < DATE_ADD(CURDATE(), INTERVAL 6 MONTH);

-- 10. Delete expired certificates
DELETE FROM CensorshipCertificates
WHERE ValidUntil < CURDATE();

-- 11. Select all certificates
SELECT * FROM CensorshipCertificates;

-- 12. Core fields only
SELECT FilmID, CertType, IssueDate, ValidUntil
FROM CensorshipCertificates;

-- 13. Active certificates only
SELECT * FROM CensorshipCertificates
WHERE ValidUntil >= CURDATE();

-- 14. Type 'U' certificates
SELECT * FROM CensorshipCertificates
WHERE CertType = 'U';

-- 15. English-language certificates
SELECT * FROM CensorshipCertificates
WHERE Language = 'English';

-- 16. Soon-to-expire certificates
SELECT * FROM CensorshipCertificates
WHERE ValidUntil BETWEEN CURDATE() AND DATE_ADD(CURDATE(), INTERVAL 1 YEAR)
ORDER BY ValidUntil;

-- 17. Count by certificate type
SELECT CertType, COUNT(*) AS Count
FROM CensorshipCertificates
GROUP BY CertType;

-- 18. Count by country
SELECT IssuingCountry, COUNT(*) AS Count
FROM CensorshipCertificates
GROUP BY IssuingCountry;

-- 19. Earliest and latest issue dates
SELECT MIN(IssueDate) AS Earliest, MAX(IssueDate) AS Latest
FROM CensorshipCertificates;

-- 20. Average certificate validity (days)
SELECT ROUND(AVG(DATEDIFF(ValidUntil, IssueDate))) AS AvgValidity
FROM CensorshipCertificates;

-- 21. Aliases for readability
SELECT CertificateID AS CID, FilmID, CertType AS Type
FROM CensorshipCertificates;

-- 22. Categorize validity span
SELECT CertificateID,
  CASE
    WHEN DATEDIFF(ValidUntil, IssueDate) >= 3650 THEN '10+ yrs'
    ELSE '<10 yrs'
  END AS ValiditySpan
FROM CensorshipCertificates;

-- 23. Days left until expiration
SELECT CertificateID,
  DATEDIFF(ValidUntil, CURDATE()) AS DaysLeft
FROM CensorshipCertificates;

-- 24. Domain extraction from cert number
SELECT CertificateNumber,
  SUBSTRING_INDEX(CertificateNumber, '-', 2) AS Prefix
FROM CensorshipCertificates;

-- 25. Filter by board name
SELECT * FROM CensorshipCertificates
WHERE CensorBoard LIKE '%Mumbai%';

-- 26. Uppercase language
SELECT DISTINCT UPPER(Language) AS Lang
FROM CensorshipCertificates;

-- 27. Language count
SELECT Language, COUNT(*) AS NumCerts
FROM CensorshipCertificates
GROUP BY Language
HAVING COUNT(*) > 2;

-- 28. Renewal needed boolean
SELECT CertificateID,
  (ValidUntil < DATE_ADD(CURDATE(), INTERVAL 6 MONTH)) AS NeedsRenewal
FROM CensorshipCertificates;

-- 29. Year label for issue date
SELECT CertificateID,
  CONCAT('Issued-', YEAR(IssueDate)) AS IssuedYear
FROM CensorshipCertificates;

-- 30. Filter on certificate pattern
SELECT * FROM CensorshipCertificates
WHERE CertificateNumber LIKE 'CBFC-%-2022-%';

-- 31. Join to get film title
SELECT C.FilmID, F.Title, C.CertType
FROM CensorshipCertificates C
JOIN Films F ON C.FilmID = F.FilmID;

-- 32. List all films and any certificates
SELECT F.FilmID, F.Title, C.CertificateID
FROM Films F
LEFT JOIN CensorshipCertificates C ON F.FilmID = C.FilmID;

-- 33. Filter for 'UA' certified films
SELECT F.Title, C.IssueDate
FROM CensorshipCertificates C
JOIN Films F ON C.FilmID = F.FilmID
WHERE C.CertType = 'UA';

-- 34. Add FK with cascading behavior
ALTER TABLE CensorshipCertificates
ADD CONSTRAINT fk_cert_films
FOREIGN KEY (FilmID) REFERENCES Films(FilmID)
ON DELETE CASCADE
ON UPDATE CASCADE;  -- cascade semantics explained below :contentReference[oaicite:1]{index=1}

-- 35. Deleting a film auto-deletes its certificates
DELETE FROM Films WHERE FilmID = 110;

-- 36. Recently issued last year
SELECT * FROM CensorshipCertificates C
WHERE C.IssueDate = (
  SELECT MAX(IssueDate) FROM CensorshipCertificates WHERE FilmID = C.FilmID
);

-- 37. Certificates from majority board
SELECT * FROM CensorshipCertificates
WHERE CensorBoard = (
  SELECT CensorBoard
  FROM CensorshipCertificates
  GROUP BY CensorBoard
  ORDER BY COUNT(*) DESC
  LIMIT 1
);

-- 38. Films needing renewal
SELECT FilmID, CertificateNumber
FROM CensorshipCertificates
WHERE ValidUntil < DATE_ADD(CURDATE(), INTERVAL 6 MONTH);

-- 39. Insert missing certificates for films
INSERT INTO CensorshipCertificates
SELECT FilmID*10, FilmID, 'U', 'India', CURDATE(), DATE_ADD(CURDATE(), INTERVAL 10 YEAR),
       'CBFC Delhi', 'English', CONCAT('CBFC-EN-',FilmID*10)
FROM Films
WHERE FilmID NOT IN (SELECT FilmID FROM CensorshipCertificates);

-- 40. Delete long-expired rows
DELETE FROM CensorshipCertificates
WHERE ValidUntil < DATE_SUB(CURDATE(), INTERVAL 1 YEAR);

-- 41. Count by board via CTE
WITH BoardCounts AS (
  SELECT CensorBoard, COUNT(*) AS CountCerts
  FROM CensorshipCertificates
  GROUP BY CensorBoard
)
SELECT * FROM BoardCounts;

-- 42. Cumulative count by issue date
SELECT IssueDate,
  COUNT(*) OVER (ORDER BY IssueDate) AS CumCount
FROM CensorshipCertificates;

-- 43. Certs issued after average date
WITH AvgDate AS (
  SELECT AVG(DATEDIFF(IssueDate,'2000-01-01')) AS AvgOffset
  FROM CensorshipCertificates
)
SELECT * FROM CensorshipCertificates C
WHERE DATEDIFF(C.IssueDate,'2000-01-01') > (SELECT AvgOffset FROM AvgDate);

-- 44. Rank by validity period
SELECT CertificateID, ValidUntil,
  RANK() OVER (ORDER BY DATEDIFF(ValidUntil, IssueDate) DESC) AS ValidRank
FROM CensorshipCertificates;

-- 45. Top 3 longest-valid certificates
SELECT CertificateID, FilmID, ValidUntil
FROM (
  SELECT CertificateID, FilmID, ValidUntil,
    ROW_NUMBER() OVER (ORDER BY DATEDIFF(ValidUntil, IssueDate) DESC) AS RN
  FROM CensorshipCertificates
) t
WHERE RN <= 3;

-- 46. Mark renewals in transaction
BEGIN;
UPDATE CensorshipCertificates
SET RenewalStatus = 'Renew'
WHERE ValidUntil < DATE_ADD(CURDATE(), INTERVAL 6 MONTH);
COMMIT;

-- 47. Transaction with rollback
BEGIN;
UPDATE CensorshipCertificates SET RenewalStatus = 'Test' WHERE CertificateID = -1;
ROLLBACK;

-- 48. Delete old certs in transaction
BEGIN;
DELETE FROM CensorshipCertificates WHERE ValidUntil < '2010-01-01';
COMMIT;

-- 49. Lock a row for safe update
START TRANSACTION;
SELECT * FROM CensorshipCertificates WHERE CertificateID = 1 FOR UPDATE;
UPDATE CensorshipCertificates SET RenewalStatus = 'Locked' WHERE CertificateID = 1;
COMMIT;

-- 50. Savepoint example
BEGIN;
UPDATE CensorshipCertificates SET RenewalStatus = 'Stage1' WHERE CertificateID = 2;
SAVEPOINT sp1;
UPDATE CensorshipCertificates SET RenewalStatus = 'Stage2' WHERE CertificateID = 3;
ROLLBACK TO sp1;
COMMIT;


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

-- 1. Create the table
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

-- 2. Add a column for RenewalNotice
ALTER TABLE StreamingRights
ADD RenewalNotice DATE;

-- 3. Rename PlatformName to Platform
ALTER TABLE StreamingRights
RENAME COLUMN PlatformName TO Platform;

-- 4. Drop the RenewalNotice column
ALTER TABLE StreamingRights
DROP COLUMN RenewalNotice;

-- 5. Drop the table entirely
DROP TABLE StreamingRights;

-- 6. Insert one record
INSERT INTO StreamingRights
  (RightID, FilmID, Platform, Country, Language, StartDate, EndDate, AmountPaid, LicenseType, IsExclusive)
VALUES
  (21, 130, 'Disney+Hotstar', 'India', 'Hindi', '2024-01-01', '2028-01-01', 200000000.00, 'SVOD', TRUE);

-- 7. Bulk insert
INSERT INTO StreamingRights
VALUES
  (22, 131, 'Netflix', 'India', 'English', '2023-03-01','2027-03-01',180000000.00,'SVOD',TRUE),
  (23, 132, 'Amazon Prime Video', 'India', 'Tamil', '2022-05-01','2026-05-01',160000000.00,'SVOD',FALSE);

-- 8. Change license type
UPDATE StreamingRights
SET LicenseType = 'AVOD'
WHERE AmountPaid < 100000000;

-- 9. Mark exclusive rights
UPDATE StreamingRights
SET IsExclusive = TRUE
WHERE Platform = 'JioCinema' AND StartDate >= '2024-01-01';

-- 10. Delete expired rights
DELETE FROM StreamingRights
WHERE EndDate < CURDATE();

-- 11. List all records
SELECT * FROM StreamingRights;

-- 12. Fetch key columns
SELECT FilmID, Platform, AmountPaid, IsExclusive
FROM StreamingRights;

-- 13. High-value rights (>150M)
SELECT * FROM StreamingRights
WHERE AmountPaid > 150000000;

-- 14. Exclusive streaming contracts
SELECT * FROM StreamingRights
WHERE IsExclusive = TRUE;

-- 15. Hindi language rights
SELECT * FROM StreamingRights
WHERE Language = 'Hindi';

-- 16. Rights ending soon (within 6 months)
SELECT * FROM StreamingRights
WHERE EndDate BETWEEN CURDATE() AND DATE_ADD(CURDATE(), INTERVAL 6 MONTH);

-- 17. Count rights by platform
SELECT Platform, COUNT(*) AS CountRights
FROM StreamingRights
GROUP BY Platform;

-- 18. Average amount paid
SELECT ROUND(AVG(AmountPaid),2) AS AvgPaid
FROM StreamingRights;

-- 19. Max payment
SELECT MAX(AmountPaid) AS MaxPaid
FROM StreamingRights;

-- 20. Total payments per country
SELECT Country, SUM(AmountPaid) AS TotalPaid
FROM StreamingRights
GROUP BY Country;

-- 21. Use aliases
SELECT FilmID AS FID, Platform AS PF, AmountPaid AS Paid
FROM StreamingRights;

-- 22. Tier pricing
SELECT FilmID,
  CASE
    WHEN AmountPaid >= 180000000 THEN 'Top Tier'
    WHEN AmountPaid >= 120000000 THEN 'Mid Tier'
    ELSE 'Low Tier'
  END AS PriceTier
FROM StreamingRights;

-- 23. Term length in years
SELECT FilmID,
  ROUND(DATEDIFF(EndDate, StartDate)/365, 2) AS TermYears
FROM StreamingRights;

-- 24. Days until end
SELECT RightID,
  DATEDIFF(EndDate, CURDATE()) AS DaysLeft
FROM StreamingRights;

-- 25. Platform uppercase
SELECT DISTINCT UPPER(Platform) AS PlatformUP
FROM StreamingRights;

-- 26. Filter for Tamil content
SELECT * FROM StreamingRights
WHERE Language = 'Tamil';

-- 27. Payments per day of term
SELECT RightID,
  ROUND(AmountPaid / NULLIF(DATEDIFF(EndDate, StartDate),0),2) AS PaidPerDay
FROM StreamingRights;

-- 28. Exclusive flag
SELECT RightID, (IsExclusive = TRUE) AS IsExcl
FROM StreamingRights;

-- 29. Country + license label
SELECT RightID,
  CONCAT(Country, '(', LicenseType,')') AS CountryType
FROM StreamingRights;

-- 30. Filter platforms starting with 'A'
SELECT * FROM StreamingRights
WHERE Platform LIKE 'A%';

-- 31. Join Films to get title
SELECT S.FilmID, F.Title, S.Platform, S.AmountPaid
FROM StreamingRights S
JOIN Films F ON S.FilmID = F.FilmID;

-- 32. List all films and streaming rights flags
SELECT F.FilmID, F.Title, S.RightID
FROM Films F
LEFT JOIN StreamingRights S ON F.FilmID = S.FilmID;

-- 33. Top-paying streaming deals
SELECT S.FilmID, F.Title, S.AmountPaid
FROM StreamingRights S
JOIN Films F ON S.FilmID = F.FilmID
WHERE S.AmountPaid > 150000000;

-- 34. Add FK constraint with cascade
ALTER TABLE StreamingRights
ADD CONSTRAINT fk_sr_films
FOREIGN KEY (FilmID) REFERENCES Films(FilmID)
ON DELETE CASCADE
ON UPDATE CASCADE;

-- 35. Deleting a film cascades rights removal
DELETE FROM Films WHERE FilmID = 110;

-- 36. Highest payment per platform
SELECT * FROM StreamingRights S1
WHERE AmountPaid = (
  SELECT MAX(AmountPaid)
  FROM StreamingRights S2
  WHERE S2.Platform = S1.Platform
);

-- 37. Deals paying above average per license type
SELECT * FROM StreamingRights
WHERE AmountPaid > (
  SELECT AVG(AmountPaid)
  FROM StreamingRights
  WHERE LicenseType = StreamingRights.LicenseType
);

-- 38. Platforms with exclusive rights
SELECT DISTINCT Platform
FROM StreamingRights
WHERE IsExclusive = TRUE;

-- 39. Insert missing rights for uncaptured films
INSERT INTO StreamingRights 
SELECT FilmID*10, FilmID, 'NewPlatform', 'India', 'Hindi',
  CURDATE(), DATE_ADD(CURDATE(), INTERVAL 3 YEAR),
  50000000.00, 'SVOD', FALSE
FROM Films
WHERE FilmID NOT IN (SELECT FilmID FROM StreamingRights);

-- 40. Cleanup short-term/random deals
DELETE FROM StreamingRights
WHERE DATEDIFF(EndDate, StartDate) < 365 AND AmountPaid < 50000000;

-- 41. Count rights by platform
WITH PlatformCounts AS (
  SELECT Platform, COUNT(*) AS RightsCount
  FROM StreamingRights
  GROUP BY Platform
)
SELECT * FROM PlatformCounts;

-- 42. Cumulative payments by start date
SELECT StartDate,
  SUM(AmountPaid) OVER (ORDER BY StartDate) AS CumulativePaid
FROM StreamingRights;

-- 43. Exclusive deals above average
WITH AvgExclusive AS (
  SELECT AVG(AmountPaid) AS AvgAmt
  FROM StreamingRights WHERE IsExclusive = TRUE
)
SELECT * FROM StreamingRights S
WHERE IsExclusive = TRUE AND S.AmountPaid > (SELECT AvgAmt FROM AvgExclusive);

-- 44. Rank platforms by total payment
SELECT Platform,
  RANK() OVER (ORDER BY SUM(AmountPaid) DESC) AS PlatformRank,
  SUM(AmountPaid) AS TotalAmt
FROM StreamingRights
GROUP BY Platform;

-- 45. Top 2 deals per platform
SELECT * FROM (
  SELECT *,
    ROW_NUMBER() OVER (PARTITION BY Platform ORDER BY AmountPaid DESC) AS RN
  FROM StreamingRights
) t WHERE RN <= 2;

-- 46. Transaction: apply discount and commit
BEGIN;
UPDATE StreamingRights
SET AmountPaid = AmountPaid * 0.95
WHERE Platform = 'Netflix';
COMMIT;

-- 47. Simulated failure: rollback
BEGIN;
UPDATE StreamingRights
SET AmountPaid = AmountPaid + 1 WHERE RightID = -1;
ROLLBACK;

-- 48. Bulk delete within transaction
BEGIN;
DELETE FROM StreamingRights
WHERE EndDate < '2020-01-01';
COMMIT;

-- 49. Lock row for safe update
START TRANSACTION;
SELECT * FROM StreamingRights WHERE RightID = 1 FOR UPDATE;
UPDATE StreamingRights SET IsExclusive = FALSE WHERE RightID = 1;
COMMIT;

-- 50. Savepoint usage
BEGIN;
UPDATE StreamingRights SET AmountPaid = AmountPaid + 5000000 WHERE Platform = 'ZEE5';
SAVEPOINT sp1;
UPDATE StreamingRights SET AmountPaid = AmountPaid + 5000000 WHERE Platform = 'JioCinema';
ROLLBACK TO sp1;
COMMIT;


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

-- 1. Create SponsorshipDeals table
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

-- 2. Add column for ContractSigned flag
ALTER TABLE SponsorshipDeals
ADD ContractSigned BOOLEAN;

-- 3. Rename ContactEmail to EmailContact
ALTER TABLE SponsorshipDeals
RENAME COLUMN ContactEmail TO EmailContact;

-- 4. Drop the Benefits column
ALTER TABLE SponsorshipDeals
DROP COLUMN Benefits;

-- 5. Drop entire table
DROP TABLE SponsorshipDeals;

-- 6. Insert a new deal
INSERT INTO SponsorshipDeals
  (DealID, FilmID, SponsorName, SponsorType, Amount, StartDate, EndDate, DealStatus, EmailContact)
VALUES
  (21, 130, 'Google India', 'Tech', 15000000.00, '2023-01-01', '2024-01-01', 'Active', 'ads@google.in');

-- 7. Batch insert deals
INSERT INTO SponsorshipDeals 
VALUES
  (22, 131, 'Intel India', 'Tech', 12000000.00, '2022-06-01', '2023-06-01', 'Completed', 'intel@ads.in'),
  (23, 132, 'McDonald’s India', 'FMCG', 8000000.00, '2022-09-01', '2023-09-01', 'Completed', 'mcd@promo.in');

-- 8. Update amount for a sponsorship
UPDATE SponsorshipDeals
SET Amount = Amount * 1.10
WHERE SponsorName = 'Pepsi India';

-- 9. Mark expired deals as Completed
UPDATE SponsorshipDeals
SET DealStatus = 'Completed'
WHERE EndDate < CURDATE();

-- 10. Delete canceled deals
DELETE FROM SponsorshipDeals
WHERE DealStatus = 'Canceled';

-- 11. Select all sponsorship deals
SELECT * FROM SponsorshipDeals;

-- 12. Key columns only
SELECT DealID, SponsorName, Amount, DealStatus
FROM SponsorshipDeals;

-- 13. High-value deals (>10M)
SELECT * FROM SponsorshipDeals
WHERE Amount > 10000000;

-- 14. Active deals
SELECT * FROM SponsorshipDeals
WHERE DealStatus = 'Active';

-- 15. Deals ending this year
SELECT * FROM SponsorshipDeals
WHERE YEAR(EndDate) = YEAR(CURDATE());

-- 16. Top 5 sponsors by amount
SELECT SponsorName, Amount
FROM SponsorshipDeals
ORDER BY Amount DESC
LIMIT 5;

-- 17. Count deals per sponsor type
SELECT SponsorType, COUNT(*) AS NumDeals
FROM SponsorshipDeals
GROUP BY SponsorType;

-- 18. Average amount by status
SELECT DealStatus, ROUND(AVG(Amount),2) AS AvgAmount
FROM SponsorshipDeals
GROUP BY DealStatus;

-- 19. Max and Min deal value
SELECT MAX(Amount) AS MaxDeal, MIN(Amount) AS MinDeal
FROM SponsorshipDeals;

-- 20. Number of ongoing deals
SELECT COUNT(*) AS OngoingDeals
FROM SponsorshipDeals
WHERE DealStatus = 'Active';

-- 21. Use of aliases
SELECT DealID AS DID, SponsorName AS Sponsor, Amount AS DealValue
FROM SponsorshipDeals;

-- 22. Deal size classification using CASE
SELECT DealID,
  CASE
    WHEN Amount >= 10000000 THEN 'Premium'
    WHEN Amount >= 5000000 THEN 'Mid'
    ELSE 'Standard'
  END AS DealTier
FROM SponsorshipDeals;

-- 23. Duration of deal in days
SELECT DealID,
  DATEDIFF(EndDate, StartDate) AS DurationDays
FROM SponsorshipDeals;

-- 24. Days remaining until deal ends
SELECT DealID,
  DATEDIFF(EndDate, CURDATE()) AS DaysLeft
FROM SponsorshipDeals;

-- 25. Email domain extraction
SELECT EmailContact,
  SUBSTRING_INDEX(EmailContact, '@', -1) AS Domain
FROM SponsorshipDeals;

-- 26. Filter sponsor names starting with 'A'
SELECT * FROM SponsorshipDeals
WHERE SponsorName LIKE 'A%';

-- 27. Boolean flag for deals >=10M
SELECT DealID,
  (Amount >= 10000000) AS IsMajorDeal
FROM SponsorshipDeals;

-- 28. Concatenated sponsor and type
SELECT
  CONCAT(SponsorName, ' (', SponsorType, ')') AS SponsorInfo
FROM SponsorshipDeals;

-- 29. Year label for StartDate
SELECT DealID,
  CONCAT('Start-', YEAR(StartDate)) AS YearLabel
FROM SponsorshipDeals;

-- 30. Extract sponsor type in uppercase
SELECT DISTINCT UPPER(SponsorType) AS TypeUpper
FROM SponsorshipDeals;

-- 31. Join with Films to retrieve film titles
SELECT S.DealID, F.Title, S.SponsorName, S.Amount
FROM SponsorshipDeals S
JOIN Films F ON S.FilmID = F.FilmID;

-- 32. List all films with their deals (if any)
SELECT F.FilmID, F.Title, S.DealID
FROM Films F
LEFT JOIN SponsorshipDeals S ON F.FilmID = S.FilmID;

-- 33. High-value active deals showing film info
SELECT S.DealID, F.Title, S.Amount
FROM SponsorshipDeals S
JOIN Films F ON S.FilmID = F.FilmID
WHERE S.Amount > 8000000 AND S.DealStatus = 'Active';

-- 34. Add FK constraint with ON DELETE CASCADE
ALTER TABLE SponsorshipDeals
ADD CONSTRAINT fk_sd_films
FOREIGN KEY (FilmID) REFERENCES Films(FilmID)
ON DELETE CASCADE
ON UPDATE CASCADE;

-- 35. Deleting a film cascades associated deals
DELETE FROM Films WHERE FilmID = 110;

-- 36. Largest deal per sponsor type
SELECT * FROM SponsorshipDeals SD1
WHERE Amount = (
  SELECT MAX(Amount) FROM SponsorshipDeals SD2
  WHERE SD2.SponsorType = SD1.SponsorType
);

-- 37. Sponsors with above-average amount
SELECT * FROM SponsorshipDeals
WHERE Amount > (SELECT AVG(Amount) FROM SponsorshipDeals);

-- 38. Sponsors active in 2023 only
SELECT SponsorName
FROM SponsorshipDeals
WHERE StartDate <= '2023-12-31' AND EndDate >= '2023-01-01';

-- 39. Insert placeholder deals for films without any
INSERT INTO SponsorshipDeals
  (DealID, FilmID, SponsorName, SponsorType, Amount, StartDate, EndDate, DealStatus, EmailContact)
SELECT FilmID+100, FilmID, 'TBD', 'Unknown', 0.00, CURDATE(), CURDATE(), 'Pending', 'N/A'
FROM Films
WHERE FilmID NOT IN (SELECT FilmID FROM SponsorshipDeals);

-- 40. Remove low-value inactive deals
DELETE FROM SponsorshipDeals
WHERE DealStatus <> 'Active' AND Amount < 1000000;

-- 41. Number of deals by sponsor type (CTE)
WITH TypeCounts AS (
  SELECT SponsorType, COUNT(*) AS DealCount
  FROM SponsorshipDeals
  GROUP BY SponsorType
)
SELECT * FROM TypeCounts;

-- 42. Cumulative total by start date
SELECT StartDate,
  SUM(Amount) OVER (ORDER BY StartDate) AS CumulativeAmount
FROM SponsorshipDeals;

-- 43. Top deals above average amount
WITH AvgAmt AS (
  SELECT AVG(Amount) AS AvgAmount FROM SponsorshipDeals
)
SELECT * FROM SponsorshipDeals SD
WHERE SD.Amount > (SELECT AvgAmount FROM AvgAmt);

-- 44. Ranking top deals
SELECT DealID, SponsorName, Amount,
  RANK() OVER (ORDER BY Amount DESC) AS DealRank
FROM SponsorshipDeals;

-- 45. Top 2 deals per sponsor type
SELECT * FROM (
  SELECT *, ROW_NUMBER() OVER (PARTITION BY SponsorType ORDER BY Amount DESC) AS RN
  FROM SponsorshipDeals
) t
WHERE RN <= 2;

-- 46. Increase all active deal amounts in a transaction
BEGIN;
UPDATE SponsorshipDeals
SET Amount = Amount * 1.05
WHERE DealStatus = 'Active';
COMMIT;

-- 47. Simulate failure with rollback
BEGIN;
UPDATE SponsorshipDeals SET DealStatus = 'Error' WHERE DealID = -1;
ROLLBACK;

-- 48. Clean up old completed deals in transaction
BEGIN;
DELETE FROM SponsorshipDeals WHERE EndDate < '2018-01-01';
COMMIT;

-- 49. Lock a row, update cautiously
START TRANSACTION;
SELECT * FROM SponsorshipDeals WHERE DealID = 1 FOR UPDATE;
UPDATE SponsorshipDeals SET ContractSigned = TRUE WHERE DealID = 1;
COMMIT;

-- 50. Savepoint for partial rollback
BEGIN;
UPDATE SponsorshipDeals SET Amount = Amount + 500000 WHERE SponsorName = 'Pepsi India';
SAVEPOINT sp1;
UPDATE SponsorshipDeals SET Amount = Amount + 500000 WHERE SponsorName = 'Jio';
ROLLBACK TO sp1;
COMMIT;

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

-- 1. Create table
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

-- 2. Add a column for WeatherConditions
ALTER TABLE ProductionSchedules
ADD Weather VARCHAR(50);

-- 3. Rename Status column to ShootStatus
ALTER TABLE ProductionSchedules
RENAME COLUMN Status TO ShootStatus;

-- 4. Drop EquipmentUsed column
ALTER TABLE ProductionSchedules
DROP COLUMN EquipmentUsed;

-- 5. Drop the entire table
DROP TABLE ProductionSchedules;

-- 6. Insert one schedule
INSERT INTO ProductionSchedules
  (ScheduleID, FilmID, Location, StartDate, EndDate, ShootingHoursPerDay, CrewCount, SupervisorName, ShootStatus)
VALUES
  (21, 130, 'Ranthambore, Rajasthan', '2022-10-01', '2022-10-15', 9, 55, 'Sunita Rao', 'Planned');

-- 7. Batch insert schedules
INSERT INTO ProductionSchedules 
VALUES
  (22, 131, 'Leh, Ladakh', '2022-09-05', '2022-09-20', 8, 50, 'Rajat Singh', 'Planned'),
  (23, 132, 'Goa Beaches', '2022-11-01', '2022-11-12', 10, 60, 'Pooja Kapoor', 'Planned');

-- 8. Update crew count for specific schedule
UPDATE ProductionSchedules
SET CrewCount = CrewCount + 5
WHERE ScheduleID = 1;

-- 9. Mark schedules as Completed past end date
UPDATE ProductionSchedules
SET ShootStatus = 'Completed'
WHERE EndDate < CURDATE();

-- 10. Delete cancelled schedules
DELETE FROM ProductionSchedules
WHERE ShootStatus = 'Cancelled';

-- 11. List all schedules
SELECT * FROM ProductionSchedules;

-- 12. Key fields output
SELECT ScheduleID, FilmID, Location, StartDate, EndDate, CrewCount, ShootStatus
FROM ProductionSchedules;

-- 13. Ongoing shoots
SELECT * FROM ProductionSchedules
WHERE CURDATE() BETWEEN StartDate AND EndDate;

-- 14. Completed schedules only
SELECT * FROM ProductionSchedules
WHERE ShootStatus = 'Completed';

-- 15. Shoots per location filter
SELECT Location, COUNT(*) AS NumShoots
FROM ProductionSchedules
GROUP BY Location
HAVING COUNT(*) > 1;

-- 16. Schedules ordered by start date
SELECT * FROM ProductionSchedules
ORDER BY StartDate;

-- 17. Top 5 longest duration shoots
SELECT ScheduleID, DATEDIFF(EndDate,StartDate) AS DurationDays
FROM ProductionSchedules
ORDER BY DurationDays DESC
LIMIT 5;

-- 18. Count shoots per supervisor
SELECT SupervisorName, COUNT(*) AS CountSchedules
FROM ProductionSchedules
GROUP BY SupervisorName;

-- 19. Average crew size
SELECT ROUND(AVG(CrewCount),2) AS AvgCrew
FROM ProductionSchedules;

-- 20. Maximum shooting hours per day used
SELECT MAX(ShootingHoursPerDay) AS MaxHours
FROM ProductionSchedules;

-- 21. Use column aliases
SELECT ScheduleID AS SID, Location AS ShootLoc, CrewCount AS Crew
FROM ProductionSchedules;

-- 22. Categorize crew size
SELECT ScheduleID,
  CASE
    WHEN CrewCount >= 60 THEN 'Large Crew'
    WHEN CrewCount >= 45 THEN 'Medium Crew'
    ELSE 'Small Crew'
  END AS CrewSizeCat
FROM ProductionSchedules;

-- 23. Compute shoot duration
SELECT ScheduleID,
  DATEDIFF(EndDate, StartDate) AS DurationDays
FROM ProductionSchedules;

-- 24. Days until start
SELECT ScheduleID,
  DATEDIFF(StartDate, CURDATE()) AS DaysToStart
FROM ProductionSchedules;

-- 25. Uppercase supervisor names
SELECT UPPER(SupervisorName) AS SUP
FROM ProductionSchedules;

-- 26. Filter location with 'Mumbai'
SELECT * FROM ProductionSchedules
WHERE Location LIKE '%Mumbai%';

-- 27. Boolean check for long shoots
SELECT ScheduleID,
  (DATEDIFF(EndDate, StartDate) > 14) AS LongShoot
FROM ProductionSchedules;

-- 28. Concatenate film and location
SELECT CONCAT('FilmID-', FilmID, '@', Location) AS ShootTag
FROM ProductionSchedules;

-- 29. Year label for start date
SELECT ScheduleID, CONCAT('YR', YEAR(StartDate)) AS YearTag
FROM ProductionSchedules;

-- 30. Shooting hours bucket
SELECT ScheduleID,
  ShootingHoursPerDay * CrewCount AS TotalManHoursPerDay
FROM ProductionSchedules;

-- 31. Join with Films for Title
SELECT P.ScheduleID, F.Title, P.Location, P.ShootStatus
FROM ProductionSchedules P
JOIN Films F ON P.FilmID = F.FilmID;

-- 32. Show all films even without shots
SELECT F.FilmID, F.Title, P.ScheduleID
FROM Films F
LEFT JOIN ProductionSchedules P ON F.FilmID = P.FilmID;

-- 33. Schedules with crew >50
SELECT P.ScheduleID, F.Title, P.CrewCount
FROM ProductionSchedules P
JOIN Films F ON P.FilmID = F.FilmID
WHERE P.CrewCount > 50;

-- 34. Add FK constraint with ON DELETE/UPDATE CASCADE
ALTER TABLE ProductionSchedules
ADD CONSTRAINT fk_ps_films
FOREIGN KEY (FilmID) REFERENCES Films(FilmID)
ON DELETE CASCADE
ON UPDATE CASCADE;  -- Cascading behavior explained :contentReference[oaicite:1]{index=1}

-- 35. Deleting a film cascades schedules too
DELETE FROM Films WHERE FilmID = 110;

-- 36. Longest shoot per film
SELECT * FROM ProductionSchedules P1
WHERE DATEDIFF(P1.EndDate, P1.StartDate) = (
  SELECT MAX(DATEDIFF(P2.EndDate,P2.StartDate))
  FROM ProductionSchedules P2
  WHERE P2.FilmID = P1.FilmID
);

-- 37. Locations with above-average crew
SELECT DISTINCT Location
FROM ProductionSchedules
WHERE CrewCount > (
  SELECT AVG(CrewCount) FROM ProductionSchedules
);

-- 38. Upcoming shoots next month
SELECT * FROM ProductionSchedules
WHERE StartDate BETWEEN CURDATE() AND DATE_ADD(CURDATE(), INTERVAL 30 DAY);

-- 39. Insert draft schedule for films without one
INSERT INTO ProductionSchedules
SELECT FilmID*10, FilmID, 'TBD', CURDATE(), DATE_ADD(CURDATE(), INTERVAL 7 DAY), 8, 40, 'TBD', 'Planned'
FROM Films
WHERE FilmID NOT IN (
  SELECT DISTINCT FilmID FROM ProductionSchedules
);

-- 40. Delete shoots longer than 30 days
DELETE FROM ProductionSchedules
WHERE DATEDIFF(EndDate, StartDate) > 30;

-- 41. Schedules per supervisor (CTE)
WITH SupCounts AS (
  SELECT SupervisorName, COUNT(*) AS NumSchedules
  FROM ProductionSchedules
  GROUP BY SupervisorName
)
SELECT * FROM SupCounts;

-- 42. Cumulative crew count by start date
SELECT StartDate,
  SUM(CrewCount) OVER (ORDER BY StartDate) AS CumulativeCrew
FROM ProductionSchedules;

-- 43. Schedules longer than average
WITH AvgDur AS (
  SELECT AVG(DATEDIFF(EndDate, StartDate)) AS AvgDays
  FROM ProductionSchedules
)
SELECT * FROM ProductionSchedules P
WHERE DATEDIFF(P.EndDate,P.StartDate) > (SELECT AvgDays FROM AvgDur);

-- 44. Rank schedules by crew size
SELECT ScheduleID, CrewCount,
  RANK() OVER (ORDER BY CrewCount DESC) AS CrewRank
FROM ProductionSchedules;

-- 45. Top 2 schedules per location
SELECT * FROM (
  SELECT *, ROW_NUMBER() OVER (PARTITION BY Location ORDER BY CrewCount DESC) AS RN
  FROM ProductionSchedules
) t WHERE RN <= 2;

-- 46. Increase crew across planned shoots
BEGIN;
UPDATE ProductionSchedules
SET CrewCount = CrewCount + 10
WHERE ShootStatus = 'Planned';
COMMIT;

-- 47. Simulate error and rollback
BEGIN;
UPDATE ProductionSchedules SET CrewCount = -1 WHERE ScheduleID = 999;
ROLLBACK;

-- 48. Delete past schedules in transaction
BEGIN;
DELETE FROM ProductionSchedules WHERE EndDate < '2020-01-01';
COMMIT;

-- 49. Lock a row before updating
START TRANSACTION;
SELECT * FROM ProductionSchedules WHERE ScheduleID = 1 FOR UPDATE;
UPDATE ProductionSchedules SET CrewCount = CrewCount +1 WHERE ScheduleID = 1;
COMMIT;

-- 50. Savepoint control flow
BEGIN;
UPDATE ProductionSchedules SET ShootStatus = 'Review' WHERE FilmID = 110;
SAVEPOINT sp1;
UPDATE ProductionSchedules SET ShootStatus = 'Review' WHERE FilmID = 111;
ROLLBACK TO sp1;
COMMIT;

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

-- 1. Create ScriptVersions table
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

-- 2. Add a column for ReviewDate
ALTER TABLE ScriptVersions
ADD ReviewDate DATE;

-- 3. Rename ChangeSummary to Summary
ALTER TABLE ScriptVersions
RENAME COLUMN ChangeSummary TO Summary;

-- 4. Drop the Notes column
ALTER TABLE ScriptVersions
DROP COLUMN Notes;

-- 5. Drop the entire table
DROP TABLE ScriptVersions;

-- 6. Insert a new script version
INSERT INTO ScriptVersions
  (VersionID, FilmID, DraftNumber, WriterName, SubmitDate, ApprovedBy, VersionStatus, Summary, FilePath)
VALUES
  (21, 130, 1, 'Neha Patel', '2023-07-01', 'Vikramaditya', 'Pending', 'Initial draft uploaded.', '/scripts/film130_v1.pdf');

-- 7. Batch insert multiple versions
INSERT INTO ScriptVersions
VALUES
  (22, 130, 2, 'Neha Patel', '2023-07-15', 'Vikramaditya', 'Pending', 'Added dialogue scenes.', '/scripts/film130_v2.pdf'),
  (23, 131, 1, 'Aditya Singh', '2023-06-20', 'Zoya Akhtar', 'Approved', 'First draft approved.', '/scripts/film131_v1.pdf');

-- 8. Update version status
UPDATE ScriptVersions
SET VersionStatus = 'Approved'
WHERE VersionID = 3;

-- 9. Update submit date for a version
UPDATE ScriptVersions
SET SubmitDate = '2023-07-20'
WHERE VersionID = 22;

-- 10. Delete rejected versions
DELETE FROM ScriptVersions
WHERE VersionStatus = 'Rejected';

-- 11. Retrieve all script versions
SELECT * FROM ScriptVersions;

-- 12. Key columns only
SELECT VersionID, FilmID, DraftNumber, WriterName, VersionStatus
FROM ScriptVersions;

-- 13. Pending versions only
SELECT * FROM ScriptVersions
WHERE VersionStatus = 'Pending';

-- 14. Approved versions only
SELECT * FROM ScriptVersions
WHERE VersionStatus = 'Approved';

-- 15. Latest version per film
SELECT * FROM ScriptVersions SV1
WHERE DraftNumber = (
  SELECT MAX(DraftNumber)
  FROM ScriptVersions SV2
  WHERE SV2.FilmID = SV1.FilmID
);

-- 16. Versions submitted in last month
SELECT * FROM ScriptVersions
WHERE SubmitDate BETWEEN DATE_SUB(CURDATE(), INTERVAL 1 MONTH) AND CURDATE();

-- 17. Count of versions per film
SELECT FilmID, COUNT(*) AS VersionCount
FROM ScriptVersions
GROUP BY FilmID;

-- 18. Maximum draft number per film
SELECT FilmID, MAX(DraftNumber) AS MaxDraft
FROM ScriptVersions
GROUP BY FilmID;

-- 19. Version status distribution
SELECT VersionStatus, COUNT(*) AS Count
FROM ScriptVersions
GROUP BY VersionStatus;

-- 20. Average drafts per writer
SELECT WriterName, AVG(DraftNumber) AS AvgDraft
FROM ScriptVersions
GROUP BY WriterName;

-- 21. Use column aliases
SELECT VersionID AS VID, FilmID AS FID, VersionStatus AS Status
FROM ScriptVersions;

-- 22. Draft labels with CASE
SELECT VersionID,
  CASE
    WHEN DraftNumber = 1 THEN 'FirstDraft'
    WHEN DraftNumber = (SELECT MAX(DraftNumber) FROM ScriptVersions SV WHERE SV.FilmID = ScriptVersions.FilmID) THEN 'FinalDraft'
    ELSE 'Intermediate'
  END AS DraftType
FROM ScriptVersions;

-- 23. Days since submission
SELECT VersionID,
  DATEDIFF(CURDATE(), SubmitDate) AS DaysSinceSubmit
FROM ScriptVersions;

-- 24. Uppercase writer name
SELECT DISTINCT UPPER(WriterName) AS WriterUP
FROM ScriptVersions;

-- 25. Filter file paths containing '/v1'
SELECT * FROM ScriptVersions
WHERE FilePath LIKE '%/v1%';

-- 26. Boolean check for approval
SELECT VersionID,
  (VersionStatus = 'Approved') AS IsApproved
FROM ScriptVersions;

-- 27. Concatenate writer and status
SELECT VersionID,
  CONCAT(WriterName, ': ', VersionStatus) AS WriterStatus
FROM ScriptVersions;

-- 28. File path length
SELECT VersionID,
  LENGTH(FilePath) AS PathLength
FROM ScriptVersions;

-- 29. Years since submission
SELECT VersionID,
  FLOOR(DATEDIFF(CURDATE(), SubmitDate) / 365) AS YearsSince
FROM ScriptVersions;

-- 30. Draft number threshold filter
SELECT * FROM ScriptVersions
WHERE DraftNumber > 1;

-- 31. Join with Films to get titles
SELECT SV.VersionID, F.Title, SV.DraftNumber, SV.VersionStatus
FROM ScriptVersions SV
JOIN Films F ON SV.FilmID = F.FilmID;

-- 32. All films with their versions
SELECT F.FilmID, F.Title, SV.VersionID
FROM Films F
LEFT JOIN ScriptVersions SV ON F.FilmID = SV.FilmID;

-- 33. Approved versions with film info
SELECT SV.VersionID, F.Title, SV.WriterName
FROM ScriptVersions SV
JOIN Films F ON SV.FilmID = F.FilmID
WHERE SV.VersionStatus = 'Approved';

-- 34. Add FK constraint with cascade
ALTER TABLE ScriptVersions
ADD CONSTRAINT fk_sv_films
FOREIGN KEY (FilmID) REFERENCES Films(FilmID)
ON DELETE CASCADE
ON UPDATE CASCADE;

-- 35. Deleting a film cascades its versions
DELETE FROM Films WHERE FilmID = 110;

-- 36. Versions with max draft number
SELECT * FROM ScriptVersions SV1
WHERE DraftNumber = (
  SELECT MAX(DraftNumber)
  FROM ScriptVersions SV2
  WHERE SV2.FilmID = SV1.FilmID
);

-- 37. Films with more than 2 versions
SELECT DISTINCT FilmID
FROM ScriptVersions
WHERE FilmID IN (
  SELECT FilmID
  FROM ScriptVersions
  GROUP BY FilmID
  HAVING COUNT(*) > 2
);

-- 38. Insert a placeholder for films without versions
INSERT INTO ScriptVersions 
SELECT FilmID*10, FilmID, 1, 'TBD', CURDATE(), 'TBD', 'Pending', 'Placeholder', '/scripts/tbd.pdf'
FROM Films
WHERE FilmID NOT IN (SELECT FilmID FROM ScriptVersions);

-- 39. Delete first drafts older than a year
DELETE FROM ScriptVersions
WHERE DraftNumber = 1
  AND SubmitDate < DATE_SUB(CURDATE(), INTERVAL 1 YEAR);

-- 40. Versions pending approval longest
SELECT * FROM ScriptVersions SV
WHERE VersionStatus = 'Pending'
ORDER BY SubmitDate ASC
LIMIT 1;

-- 41. Count versions per writer (CTE)
WITH WriterCounts AS (
  SELECT WriterName, COUNT(*) AS VersionCount
  FROM ScriptVersions
  GROUP BY WriterName
)
SELECT * FROM WriterCounts;

-- 42. Cumulative drafts per film by submit date
SELECT FilmID, SubmitDate, DraftNumber,
  SUM(DraftNumber) OVER (PARTITION BY FilmID ORDER BY SubmitDate) AS CumDrafts
FROM ScriptVersions;

-- 43. Versions longer than average draft number
WITH AvgDraft AS (
  SELECT AVG(DraftNumber) AS AvgDN FROM ScriptVersions
)
SELECT * FROM ScriptVersions
WHERE DraftNumber > (SELECT AvgDN FROM AvgDraft);

-- 44. Rank versions per film by submission date
SELECT VersionID, FilmID, DraftNumber,
  RANK() OVER (PARTITION BY FilmID ORDER BY SubmitDate DESC) AS RankPerFilm
FROM ScriptVersions;

-- 45. Latest 2 versions per film
SELECT * FROM (
  SELECT *, ROW_NUMBER() OVER (PARTITION BY FilmID ORDER BY SubmitDate DESC) AS RN
  FROM ScriptVersions
) t WHERE RN <= 2;

-- 46. Approve all pending versions in transaction
BEGIN;
UPDATE ScriptVersions
SET VersionStatus = 'Approved'
WHERE VersionStatus = 'Pending';
COMMIT;

-- 47. Intentional rollback
BEGIN;
UPDATE ScriptVersions
SET VersionStatus = 'Error'
WHERE VersionID = -1;
ROLLBACK;

-- 48. Delete old versions in transaction
BEGIN;
DELETE FROM ScriptVersions
WHERE SubmitDate < '2020-01-01';
COMMIT;

-- 49. Lock a row before updating
START TRANSACTION;
SELECT * FROM ScriptVersions WHERE VersionID = 1 FOR UPDATE;
UPDATE ScriptVersions SET VersionStatus = 'Locked' WHERE VersionID = 1;
COMMIT;

-- 50. Savepoint example
BEGIN;
UPDATE ScriptVersions SET VersionStatus = 'Reviewed' WHERE VersionID = 2;
SAVEPOINT sp1;
UPDATE ScriptVersions SET VersionStatus = 'Final' WHERE VersionID = 3;
ROLLBACK TO sp1;
COMMIT;

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

-- 1. Create table
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

-- 2. Add column for ReviewedBy
ALTER TABLE LegalClearances
ADD ReviewedBy VARCHAR(100);

-- 3. Rename Remarks to Notes
ALTER TABLE LegalClearances
RENAME COLUMN Remarks TO Notes;

-- 4. Drop DocumentPath column
ALTER TABLE LegalClearances
DROP COLUMN DocumentPath;

-- 5. Drop the table entirely
DROP TABLE LegalClearances;

-- 6. Insert a new clearance record
INSERT INTO LegalClearances
  (ClearanceID, FilmID, ClearanceType, IssuedBy, IssueDate, ValidTill, ApprovalStatus, ContactPerson, Notes)
VALUES
  (21, 129, 'Insurance', 'ABC Insurance Co.', '2023-05-01', '2024-05-01', 'Approved', 'Rina Patel', 'Covers crew & equipment.');

-- 7. Batch insert multiple records
INSERT INTO LegalClearances 
VALUES
  (22, 130, 'Location Permit', 'Mumbai Police', '2023-06-01', '2023-12-01', 'Pending', 'Inspector Sharma', 'Downtown shoots.'),
  (23, 131, 'Trademark', 'IP Office India', '2023-07-15', '2028-07-15', 'Approved', 'Nisha Rao', 'Use of logo granted.');

-- 8. Extend validity of clearances
UPDATE LegalClearances
SET ValidTill = DATE_ADD(ValidTill, INTERVAL 6 MONTH)
WHERE ValidTill < '2023-01-01';

-- 9. Change status to 'Expired' where past validity
UPDATE LegalClearances
SET ApprovalStatus = 'Expired'
WHERE ValidTill < CURDATE();

-- 10. Delete rejected clearances
DELETE FROM LegalClearances
WHERE ApprovalStatus = 'Rejected';

-- 11. Select all clearances
SELECT * FROM LegalClearances;

-- 12. Key columns only
SELECT ClearanceID, FilmID, ClearanceType, IssueDate, ApprovalStatus
FROM LegalClearances;

-- 13. Currently valid clearances
SELECT * FROM LegalClearances
WHERE ValidTill >= CURDATE();

-- 14. Pending approvals
SELECT * FROM LegalClearances
WHERE ApprovalStatus = 'Pending';

-- 15. Count per clearance type
SELECT ClearanceType, COUNT(*) AS Count
FROM LegalClearances
GROUP BY ClearanceType;

-- 16. Latest issued clearance for each film
SELECT * FROM LegalClearances L1
WHERE IssueDate = (
  SELECT MAX(IssueDate) FROM LegalClearances L2
  WHERE L2.FilmID = L1.FilmID
);

-- 17. Clearances expiring within 30 days
SELECT * FROM LegalClearances
WHERE ValidTill BETWEEN CURDATE() AND DATE_ADD(CURDATE(), INTERVAL 30 DAY);

-- 18. Total clearances per issuer
SELECT IssuedBy, COUNT(*) AS Total
FROM LegalClearances
GROUP BY IssuedBy;

-- 19. Earliest and latest issue dates overall
SELECT MIN(IssueDate) AS Earliest, MAX(IssueDate) AS Latest
FROM LegalClearances;

-- 20. Average validity duration
SELECT ROUND(AVG(DATEDIFF(ValidTill, IssueDate))) AS AvgDurationDays
FROM LegalClearances;

-- 21. Use aliases
SELECT ClearanceID AS CID, FilmID AS FID, ApprovalStatus AS Status
FROM LegalClearances;

-- 22. Clearance validity category
SELECT ClearanceID,
  CASE
    WHEN DATEDIFF(ValidTill, CURDATE()) > 180 THEN 'Long-Term'
    ELSE 'Short-Term'
  END AS ValidityCategory
FROM LegalClearances;

-- 23. Days until expiry
SELECT ClearanceID,
  DATEDIFF(ValidTill, CURDATE()) AS DaysToExpire
FROM LegalClearances;

-- 24. Upper issuer names
SELECT DISTINCT UPPER(IssuedBy) AS IssuerUC
FROM LegalClearances;

-- 25. Filter for Mumbai-issued clearances
SELECT * FROM LegalClearances
WHERE IssuedBy LIKE '%Mumbai%';

-- 26. Contact domain extraction
SELECT ContactPerson,
  SUBSTRING_INDEX(ContactPerson, ' ', -1) AS Surname
FROM LegalClearances;

-- 27. Pending boolean flag
SELECT ClearanceID, (ApprovalStatus = 'Pending') AS IsPending
FROM LegalClearances;

-- 28. Issue vs. ValidTill days
SELECT ClearanceID, CONCAT(DATEDIFF(ValidTill, IssueDate), ' days') AS TotalDays
FROM LegalClearances;

-- 29. Notes length
SELECT ClearanceID, LENGTH(Notes) AS NoteLength
FROM LegalClearances;

-- 30. Clearances of type containing 'Permit'
SELECT * FROM LegalClearances
WHERE ClearanceType LIKE '%Permit%';

-- 31. Get film titles via join (assumes Films table)
SELECT L.ClearanceID, F.Title, L.ClearanceType, L.ApprovalStatus
FROM LegalClearances L
JOIN Films F ON L.FilmID = F.FilmID;

-- 32. List all films with any clearances
SELECT F.FilmID, F.Title, L.ClearanceID
FROM Films F
LEFT JOIN LegalClearances L ON F.FilmID = L.FilmID;

-- 33. Approved permits only
SELECT F.Title, L.IssuedBy, L.ClearanceType
FROM LegalClearances L
JOIN Films F ON L.FilmID = F.FilmID
WHERE L.ApprovalStatus = 'Approved';

-- 34. Add FK with cascading integrity
ALTER TABLE LegalClearances
ADD CONSTRAINT fk_lc_films
FOREIGN KEY (FilmID) REFERENCES Films(FilmID)
ON DELETE CASCADE
ON UPDATE CASCADE;

-- 35. Deleting a film cascades its clearances
DELETE FROM Films WHERE FilmID = 110;

-- 36. Longest validity per film
SELECT * FROM LegalClearances L1
WHERE DATEDIFF(L1.ValidTill, L1.IssueDate) = (
  SELECT MAX(DATEDIFF(L2.ValidTill, L2.IssueDate))
    FROM LegalClearances L2
    WHERE L2.FilmID = L1.FilmID
);

-- 37. Issuers used more than once
SELECT IssuedBy
FROM LegalClearances
GROUP BY IssuedBy
HAVING COUNT(*) > 1;

-- 38. Insert placeholder clearing for films without any
INSERT INTO LegalClearances 
SELECT FilmID*10, FilmID, 'Generic Clearance', 'Unknown', CURDATE(), DATE_ADD(CURDATE(), INTERVAL 1 YEAR),
       'Pending', 'Unknown', 'Auto-generated.'
FROM Films
WHERE FilmID NOT IN (SELECT FilmID FROM LegalClearances);

-- 39. Delete expired clearances older than a year
DELETE FROM LegalClearances
WHERE ValidTill < DATE_SUB(CURDATE(), INTERVAL 1 YEAR);

-- 40. Earliest pending clearance
SELECT * FROM LegalClearances
WHERE ApprovalStatus = 'Pending'
ORDER BY IssueDate ASC
LIMIT 1;

-- 41. Count clearances by type (CTE)
WITH TypeCounts AS (
  SELECT ClearanceType, COUNT(*) AS Total
  FROM LegalClearances
  GROUP BY ClearanceType
)
SELECT * FROM TypeCounts;

-- 42. Cumulative count by issue date
SELECT IssueDate,
  COUNT(*) OVER (ORDER BY IssueDate) AS CumulativeCount
FROM LegalClearances;

-- 43. Clearances longer than average validity
WITH AvgValidity AS (
  SELECT AVG(DATEDIFF(ValidTill, IssueDate)) AS AvgDays
  FROM LegalClearances
)
SELECT * FROM LegalClearances L
WHERE DATEDIFF(L.ValidTill, L.IssueDate) > (SELECT AvgDays FROM AvgValidity);

-- 44. Rank clearances by duration
SELECT ClearanceID,
  RANK() OVER (ORDER BY DATEDIFF(ValidTill, IssueDate) DESC) AS DurationRank
FROM LegalClearances;

-- 45. Top two longest valid clearances per type
SELECT* FROM (
  SELECT *, ROW_NUMBER() OVER (PARTITION BY ClearanceType ORDER BY DATEDIFF(ValidTill, IssueDate) DESC) AS RN
  FROM LegalClearances
) t WHERE RN <= 2;

-- 46. Extend validity for all pending clearances
BEGIN;
UPDATE LegalClearances
SET ValidTill = DATE_ADD(ValidTill, INTERVAL 3 MONTH)
WHERE ApprovalStatus = 'Pending';
COMMIT;

-- 47. Safe rollback test
BEGIN;
UPDATE LegalClearances SET ApprovalStatus = 'Test' WHERE ClearanceID = -1;
ROLLBACK;

-- 48. Remove outdated clearances in a transaction
BEGIN;
DELETE FROM LegalClearances
WHERE ValidTill < '2020-01-01';
COMMIT;

-- 49. Row-level lock for editing
START TRANSACTION;
SELECT * FROM LegalClearances WHERE ClearanceID = 1 FOR UPDATE;
UPDATE LegalClearances SET ApprovalStatus = 'Reviewed' WHERE ClearanceID = 1;
COMMIT;

-- 50. Summary: Count of active clearances by type
SELECT
    ClearanceType,
    COUNT(*) AS ActiveCount
FROM
    LegalClearances
WHERE
    ValidTill >= CURRENT_DATE
    AND ApprovalStatus = 'Approved'
GROUP BY
    ClearanceType
ORDER BY
    ActiveCount DESC;
    
-- Table 24: postproduction
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
TRUNCATE TABLE PostProduction ;

-- to remove complete records and attributes from table
DROP TABLE PostProduction ;

-- 1. Create the PostProduction table (already provided)
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

-- 2. Add a new column to store post-production cost
ALTER TABLE PostProduction ADD Cost DECIMAL(10, 2);

-- 3. Modify column name 'ColorGradingStudio' to 'ColorGradingLab'
ALTER TABLE PostProduction RENAME COLUMN ColorGradingStudio TO ColorGradingLab;

-- 4. Drop the column 'Remarks'
ALTER TABLE PostProduction DROP COLUMN Remarks;

-- 5. Rename the table
ALTER TABLE PostProduction RENAME TO PostProductionDetails;

-- 6. Insert a new record
INSERT INTO PostProductionDetails (PostID, FilmID, EditorName, VFXStudio, SoundEngineer, ColorGradingLab, StartDate, EndDate, Status, Cost)
VALUES (21, 130, 'Reema Kaur', 'Red Chillies VFX', 'Ritesh Nair', 'FutureWorks', '2023-01-10', '2023-03-15', 'Completed', 550000.00);

-- 7. Update the status to 'In Progress' for a particular film
UPDATE PostProductionDetails SET Status = 'In Progress' WHERE FilmID = 130;

-- 8. Update the cost for all records with 'Red Chillies VFX' studio
UPDATE PostProductionDetails SET Cost = Cost + 50000 WHERE VFXStudio = 'Red Chillies VFX';

-- 9. Delete a post-production record where PostID = 21
DELETE FROM PostProductionDetails WHERE PostID = 21;

-- 10. Set Cost to NULL where EndDate is NULL
UPDATE PostProductionDetails SET Cost = NULL WHERE EndDate IS NULL;

-- 11. Replace 'BOT VFX' with 'BOT VFX India' in VFXStudio
UPDATE PostProductionDetails SET VFXStudio = 'BOT VFX India' WHERE VFXStudio = 'BOT VFX';

-- 12. Insert a partial record (only required columns)
INSERT INTO PostProductionDetails (PostID, FilmID, EditorName, VFXStudio, SoundEngineer, ColorGradingLab, StartDate, EndDate, Status)
VALUES (22, 131, 'Zeenat Ali', 'PhantomFX', 'Rahul Verma', 'Prime Focus', '2023-02-01', '2023-04-01', 'Completed');

-- 13. Delete all records with Cost less than 500000
DELETE FROM PostProductionDetails WHERE Cost < 500000;

-- 14. Update EndDate to NULL for delayed projects
UPDATE PostProductionDetails SET EndDate = NULL WHERE Status = 'In Progress';

-- 15. Set all NULL cost values to default 400000
UPDATE PostProductionDetails SET Cost = 400000 WHERE Cost IS NULL;

-- 16. Select all completed post-productions
SELECT * FROM PostProductionDetails WHERE Status = 'Completed';

-- 17. Select editors who worked with 'Red Chillies VFX'
SELECT DISTINCT EditorName FROM PostProductionDetails WHERE VFXStudio = 'Red Chillies VFX';

-- 18. Get post-productions where cost > 600000
SELECT * FROM PostProductionDetails WHERE Cost > 600000;

-- 19. Use alias for EditorName and Cost
SELECT EditorName AS Editor, Cost AS Budget FROM PostProductionDetails;

-- 20. Use BETWEEN for cost range
SELECT * FROM PostProductionDetails WHERE Cost BETWEEN 500000 AND 700000;

-- 21. Use LIKE to find engineers with 'Sen' in name
SELECT * FROM PostProductionDetails WHERE SoundEngineer LIKE '%Sen%';

-- 22. Use IN to filter multiple VFX studios
SELECT * FROM PostProductionDetails WHERE VFXStudio IN ('Red Chillies VFX', 'Makuta VFX', 'BOT VFX');

-- 23. Use IS NULL to find records with no end date
SELECT * FROM PostProductionDetails WHERE EndDate IS NULL;

-- 24. Use NOT operator
SELECT * FROM PostProductionDetails WHERE VFXStudio NOT IN ('Red Chillies VFX', 'PhantomFX');

-- 25. Use ORDER BY to sort by Cost descending
SELECT * FROM PostProductionDetails ORDER BY Cost DESC;

-- 26. Count how many records are completed
SELECT COUNT(*) AS CompletedProjects FROM PostProductionDetails WHERE Status = 'Completed';

-- 27. Find max and min cost
SELECT MAX(Cost) AS HighestCost, MIN(Cost) AS LowestCost FROM PostProductionDetails;

-- 28. Get average post-production cost
SELECT AVG(Cost) AS AverageCost FROM PostProductionDetails;

-- 29. Get total cost incurred
SELECT SUM(Cost) AS TotalPostCost FROM PostProductionDetails;

-- 30. Extract year from StartDate
SELECT FilmID, EXTRACT(YEAR FROM StartDate) AS StartYear FROM PostProductionDetails;

-- 31. Inner Join with Films table
SELECT p.PostID, f.Title, p.EditorName, p.Status
FROM PostProductionDetails p
JOIN Films f ON p.FilmID = f.FilmID;

-- 32. Left Join to get post-productions even if no film title
SELECT p.*, f.Title
FROM PostProductionDetails p
LEFT JOIN Films f ON p.FilmID = f.FilmID;

-- 33. Right Join to get films even if no post-production
SELECT f.*, p.EditorName
FROM Films f
RIGHT JOIN PostProductionDetails p ON p.FilmID = f.FilmID;

-- 34. Full Outer Join (if supported by RDBMS)
SELECT *
FROM PostProductionDetails p
LEFT JOIN Films f ON p.FilmID = f.FilmID

UNION

SELECT *
FROM PostProductionDetails p
RIGHT JOIN Films f ON p.FilmID = f.FilmID;


-- 35. Join with condition on Cost
SELECT f.Title, p.EditorName, p.Cost
FROM Films f
JOIN PostProductionDetails p ON f.FilmID = p.FilmID
WHERE p.Cost > 600000;

-- 36. Select post-productions with max cost
SELECT * FROM PostProductionDetails
WHERE Cost = (SELECT MAX(Cost) FROM PostProductionDetails);

-- 37. Select editors who worked on same film as Editor 'Ritesh Mehra'
SELECT EditorName FROM PostProductionDetails
WHERE FilmID IN (
    SELECT FilmID FROM PostProductionDetails WHERE EditorName = 'Ritesh Mehra'
);

-- 38. Films with cost above average
SELECT * FROM PostProductionDetails
WHERE Cost > (SELECT AVG(Cost) FROM PostProductionDetails);

-- 39. Count of completed projects per studio
SELECT VFXStudio, COUNT(*) AS CompletedCount
FROM PostProductionDetails
WHERE Status = 'Completed'
GROUP BY VFXStudio;

-- 40. Get top 3 costly projects
SELECT * FROM PostProductionDetails
ORDER BY Cost DESC
LIMIT 3;

-- 41. Create a view for all completed projects
CREATE VIEW CompletedProjects AS
SELECT * FROM PostProductionDetails WHERE Status = 'Completed';

-- 42. Use the view to get editor names
SELECT DISTINCT EditorName FROM CompletedProjects;

-- 43. CTE to filter projects started in 2022
WITH Projects2022 AS (
    SELECT * FROM PostProductionDetails WHERE EXTRACT(YEAR FROM StartDate) = 2022
)
SELECT * FROM Projects2022;

-- 44. CTE to get average cost and filter costly projects
WITH AvgCost AS (
    SELECT AVG(Cost) AS AvgVal FROM PostProductionDetails
)
SELECT * FROM PostProductionDetails WHERE Cost > (SELECT AvgVal FROM AvgCost);

-- 45. Create a view for budgeted post-productions
CREATE VIEW BudgetedProjects AS
SELECT PostID, FilmID, Cost FROM PostProductionDetails WHERE Cost IS NOT NULL;

-- 46. Create Films table (for reference)
CREATE TABLE Films (
    FilmID INT PRIMARY KEY,
    Title VARCHAR(100),
    ReleaseDate DATE
);

-- 47. Add foreign key with ON DELETE CASCADE
ALTER TABLE PostProductionDetails
ADD CONSTRAINT fk_film
FOREIGN KEY (FilmID) REFERENCES Films(FilmID)
ON DELETE CASCADE;

-- 48. Delete a film (should also delete related post-production)
DELETE FROM Films WHERE FilmID = 110;

-- 49. Add ON UPDATE CASCADE
ALTER TABLE PostProductionDetails
DROP FOREIGN KEY fk_film;

ALTER TABLE PostProductionDetails
ADD CONSTRAINT fk_film_updated
FOREIGN KEY (FilmID) REFERENCES Films(FilmID)
ON UPDATE CASCADE;

-- 50. Update FilmID in Films table (will cascade to PostProductionDetails)
UPDATE Films SET FilmID = 150 WHERE FilmID = 109;

-- Table 25: AudienceSurveys
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

-- 1. Create the AudienceSurveys table
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

-- 2. Add a new column to track if feedback was positive
ALTER TABLE AudienceSurveys ADD IsPositiveFeedback BOOLEAN;

-- 3. Rename column "ConductedBy" to "SurveyAgency"
ALTER TABLE AudienceSurveys RENAME COLUMN ConductedBy TO SurveyAgency;

-- 4. Change datatype of "Rating" to DECIMAL
ALTER TABLE AudienceSurveys 
MODIFY COLUMN Rating DECIMAL(3,1);

-- 5. Drop the column "IsPositiveFeedback"
ALTER TABLE AudienceSurveys DROP COLUMN IsPositiveFeedback;

-- 6. Insert a new survey record
INSERT INTO AudienceSurveys (SurveyID, FilmID, SurveyDate, AgeGroup, Gender, Region, Rating, Feedback, SurveyAgency, ResponseCount)
VALUES (21, 120, '2023-01-15', '18-25', 'Female', 'Delhi', 9.0, 'Superb visuals!', 'Kantar IMRB', 180);

-- 7. Update rating of a particular survey
UPDATE AudienceSurveys SET Rating = 7.5 WHERE SurveyID = 21;

-- 8. Delete a survey record by ID
DELETE FROM AudienceSurveys WHERE SurveyID = 21;

-- 9. Increase all ratings by 0.5 (capped at 10)
UPDATE AudienceSurveys SET Rating = LEAST(Rating + 0.5, 10.0);

-- 10. Set response count to NULL for missing surveys
UPDATE AudienceSurveys SET ResponseCount = NULL WHERE Rating < 5;

-- 11. Insert a partial record
INSERT INTO AudienceSurveys (SurveyID, FilmID, SurveyDate, AgeGroup, Gender, Region, Rating)
VALUES (22, 121, '2023-02-20', '26-35', 'Male', 'Pune', 8.0);

-- 12. Delete records with ResponseCount below 100
DELETE FROM AudienceSurveys WHERE ResponseCount < 100;

-- 13. Increase ResponseCount by 10 for all surveys conducted by Ormax Media
UPDATE AudienceSurveys SET ResponseCount = ResponseCount + 10 WHERE SurveyAgency = 'Ormax Media';

-- 14. Update multiple columns
UPDATE AudienceSurveys
SET Feedback = 'Outstanding visual effects!', Rating = 9.5
WHERE SurveyID = 3;

-- 15. Reset all ratings to default (5.0) where NULL
UPDATE AudienceSurveys SET Rating = 5.0 WHERE Rating IS NULL;

-- 16. Select all survey details
SELECT * FROM AudienceSurveys;

-- 17. Select only age group and rating
SELECT AgeGroup, Rating FROM AudienceSurveys;

-- 18. Use aliasing for clarity
SELECT SurveyID AS ID, Rating AS AudienceRating FROM AudienceSurveys;

-- 19. Use WHERE with comparison
SELECT * FROM AudienceSurveys WHERE Rating > 8;

-- 20. Use BETWEEN for age group filtering
SELECT * FROM AudienceSurveys WHERE Rating BETWEEN 6 AND 8;

-- 21. Use LIKE for feedback text search
SELECT * FROM AudienceSurveys WHERE Feedback LIKE '%visual%';

-- 22. Use IN clause
SELECT * FROM AudienceSurveys WHERE Region IN ('Delhi', 'Mumbai', 'Bangalore');

-- 23. Use NOT operator
SELECT * FROM AudienceSurveys WHERE Gender NOT IN ('Female');

-- 24. Use IS NULL
SELECT * FROM AudienceSurveys WHERE ResponseCount IS NULL;

-- 25. Use ORDER BY
SELECT * FROM AudienceSurveys ORDER BY Rating DESC;

-- 26. Average rating by age group
SELECT AgeGroup, AVG(Rating) AS AvgRating FROM AudienceSurveys GROUP BY AgeGroup;

-- 27. Count of surveys per region
SELECT Region, COUNT(*) AS SurveyCount FROM AudienceSurveys GROUP BY Region;

-- 28. Maximum and minimum ratings
SELECT MAX(Rating) AS MaxRating, MIN(Rating) AS MinRating FROM AudienceSurveys;

-- 29. Total response count by agency
SELECT SurveyAgency, SUM(ResponseCount) AS TotalResponses FROM AudienceSurveys GROUP BY SurveyAgency;

-- 30. Extract year from survey date
SELECT SurveyID, EXTRACT(YEAR FROM SurveyDate) AS SurveyYear FROM AudienceSurveys;

-- 31. Inner join with Films table
SELECT a.SurveyID, f.Title, a.Rating
FROM AudienceSurveys a
JOIN Films f ON a.FilmID = f.FilmID;

-- 32. Left join
SELECT a.*, f.Title
FROM AudienceSurveys a
LEFT JOIN Films f ON a.FilmID = f.FilmID;

-- 33. Join and filter high-rated surveys
SELECT f.Title, a.Rating
FROM AudienceSurveys a
JOIN Films f ON a.FilmID = f.FilmID
WHERE a.Rating >= 8;

-- 34. Join with alias and use ORDER BY
SELECT a.SurveyID, f.Title AS FilmTitle, a.Feedback
FROM AudienceSurveys a
JOIN Films f ON a.FilmID = f.FilmID
ORDER BY a.SurveyDate;

-- 35. Count of surveys per film title
SELECT f.Title, COUNT(*) AS SurveyCount
FROM AudienceSurveys a
JOIN Films f ON a.FilmID = f.FilmID
GROUP BY f.Title;

-- 36. Find max rated film survey
SELECT * FROM AudienceSurveys
WHERE Rating = (SELECT MAX(Rating) FROM AudienceSurveys);

-- 37. Films with more than 150 responses
SELECT FilmID FROM AudienceSurveys
WHERE ResponseCount > 150
GROUP BY FilmID;

-- 38. Survey IDs with above average ratings
SELECT SurveyID FROM AudienceSurveys
WHERE Rating > (SELECT AVG(Rating) FROM AudienceSurveys);

-- 39. Regions with total responses over 250
SELECT Region FROM AudienceSurveys
GROUP BY Region
HAVING SUM(ResponseCount) > 250;

-- 40. Subquery with EXISTS
SELECT * FROM AudienceSurveys a
WHERE EXISTS (
    SELECT 1 FROM Films f WHERE f.FilmID = a.FilmID AND f.ReleaseDate < '2022-01-01'
);

-- 41. Create a view for high-rated surveys
CREATE VIEW HighRatedSurveys AS
SELECT * FROM AudienceSurveys WHERE Rating >= 8;

-- 42. Query the view
SELECT * FROM HighRatedSurveys;

-- 43. CTE for average rating by region
WITH RegionAvg AS (
    SELECT Region, AVG(Rating) AS AvgRating FROM AudienceSurveys GROUP BY Region
)
SELECT * FROM RegionAvg WHERE AvgRating >= 7.5;

-- 44. CTE to list age groups that prefer high ratings
WITH HighFeedback AS (
    SELECT AgeGroup, AVG(Rating) AS AvgRating
    FROM AudienceSurveys
    GROUP BY AgeGroup
)
SELECT * FROM HighFeedback WHERE AvgRating > 7;

-- 45. Create a view of feedback and agency
CREATE VIEW FeedbackSummary AS
SELECT SurveyID, Feedback, SurveyAgency FROM AudienceSurveys;

-- 46. Create Films table for relation
CREATE TABLE Films (
    FilmID INT PRIMARY KEY,
    Title VARCHAR(100),
    ReleaseDate DATE
);

-- 47. Add foreign key with ON DELETE CASCADE
ALTER TABLE AudienceSurveys
ADD CONSTRAINT fk_film_audience
FOREIGN KEY (FilmID) REFERENCES Films(FilmID)
ON DELETE CASCADE;

-- 48. Delete a film to observe cascade
DELETE FROM Films WHERE FilmID = 110;

-- 49. Drop and re-add foreign key with ON UPDATE CASCADE
ALTER TABLE AudienceSurveys DROP CONSTRAINT fk_film_audience;

ALTER TABLE AudienceSurveys
ADD CONSTRAINT fk_film_updated
FOREIGN KEY (FilmID) REFERENCES Films(FilmID)
ON UPDATE CASCADE;

-- 50. Update FilmID in Films to trigger ON UPDATE CASCADE
UPDATE Films SET FilmID = 150 WHERE FilmID = 119;