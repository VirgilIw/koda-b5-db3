SELECT
  d.id,
  d.first_name,
  d.last_name,
  COUNT(DISTINCT m.genre_id) AS total_genre
FROM directors d
JOIN movies m ON d.id = m.director_id
GROUP BY d.id, d.first_name, d.last_name;


SELECT
  a.id,
  a.first_name,
  a.last_name,
  COUNT(ma.role) AS total_roles
FROM actors a
JOIN movies_actors ma ON a.id = ma.actor_id
GROUP BY a.id, a.first_name, a.last_name
HAVING COUNT(ma.role) > 5;

SELECT
  d.id,
  d.first_name,
  d.last_name,
  COUNT(m.id) AS total_movies
FROM directors d
JOIN movies m ON d.id = m.director_id
GROUP BY d.id, d.first_name, d.last_name
ORDER BY total_movies DESC
LIMIT 1;

SELECT
  EXTRACT(YEAR FROM release_date) AS year,
  COUNT(*) AS total_movies
FROM movies
GROUP BY year
ORDER BY total_movies DESC
LIMIT 1;

SELECT
  m.id,
  m.title,
  STRING_AGG(a.first_name || ' ' || a.last_name, ', ') AS actors
FROM movies m
JOIN movies_actors ma ON m.id = ma.movie_id
JOIN actors a ON ma.actor_id = a.id
GROUP BY m.id, m.title;
