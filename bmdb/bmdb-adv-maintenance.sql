SELECT * FROM movie;
SELECT * FROM actor;

SELECT firstName, lastName, role, title, year, rating, director FROM credit
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
('Andie', 'MacDowell', 'F', '1958-04-21');

-- 3 add related credit entries
INSERT INTO Credit (ActorID, MovieID, role) VALUES
(5, 21, 'The Babe'),
(6, 21, 'Scotty Smalls'),
(7, 22, 'Ferris Bueller'),
(8, 22, 'Cameron Frye'),
(9, 23, 'Lisa'),
(4, 23, 'Gary Wallace'),
(10, 24, 'Clark'),
(11, 24, 'Ellen'),
(12, 25, 'Phil'),
(13, 25, 'Rita');

-- Bonus: Classic Model - Full
