-- Select all movies
SELECT * FROM movie;

-- Select a movie by id
-- Uses a 'where' clause
SELECT * FROM movie
WHERE id = 2;

-- Select certain columns, all rows
SELECT title, year FROM movie;

-- Select all movies rated PG
SELECT * FROM movie
WHERE rating = 'PG';

-- Select all movies rated PG, ordered by title (alpha)
SELECT * FROM movie
WHERE rating = 'PG'
ORDER BY title;

-- Select all movies rated PG, ordered by title (alpha, descending)
SELECT * FROM movie
WHERE rating = 'PG'
ORDER BY title DESC;

-- Select statement using the 'in' keyword
-- all movies released in 1977 or 1997
SELECT * FROM movie
WHERE year IN (1977, 1997);

-- Select statement using a range <>
SELECT * FROM movie
WHERE year > 1980
and year < 1990;

-- Select statement using the 'like' keyword
SELECT * FROM movie
WHERE title LIKE '%E%';

