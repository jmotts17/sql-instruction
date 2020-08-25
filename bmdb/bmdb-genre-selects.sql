SELECT * FROM bmdb.genre;

-- 5 Table Join
SELECT movie.title, movie.year, movie.director, genre.name, actor.firstName, actor.lastName, credit.role FROM movie
JOIN credit
ON credit.movieID = movie.ID
JOIN actor
on actor.id = credit.actorID
JOIN moviegenre
on moviegenre.movieID = movie.id
JOIN genre
ON genre.id = moviegenre.genreID;

-- Displaying all romance movie titles
SELECT title, genre.name from Genre
JOIN MovieGenre
ON genre.id = MovieGenre.genreID
JOIN Movie
on movieGenre.movieId = movie.ID
WHERE genre.name = 'romance';

-- id of comedy genre
SELECT id FROM genre
WHERE name = 'Comedy';

-- 3 table joib to list action movies
SELECT title, g.name 
	FROM movie m
	JOIN moviegenre mg
	ON mg.movieID = m.ID
	JOIN genre g
    ON g.ID = mg.genreID
WHERE g.ID = (SELECT id FROM genre
				WHERE name = 'Action');
