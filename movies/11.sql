-- The titles of the five highest-rated movies that Chadwick Boseman starred in,
-- ordered from highest to lowest rating.
SELECT title
FROM movies
JOIN ratings ON movies.id = ratings.movie_id
WHERE movies.id IN (
    SELECT movie_id
    FROM stars
    WHERE person_id = (
        SELECT id
        FROM people
        WHERE name = 'Chadwick Boseman'
    )
)
ORDER BY rating DESC
LIMIT 5;
