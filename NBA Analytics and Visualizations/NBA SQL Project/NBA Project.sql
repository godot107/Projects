use testerinos 

-- Importing Data with Bulk Import

CREATE TABLE NBA_Playoffs15
(
 Rk INT,
 Player VARCHAR(40),
 Age INT,
 G INT,
 GS INT,
 MP INT,
 FG INT,
 FGA INT,
 ThreeP INT,
 ThreePA INT,
 FT INT,
 FTA INT,
 ORB INT,
 DRB INT,
 TRB INT,
 AST INT,
 STL INT,
 BLK INT,
 TOV INT,
 PF INT,
 PTS INT,
 FGP float(3),
 ThreePer float(3),
 FTP float(3),
 MPAVG float(3),
 PTSAVG float(3),
 TRBAVG float(3),
 ASTAVG float(3),
 STLAVG float(3),
 BLKAVG float(3), 
 Series VARCHAR(40),
 )


-- Adding the Data

BULK
INSERT NBA_Playoffs15
FROM 'C:\Users\willieman\Desktop\Life\SQL\Data\NBA Data\Blazers_1stRd_15.csv'
WITH
(
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n'
)


BULK
INSERT NBA_Playoffs15
FROM 'C:\Users\willieman\Desktop\Life\SQL\Data\NBA Data\Boston_1stRd_15.csv'
WITH
(
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n'
)

BULK
INSERT NBA_Playoffs15
FROM 'C:\Users\willieman\Desktop\Life\SQL\Data\NBA Data\Bucks_1stRd_15.csv'
WITH
(
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n'
)

BULK
INSERT NBA_Playoffs15
FROM 'C:\Users\willieman\Desktop\Life\SQL\Data\NBA Data\Bulls_1stRd_15.csv'
WITH
(
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n'
)

BULK
INSERT NBA_Playoffs15
FROM 'C:\Users\willieman\Desktop\Life\SQL\Data\NBA Data\Bulls_Semi_15.csv'
WITH
(
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n'
)

BULK
INSERT NBA_Playoffs15
FROM 'C:\Users\willieman\Desktop\Life\SQL\Data\NBA Data\Cavaliers_1stRd_15.csv'
WITH
(
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n'
)

BULK
INSERT NBA_Playoffs15
FROM 'C:\Users\willieman\Desktop\Life\SQL\Data\NBA Data\Cavaliers_Conference_15.csv'
WITH
(
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n'
)

BULK
INSERT NBA_Playoffs15
FROM 'C:\Users\willieman\Desktop\Life\SQL\Data\NBA Data\Cavaliers_Final_15.csv'
WITH
(
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n'
)

BULK
INSERT NBA_Playoffs15
FROM 'C:\Users\willieman\Desktop\Life\SQL\Data\NBA Data\Cavaliers_Semi_15.csv'
WITH
(
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n'
)

BULK
INSERT NBA_Playoffs15
FROM 'C:\Users\willieman\Desktop\Life\SQL\Data\NBA Data\Clippers_1stRd_15.csv'
WITH
(
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n'
)

BULK
INSERT NBA_Playoffs15
FROM 'C:\Users\willieman\Desktop\Life\SQL\Data\NBA Data\Clippers_Semi_15.csv'
WITH
(
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n'
)

BULK
INSERT NBA_Playoffs15
FROM 'C:\Users\willieman\Desktop\Life\SQL\Data\NBA Data\Grizzlies_1stRd_15.csv'
WITH
(
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n'
)

BULK
INSERT NBA_Playoffs15
FROM 'C:\Users\willieman\Desktop\Life\SQL\Data\NBA Data\Grizzlies_Semi_15.csv'
WITH
(
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n'
)

BULK
INSERT NBA_Playoffs15
FROM 'C:\Users\willieman\Desktop\Life\SQL\Data\NBA Data\Hawks_1stRd_15.csv'
WITH
(
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n'
)

BULK
INSERT NBA_Playoffs15
FROM 'C:\Users\willieman\Desktop\Life\SQL\Data\NBA Data\Hawks_Conference_15.csv'
WITH
(
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n'
)

BULK
INSERT NBA_Playoffs15
FROM 'C:\Users\willieman\Desktop\Life\SQL\Data\NBA Data\Hawks_Semi_15.csv'
WITH
(
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n'
)

BULK
INSERT NBA_Playoffs15
FROM 'C:\Users\willieman\Desktop\Life\SQL\Data\NBA Data\Mavericks_1stRd_15.csv'
WITH
(
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n'
)

BULK
INSERT NBA_Playoffs15
FROM 'C:\Users\willieman\Desktop\Life\SQL\Data\NBA Data\Nets_1stRd_15.csv'
WITH
(
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n'
)

BULK
INSERT NBA_Playoffs15
FROM 'C:\Users\willieman\Desktop\Life\SQL\Data\NBA Data\Pelicans_1stRd_15.csv'
WITH
(
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n'
)

BULK
INSERT NBA_Playoffs15
FROM 'C:\Users\willieman\Desktop\Life\SQL\Data\NBA Data\Raptors_1stRd_15.csv'
WITH
(
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n'
)

BULK
INSERT NBA_Playoffs15
FROM 'C:\Users\willieman\Desktop\Life\SQL\Data\NBA Data\Rockets_1stRd_15.csv'
WITH
(
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n'
)

BULK
INSERT NBA_Playoffs15
FROM 'C:\Users\willieman\Desktop\Life\SQL\Data\NBA Data\Rockets_Conference_15.csv'
WITH
(
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n'
)

BULK
INSERT NBA_Playoffs15
FROM 'C:\Users\willieman\Desktop\Life\SQL\Data\NBA Data\Spurs_1stRd_15.csv'
WITH
(
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n'
)

BULK
INSERT NBA_Playoffs15
FROM 'C:\Users\willieman\Desktop\Life\SQL\Data\NBA Data\Warriors_1stRd_15.csv'
WITH
(
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n'
)

BULK
INSERT NBA_Playoffs15
FROM 'C:\Users\willieman\Desktop\Life\SQL\Data\NBA Data\Warriors_Conference_15.csv'
WITH
(
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n'
)

BULK
INSERT NBA_Playoffs15
FROM 'C:\Users\willieman\Desktop\Life\SQL\Data\NBA Data\Warriors_Final_15.csv'
WITH
(
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n'
)

BULK
INSERT NBA_Playoffs15
FROM 'C:\Users\willieman\Desktop\Life\SQL\Data\NBA Data\Warriors_Semi_15.csv'
WITH
(
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n'
)

BULK
INSERT NBA_Playoffs15
FROM 'C:\Users\willieman\Desktop\Life\SQL\Data\NBA Data\Wizards_1stRd_15.csv'
WITH
(
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n'
)

BULK
INSERT NBA_Playoffs15
FROM 'C:\Users\willieman\Desktop\Life\SQL\Data\NBA Data\Wizards_Semi_15.csv'
WITH
(
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n'
)

-- this is to make entries unique
ALTER TABLE NBA_Playoffs15 DROP column ID
ALTER TABLE NBA_Playoffs15 ADD ID INT IDENTITY(1,1)



-- Playing Fun with SQL now
select * from NBA_Playoffs15

-- Players who are over 30 playing in 
select distinct Player 
from NBA_Playoffs15
where Age > 30

-- players who scored over 50 points in a series and held a field goal percentage higher than .5
select Player, PTS, FGP, series
from NBA_Playoffs15
where FGP > .5 and  PTS > 50

-- Older players active in the NBA 2015 Playoffs
select distinct(Player)
from NBA_Playoffs15
where Age = (select max(age) from NBA_Playoffs15)


-- Players Averaged more than 8 points, 8 rebounds, and 8 assists
select player, PTSAVG, TRBAVG, ASTAVG, Series
from NBA_Playoffs15
where PTSAVG > 5 and TRBAVG > 5 and ASTAVG > 5

-- Player(s) Averaged more than 8 points, 8 rebounds, and 8 assists
select player, PTSAVG, TRBAVG, ASTAVG, Series
from NBA_Playoffs15
where PTSAVG > 8 and TRBAVG > 8 and ASTAVG > 8

-- Players Ordered by Most minutes in the Western Conference 1st Round
select distinct(player),MP, Series
from NBA_Playoffs15
where Series = 'West 1stRd_15' and MP > 40
ORDER BY MP DESC

-- Most Scoring Players in any Series of the NBA 2015 Playoffs
select distinct(player), Series, PTSAVG
from NBA_Playoffs15
ORDER BY PTSAVG DESC

-- Low Scoring Players in any Series of the NBA 2015 Playoffs
select distinct(player), Series, PTSAVG
from NBA_Playoffs15
where PTS > 0
ORDER BY PTSAVG ASC

