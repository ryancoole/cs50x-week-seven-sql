-- The titles and ratings of all movies released in 2010,
-- ordered by rating (descending) and then alphabetically by title.
SELECT title, rating
FROM movies
JOIN ratings ON movies.id = ratings.movie_id
WHERE year = 2010
ORDER BY rating DESC, title ASC;
