-- Select all
SELECT * FROM bmdb.actor;

-- Select all actors for gender
SELECT * FROM bmdb.actor 
WHERE gender = 'M';

-- Select actors by lastname
SELECT * FROM bmdb.actor
WHERE LastName = 'Hamil';

-- SELECT actors whose last name starts with 'h'
SELECT * FROM bmdb.actor
WHERE LastName 
Like 'H%';

-- Select actors born in the 1960's
SELECT * FROM bmdb.actor
WHERE birthdate 
between '1960-01-01' AND '1969-12-31';

-- Select movies by rating
SELECT * FROM bmdb.movie
WHERE rating = 'pg-13';

-- Select movies by director
SELECT * FROM bmdb.movie
WHERE director = 'Peter Jackson';