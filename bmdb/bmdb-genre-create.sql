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
('War'),
('Family');

INSERT INTO MovieGenre (movieID, genreID) VALUES
(1, 1), (1, 11), (1, 12),
(2, 2), (2, 5),
(3, 1), (3, 11), (3,3),
(4, 13),
(5, 2), (5, 16),
(6, 10), (6, 11), (6, 2),
(7, 1), (7, 7), (7, 17), 
(8, 1), (8, 7), (8, 18),
(9, 1), (9, 9), (9, 7),
(10, 1), (10, 11), (10, 7),
(11, 7), 
(12, 1), (12, 11), (12, 7),
(13, 11), (13, 12),
(14, 7),
(15, 7), (15, 4), (15, 3),
(16, 1), (16, 7), (16, 17),
(17, 2), (17, 7), (17, 19),
(18, 2),
(19, 2), (19, 5), (19, 3),
(20, 2),
(21, 2), (21, 12), (21, 5);
