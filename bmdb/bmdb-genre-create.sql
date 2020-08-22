Drop table movieGenre;
Drop table genre;

Create table Genre (
ID			integer			primary key auto_increment,
name		varchar(30)		not null
);

Create table MovieGenre (
ID			integer			primary key auto_increment,
movieID		integer			not null,
genreID		integer			not null,
FOREIGN KEY (movieID) references Movie(ID),
FOREIGN KEY (genreID) references Genre(ID),
CONSTRAINT gen_mov unique (movieID, genreID)
);

SELECT * FROM genre; 

INSERT INTO Genre(name) VALUES 
('Action'),
('Comedy'),
('Sci-Fi'),
('Horror'),
('Romance'),
('Thriller'),
('Drama'),
('Mystery'),
('Crime'),
('Animation'),
('Adventure'),
('Fantasy'),
('Comedy-Romance'),
('Action-Comedy'),
('Superhero'),
('Western'),
('History'),
('War');

INSERT INTO MovieGenre (movieID, genreID) VALUES
(1, 1),
(1, 11),
(1, 12),
(2, 2),
(2, 5),
(3, 1),
(3, 11),
(3,3),
(4, 13),
(5, 2),
(5, 16),
(6, 10),
(6, 11),
(6, 2),
(7, 1),
(7, 7),
(7, 17),
(8, 1),
(8, 7),
(8, 18),
(9, 1),
(9, 9),
(9, 7);
