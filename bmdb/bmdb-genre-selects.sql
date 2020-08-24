SELECT * FROM bmdb.genre;

SELECT title, director, genre.name, firstName, lastName, role from Genre
JOIN MovieGenre
ON genre.id = MovieGenre.genreID
JOIN Movie
on movieGenre.movieId = movie.ID
JOIN actor
on movie.id = actor.id
JOIN credit
ON credit.movieID = movie.id;

SELECT title, genre.name from Genre
JOIN MovieGenre
ON genre.id = MovieGenre.genreID
JOIN Movie
on movieGenre.movieId = movie.ID
WHERE genre.name = 'romance';
