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
-- 
-- 
INSERT INTO movies (title, release_date, rating, director_id, genre_id)
VALUES
('Gladiator', '2000-05-05 00:00:00', 8.5, 2, 1),
('The Lord of the Rings: The Return of the King', '2003-12-17 00:00:00', 9.0, 3, 3),
('Million Dollar Baby', '2004-12-15 00:00:00', 8.1, 4, 2),
('Inception', '2010-07-16 00:00:00', 8.8, 1, 4),
('Interstellar', '2014-11-07 00:00:00', 8.6, 1, 4);
('Dragon Ball Z: Broly Second Coming (Doragon bôru Z 10: Kiken na futari! Sûpâ senshi wa nemurenai)','2003-03-02 00:00:00',8.9, 6),
('Young Mr. Lincoln','2012-4-11',8.7, 5)
-- 
INSERT INTO movies_actors (movie_id, actor_id, role)
VALUES
(1, 2, 'Maximus Mentor'),
(2, 1, 'Aragorn Inspired Role'),
(3, 2, 'Eddie Scrap-Iron'),
(4, 1, 'Dom Cobb'),
(5, 1, 'Cooper');
-- 
INSERT INTO actors (first_name,last_name) 
VALUES ('leonardo', 'decaprio'),
('morgan','freeman'),('tom','cruise')
-- 
INSERT INTO directors (first_name, last_name)
VALUES
('Christopher', 'Nolan'),
('Ridley', 'Scott'),
('Peter', 'Jackson'),
('Clint', 'Eastwood'),
('James', 'Cameron');
-- 
INSERT INTO genres (name)
VALUES
('Action'),
('Drama'),
('Fantasy'),
('Sci-Fi'),
('Thriller'),
('Animation')


select *
FROM directors;
-- 
select *
FROM movies;

SELECT first_name
FROM actors
WHERE first_name LIKE '%s';
