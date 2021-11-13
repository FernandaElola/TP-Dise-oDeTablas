-- Micro desafío Paso 1

SELECT title, name
FROM series
INNER JOIN genres ON genre_id = genres.id;

SELECT title, first_name, last_name
FROM episodes
INNER JOIN actor_episode ON episode_id = episodes.id
INNER JOIN actors ON actor_id = actors.id;

-- Micro desafío Paso 2

SELECT DISTINCT CONCAT(first_name, ' ', last_name) AS 'Actores de Guerra de las Galaxias'
FROM actors
INNER JOIN actor_movie ON actor_id = actors.id
INNER JOIN movies ON movie_id = movies.id
WHERE title LIKE '%Guerra de las galaxias%';


-- Micro desafío Paso 3

SELECT  movies.title AS Pelicula,  COALESCE(genres.name, 'No tiene género') AS Genero
FROM movies
LEFT JOIN genres ON genres.id = movies.genre_id;

-- Micro desafío Paso 4

SELECT title AS Título, DATEDIFF(end_date, release_date) AS Duración
FROM series;

-- Micro desafío Paso 5

SELECT first_name, last_name
FROM actors
WHERE LENGTH(first_name) > 6
ORDER BY first_name;

SELECT COUNT(id) AS 'Cantidad de episodios'
FROM episodes;

SELECT series.title, COUNT(seasons.id) AS seasons
FROM series
INNER JOIN seasons ON serie_id = series.id
GROUP BY series.title;

SELECT genres.name, COUNT(movies.id) AS movies
FROM genres
INNER JOIN movies ON genre_id = genres.id
GROUP BY genres.name
HAVING COUNT(movies.id) >= 3;




