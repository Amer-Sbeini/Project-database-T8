/*
	Auteur:		Team(Jason)
	Datum:		05/06/2022
	Opdracht:	Project
*/

--Aanmaken database
USE master
DROP DATABASE IF EXISTS ProjectT8;
CREATE DATABASE ProjectT8;
GO
USE ProjectT8;

--Aanmaken tabellen en toevoegen via INSERT INTO
CREATE TABLE Team
(
	TeamId		INT IDENTITY (1,1) NOT NULL,
	[Name]		varchar(50) NOT NULL
)


CREATE TABLE [Match]
(
	MatchId			INT IDENTITY (1,1) NOT NULL,
	TeamId			INT ,
	RoundAmount		INT NOT NULL,
	WinnerPerRound	varchar(50)
)

--Aanmaken PK
ALTER TABLE Team
ADD CONSTRAINT PK_TeamId
PRIMARY KEY (TeamId);

ALTER TABLE [Match]
ADD CONSTRAINT PK_MatchId
PRIMARY KEY (MatchId);

--Aanmaken FK
ALTER TABLE [Match]
ADD CONSTRAINT FK_Match_TeamId
FOREIGN KEY(TeamId)
REFERENCES Team(TeamId);

--Aanmaken AK
ALTER TABLE Team
ADD CONSTRAINT AK_Name
UNIQUE ([Name]);

INSERT INTO Team ([Name])
VALUES
	('Cloud9'),
	('FaZe'),
	('TSM'),
	('NRG'),
	('Team Mystic'),
	('Team Valor'),
	('Optic'),
	('Complexity'),
	('Allegiance'),
	('Vitality'),
	('Epsilon'),
	('Luminosity'),
	('100 Thieves'),
	('G2'),
	('Liquid'),
	('Fnatic'),
	('LGO'),
	('T1'),
	('Astralis'),
	('Envy'),
	('NiP'),
	('Nova'),
	('SKG'),
	('Immortals'),
	('Dignitas'),
	('T-Empire'),
	('Splyce'),
	('Ghost'),
	('Secret'),
	('Mystic'),
	('Flash'),
	('The maze'),
	('Big squizy'),
	('El balsamico')
GO

INSERT INTO [Match](TeamId, RoundAmount)
VALUES
	('1', '3'),
	('2', '3'),
	('3', '3'),
	('4', '3'),
	('5', '3'),
	('6', '3'),
	('7', '3'),
	('8', '3'),
	('9', '3'),
	('10', '3'),
	('11', '3'),
	('12', '3'),
	('13', '3'),
	('14', '3'),
	('15', '3'),
	('16', '3'),
	('17', '3'),
	('18', '3'),
	('19', '3'),
	('20', '3'),
	('21', '3'),
	('22', '3'),
	('23', '3'),
	('24', '3'),
	('25', '3'),
	('26', '3'),
	('27', '3'),
	('28', '3'),
	('29', '3'),
	('30', '3'),
	('31', '3'),
	('32', '3'),
	('33', '3'),
	('34', '3');


	--Aanmaken full backup
BACKUP DATABASE ProjectT8 
TO DISK = N'c:\Databases\Project.bak';