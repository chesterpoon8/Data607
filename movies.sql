-- SQL SCRIPT FOR MOVIES DATABASE


-- PERSON TABLE

CREATE TABLE PERSON 
(
  NAME_ID INTEGER NOT NULL AUTO_INCREMENT ,
  NAME varchar(100) NOT NULL,
  AGE int NOT NULL,
  SEX varchar(6) NOT NULL,
  PRIMARY KEY (NAME_ID)
);

INSERT INTO PERSON (NAME, AGE, SEX)
VALUES 	('SARAH', 28, 'F'),
		('NOAH', 26, 'M'),
        ('JONAS', 22, 'M'),
        ('CHESTER', 37, 'M'),
        ('DANIELLE', 28, 'F'),
        ('PEPPER', 5, 'F'),
        ('RORY', 39, 'M')
;

-- MOVIES TABLE

CREATE TABLE MOVIES
(
	MOVIE_ID VARCHAR(6) NOT NULL,
    MOVIE VARCHAR(100) NOT NULL,
    PRIMARY KEY (MOVIE_ID)
);


INSERT INTO MOVIES (MOVIE_ID, MOVIE)
VALUES	('AVE','Avengers: Infinity War'),
		('BLA','Black Panther'),
		('JUR','Jurassic World: Fallen Kingdom'),
		('INC','Incredibles 2'),
		('DEA','Deadpool 2'),
		('MIS','Mission: Impossible – Fallout'),
		('ANT','Ant-Man and the Wasp'),
		('REA','Ready Player One'),
		('MAM','Mamma Mia! Here We Go Again'),
		('STA','Star Wars: The Last Jedi'),
		('BEA','Beauty and the Beast'),
		('THE','The Fate of the Furious'),
		('DES','Despicable Me 3'),
		('JUM','Jumanji: Welcome to the Jungle'),
		('SPI','Spider-Man: Homecoming'),
		('GUA','Guardians of the Galaxy Vol. 2'),
		('THO','Thor: Ragnarok'),
		('WON','Wonder Woman');

-- SCORE TABLE

CREATE TABLE SCORE
(
	SCORE_ID INTEGER NOT NULL AUTO_INCREMENT,
	SCORE INT NOT NULL,
    MOVIE_ID VARCHAR(6) NOT NULL,
    NAME_ID INT NOT NULL,
    PRIMARY KEY (SCORE_ID),
    FOREIGN KEY (MOVIE_ID) REFERENCES MOVIES (MOVIE_ID) ON UPDATE CASCADE,
    FOREIGN KEY (NAME_ID) REFERENCES PERSON (NAME_ID) ON UPDATE CASCADE
);

INSERT INTO SCORE (SCORE,MOVIE_ID,NAME_ID)
VALUES  (4,'MIS',1),
		(5,'STA',1),
		(3,'BEA',1),
		(4,'BLA',2),
        (3,'STA',2),
        (2,'WON',2),
        (5,'AVE',3),
        (4,'BLA',3),
        (4,'JUR',3),
        (4,'INC',3),
        (5,'DEA',3),
        (4,'MAM',3),
        (5,'STA',3),
        (2,'BEA',3),
        (5,'THE',3),
        (4,'DES',3),
        (3,'JUM',3),
        (3,'SPI',3),
        (3,'THO',3),
        (3,'WON',3),
        (4,'AVE',4),
        (5,'BLA',4),
        (4,'DEA',4),
        (5,'STA',4),
        (4,'THO',4),
        (4,'WON',4),
        (4,'AVE',5),
        (5,'BLA',5),
        (4,'BEA',5),
        (4,'THE',5),
        (2,'DES',5),
        (2,'JUM',5),
        (4,'SPI',5),
        (5,'GUA',5),
        (4,'THO',5),
        (5,'WON',5),
        (5,'BLA',6),
        (5,'INC',6),
        (5,'STA',6),
        (5,'BEA',6),
        (5,'JUM',6),
        (5,'AVE',7),
        (5,'BLA',7),
        (2,'MIS',7),
        (4,'ANT',7),
        (2,'REA',7),
        (4,'STA',7),
        (1,'BEA',7),
        (4,'DES',7),
        (3,'JUM',7),
        (4,'SPI',7),
        (4,'GUA',7),
        (4,'THO',7),
        (3,'WON',7)
        
;
