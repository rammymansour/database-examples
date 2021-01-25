CREATE DATABASE cinema charset=utf8;

USE cinema;

CREATE TABLE actors (
    id INT PRIMARY KEY AUTO_INCREMENT,
    firstname VARCHAR(200),
    lastname VARCHAR(200)
);

CREATE TABLE movies (
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(200)
);

CREATE TABLE movie_actors (
    id INT PRIMARY KEY AUTO_INCREMENT,
    actorId INT,
    movieId INT,
    FOREIGN KEY (actorId) REFERENCES actors(id),
    FOREIGN KEY (movieId) REFERENCES movies(id)
);

INSERT INTO actors (firstname, lastname) VALUES ("Will", "Smith");

INSERT INTO movies (title) VALUES ("iRobot");

INSERT INTO movie_actors (actorId, movieId) VALUES (1, 1);


# actors
+----+-----------+----------+
| id | firstname | lastname |
+----+-----------+----------+
|  1 | Will      | Smith    |
+----+-----------+----------+

# movies
+----+--------+
| id | title  |
+----+--------+
|  1 | iRobot |
+----+--------+

# movie_actors
+----+---------+---------+
| id | actorId | movieId |
+----+---------+---------+
|  1 |       1 |       1 |
+----+---------+---------+



SELECT * FROM actors, movies, movie_actors
WHERE actors.id=1
AND movies.id=movie_actors.movieId
AND movie_actors.actorId=actors.id;


# Kopplar ihop movies tabellen
# med actors tabellen
# dar "actorId" inuti movies ar
# samma som "id" inuti actors tabellen.
SELECT * FROM movies
JOIN actors
ON actorId=actors.id;