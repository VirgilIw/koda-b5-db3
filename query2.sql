CREATE TABLE "movies" (
  "id" int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  "title" VARCHAR(255),
  "release_date" TIMESTAMP,
  "rating" FLOAT(53),
  "director_id" INT,
  "genre_id" INT,
  FOREIGN KEY(director_id) REFERENCES directors(id),
  FOREIGN KEY(genre_id) REFERENCES genres(id)
);
-- 
CREATE TABLE "actors" (
  "id" int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  "first_name" VARCHAR(100) NOT NULL,
  "last_name" VARCHAR(100) NOT NULL
);

CREATE TABLE "movies_actors" (
  "movie_id" INT,
  "actor_id" INT,
  "role" VARCHAR(100) NOT NULL
);
-- 
CREATE TABLE "directors" (
  "id" int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  "first_name" VARCHAR(100) NOT NULL,
  "last_name" VARCHAR(100) NOT NULL
);
-- 
CREATE TABLE "genres" (
  "id" int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  "name" VARCHAR(100) NOT NULL
);

SELECT 
movies.title, movies.release_date,movies.rating, movies.director_id, movies.genre_id
FROM movies m;
JOIN directors d ON m.director_id = d.

SELECT
-- m.id AS movie_id,
m.title,
m.release_date,
m.rating,
d.first_name AS director_first_name,
d.last_name AS director_last_name,
g.name AS genre_name
FROM movies m
-- Foreign Key (FK) → Primary Key (PK)
-- on harus data yang terkait antar tab;et
JOIN directors d ON m.director_id = d.id
JOIN genres g ON m.genre_id = g.id
LIMIT 50;

SELECT
m.title AS movie_title,
a.first_name AS actor_first_name,
a.last_name AS actor_last_name,
ma.role
FROM movies m
JOIN movies_actors ma ON m.id = ma.movie_id
JOIN actors a ON ma.actor_id = a.id;