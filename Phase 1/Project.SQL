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
