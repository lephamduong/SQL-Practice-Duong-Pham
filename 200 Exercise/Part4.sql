SELECT * FROM Movies;


SELECT * FROM MovieTheaters;

SELECT Title FROM Movies;

SELECT DISTINCT Rating from Movies;

SELECT * FROM Movies
WHERE Rating IS NULL;

SELECT * FROM MovieTheaters
Where Movie IS NULL;

SELECT * 
FROM MovieTheaters LEFT JOIN Movies
ON Movietheaters.Movie = Movies.Code;

SELECT *
FROM Movies LEFT JOIN MovieTheaters
ON Movies.Code = MovieTheaters.Movie

SELECT Title FROM Movies
WHERE Code NOT IN (
	SELECT Movie FROM MovieTheaters
	WHERE Movie IS NOT NULL
)

SELECT Movies.Title, MovieTheaters.Movie
FROM MovieTheaters RIGHT JOIN Movies 
ON Movietheaters.Movie = Movies.Code
WHERE MovieTheaters.Movie IS NULL

INSERT INTO Movies(Code,Title,Rating) VALUES(9,'One, Two, Three',NULL);

UPDATE Movies SET Rating='G' WHERE Rating IS NULL;

DELETE FROM MovieTheaters
WHERE Movie IN (
	SELECT Code FROM Movies
	WHERE Rating= 'NC-17'
)

