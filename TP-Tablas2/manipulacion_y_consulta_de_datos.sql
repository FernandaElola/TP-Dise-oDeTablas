-- Micro desafío 1

INSERT INTO genres (name, ranking, active) VALUES 
("Inverstigación", 13, 1);

UPDATE genres
SET name = "Investigación Científica"
WHERE id  = 13;

DELETE FROM genres
WHERE id  = 13;

SELECT * FROM movies;

SELECT first_name, last_name, rating FROM actors;

SELECT title AS Título FROM series;

-- Micro desafío 2

SELECT first_name, last_name FROM actors WHERE rating > 7.5;

SELECT title, rating, awards FROM movies WHERE rating > 7.5 AND awards > 2;

SELECT title, rating FROM movies  ORDER BY rating;

-- Micro desafío 3

SELECT title FROM movies LIMIT 3;

SELECT title FROM movies ORDER BY rating DESC LIMIT 5;

SELECT title FROM movies ORDER BY rating DESC LIMIT 5 OFFSET 5;

SELECT CONCAT(first_name, ' ', last_name) AS Actores FROM actors LIMIT 10;

SELECT CONCAT(first_name, ' ', last_name) AS Actores FROM actors LIMIT 10 OFFSET 20;

-- Micro desafío 4

SELECT title, rating FROM movies WHERE title LIKE "%Harry Potter%";

SELECT CONCAT(first_name, ' ', last_name) AS Actores_Llamados_Sam FROM actors WHERE first_name LIKE "Sam%";

SELECT title FROM movies WHERE YEAR(release_date) BETWEEN 2004 AND 2008; 

