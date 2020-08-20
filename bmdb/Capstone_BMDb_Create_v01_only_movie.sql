-- create and select the database
DROP DATABASE IF EXISTS bmdb;
CREATE DATABASE bmdb;
USE bmdb;													-- Same as double clicking Schema

-- create Movie table
-- DROP TABLE IF EXISTS Movie;								-- Drops the table, but drop database drops all tables so not needed
Create table Movie (
ID 			integer 		primary key auto_increment,
Title 		varchar(255) 	not null,
Year 		integer 		not null,
Rating 		varchar(5) 		not null,
Director 	varchar(255) 	not null,
CONSTRAINT unq_movie unique (Title, Year)
);

-- create Actor table
Create table Actor (
ID 			integer 		primary key auto_increment,
FirstName 	varchar(255) 	not null,
LastName 	varchar(255) 	not null,
Gender 		varchar(1) 		not null,
BirthDate 	date 			not null,
CONSTRAINT unq_actor unique (FirstName, LastName, BirthDate)
);

-- create Credit table
-- business rule - combo of actor+movie must be unique
Create table Credit (
ID			integer			primary key auto_increment,
actorID		integer			not null,
movieID 	integer			not null,
role		varchar(255)	not null,
FOREIGN KEY (ActorID) REFERENCES Actor(ID),
FOREIGN KEY (movieID) REFERENCES Movie(ID),
CONSTRAINT act_mov unique (ActorID, MovieID)
);

-- Add some movies
 insert into Movie VALUES
 	(1, 'Star Wars', 1977, 'PG', 'George Lucas'),
 	(2, 'Sixteen Candles', 1984, 'PG', 'John Hughes'),
  	(3, 'Fifth Element', 1997, 'PG-13', 'Luc Besson'),
 	(4, 'Better Off Dead', 1985, 'PG', 'Savage Steve Holland'),
    (5, 'Blazing Saddles', 1974, 'R', 'Mel Brooks'),
    (6, 'Toy Story', 1995, 'G', 'John Lasseter'),
    (7, 'The Patriot', 2000, 'R', 'Roland Emmerich'),
    (8, 'The Last Samurai', 2003, 'R', 'Edward Zwick'),
    (9, 'The Dark Knight', 2008, 'PG-13', 'Christopher Nolan'),
    (10, 'Gladiator', 2000, 'R', 'Ridley Scott'),
    (11, 'Despicable Me', 2010, 'PG', 'Pierre Coffin'),					-- Has 2 directors
    (12, 'Gran Torino', 2008, 'R', 'Clint Eastwood'),
    (13, 'LOTR: The Fellowship of the Ring', 2001, 'PG-13', 'Peter Jackson'),
    (14, 'The Hobbit', 2012, 'PG-13', 'Peter Jackson'),
    (15, 'The Shawshank Redemption', 1994, 'R', 'Frank Darabont'),
	(16, 'Knives Out', 2019, 'PG-13', 'Rian Johnson'),
	(17, 'A Quiet Place', 2018, 'PG-13', 'John Krasinski'),
	(18, 'The Matrix', 1999, 'R', 'Lana Wachowski'),
	(19, 'The Outpost', 2020, 'PG-13', 'Rod Lurie'),
	(20, 'The Avengers: Endgame', 2019, 'PG-13', 'Anthony Russo');		-- Has 2 directors

-- Add some actors
-- Date fields: YYYY-MM-DD
 insert into Actor VALUES
 	(1, 'Mark', 'Hamil', 'M', '1951-09-25'),
 	(2, 'Harrison', 'Ford', 'M', '1942-07-13'),
    (3, 'Molly', 'Ringwald', 'F', '1968-02-18'),
    (4, 'Anthony Michael', 'Hall', 'M', '1968-04-14');
    
    -- Add data to credit table
    insert into Credit VALUES
    (1, 1, 1, 'Luke Skywalker'),
    (2, 2, 1, 'Han Solo'),
    (3, 3, 2, 'Samantha Baker'),
    (4, 4, 2, 'Geek');