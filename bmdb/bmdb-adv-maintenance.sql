-- inserts to bmdb outside of create script

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
('Kelly', 'LeBrock', 'F', '1960-03-24');

-- 3 add related credit entries


-- Bonus: Classic Model - Full
