SELECT * FROM bmdb.credit;

-- inner join: data in common between 2 tables
SELECT * FROM movie
	join credit
    on movie.id = credit.movieId;
    
-- inner join credit - actor
SELECT * FROM credit c
	join actor a
    on c.actorID = a.ID;
    
-- outer join, all movies and actors assigned
SELECT * FROM movie
	LEFT JOIN credit
    ON movie.id = credit.movieID;