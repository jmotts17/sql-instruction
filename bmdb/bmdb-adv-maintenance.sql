SELECT * FROM movie;
SELECT * FROM actor;

SELECT firstName, lastName, role, title FROM credit
INNER JOIN actor
on credit.actorID = actor.ID
INNER JOIN movie
on credit.movieID = movie.ID;

-- 1 add 5 new movies, but don't define the ID
INSERT INTO Movie (Title, Year, Rating, Director) VALUES 
('The Sandlot', 1993, 'PG', 'David Mickey Evans'),
('Ferris Bueller\'s Day Off', 1986, 'PG-13', 'John Hughes'),
('Weird Science', 1985, 'PG-13', 'John Hughes'),
('National Lampoon\'s Christmas Vacation', 1989, 'PG-13', 'Jeremiah S. Chechik'),
('Groundhog Day', 1993, 'PG', 'Harold Ramis');

-- 2 add related new actors, but don't define the ID
INSERT INTO Actor (firstName, lastName, gender, birthdate) VALUES
('Art', 'LaFleur', 'M', '1943-09-09'),
('Tom', 'Guiry', 'M', '1981-10-12'),
('Matthew', 'Broderick', 'M', '1962-03-21'),
('Alan', 'Ruck', 'M', '1956-07-01'),
('Kelly', 'LeBrock', 'F', '1960-03-24'),
('Chevy', 'Chase', 'M', '1943-10-08'),
('Beveryly', 'D\'Angelo', 'F', '1951-11-15'),
('Bill', 'Murray', 'M', '1950-10-21'),
('Andie', 'MacDowell', 'F', '1958-04-21'),
('Bruce', 'Willis', 'M', '1955-03-19'),				-- Start Credit
('Milla', 'Jovovich', 'F', '1975-12-17'),
('John', 'Cusack', 'M', '1966-06-28'),
('David Ogden', 'Stiers', 'M', '1942-10-31'),
('Cleavon', 'Little', 'M', '1939-06-01'),
('Gene', 'Wilder', 'M', '1933-06-11'),
('Tom', 'Hanks', 'M', '1956-07-09'),
('Tim', 'Allen', 'M', '1953-06-13'),
('Mel', 'Gibson', 'M', '1956-01-03'),
('Heath', 'Ledger', 'M', '1979-04-04'),
('Ken', 'Watanbe', 'M', '1959-10-21'),
('Tom', 'Cruise', 'M', '1962-07-07'),
('Christian', 'Bale', 'M', '1974-01-30'),
('Russell', 'Crowe', 'M', '1964-04-07'),
('Joaquin', 'Phoenix', 'M', '1974-10-28'),
('Clint', 'Eastwood', 'M', '1930-05-31'),
('Bee', 'Vang', 'M', '1991-11-04'),
('Elijah', 'Wood', 'M', '1981-01-28'),
('Ian', 'McKellen', 'M', '1939-05-25'),
('Martin', 'Freeman', 'M', '1971-09-08'),
('Andy', 'Serkis', 'M', '1964-04-20'),
('Tim', 'Robbins', 'M', '1958-10-16'),
('Morgan', 'Freeman', 'M', '1937-06-01'),
('Emily', 'Blunt', 'F', '1983-02-23'),
('John', 'Krasinski', 'M', '1979-10-20'),
('Scott', 'Eastwood', 'M', '1986-03-21'),
('Orlando', 'Bloom', 'M', '1977-01-13');

-- 3 add related credit entries
INSERT INTO Credit (ActorID, MovieID, role) VALUES
(5, 17, 'The Babe'),
(6, 17, 'Scotty Smalls'),
(7, 18, 'Ferris Bueller'),
(8, 18, 'Cameron Frye'),
(9, 19, 'Lisa'),
(4, 19, 'Gary Wallace'),
(10, 20, 'Clark'),
(11, 20, 'Ellen'),
(12, 21, 'Phil'),
(13, 21, 'Rita'),
(14, 3, 'Korben Dallas'),
(15, 3, 'Leeloo'),
(16, 4, 'Lane Meyer'),
(17, 4, 'Al Meyer'),
(18, 5, 'Bart'),
(19, 5, 'Jim'),
(20, 6, 'Woody'),
(21, 6, 'Buzz Lightyear'),
(22, 7, 'Benjamin Martin'),
(23, 7, 'Gabriel Martin'),
(24, 8, 'Katsumoto'),
(25, 8, 'Nathan Algren'),
(26, 9, 'Bruce Wayne'),
(23, 9, 'Joker'),
(27, 10, 'Maximus'),
(28, 10, 'Commodus'),
(29, 11, 'Walt Kowalski'),
(30, 11, 'Thao'),
(31, 12, 'Frodo'),
(32, 12, 'Gandalf'),
(40, 12, 'Legolas'),
(33, 13, 'Bilbo'),
(32, 13, 'Gandalf'),
(34, 13, 'Gollum'),
(35, 14, 'Andy Dufresne'),
(36, 14, 'Ellis Boyd \'Red\' Redding'),
(37, 15, 'Evelyn Abbott'),
(38, 15, 'Lee Abbott'),
(39, 16, 'SSG Clint Romesha'),
(40, 16, 'CPT Ben Keating');
