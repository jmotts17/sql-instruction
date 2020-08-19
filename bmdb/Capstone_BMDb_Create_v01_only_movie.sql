-- create and select the database
DROP DATABASE IF EXISTS bmdb;
CREATE DATABASE bmdb;
USE bmdb;													-- Same as double clicking Schema

-- create Movie table
-- DROP TABLE IF EXISTS Movie;								-- Drops the table, but drop database drops all tables so not needed
Create table Movie (
ID 			integer 		primary key auto_increment,
Title 		varchar(255) 	not null unique,
Year 		integer 		not null,
Rating 		varchar(5) 		not null,
Director 	varchar(255) 	not null
-- CONSTRAINT utitle unique (Title)							-- Another way to define the unique constraint
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
