USE IMDB;

-- 1. Find Movie titles with a rating of more than 9.0
SELECT title, movie_rank
FROM Movies JOIN Ratings USING (movieid)
WHERE movie_rank > 8.9
ORDER BY movie_rank DESC;

-- 2. Find Movie titles with a rating of less than 2.5
SELECT title, movie_rank
FROM Movies JOIN Ratings USING (movieid)
WHERE movie_rank < 2.5
ORDER BY movie_rank;

-- 3. Find the average ratings of movies overall each year.
SELECT Movie_year, ROUND(AVG(movie_rank), 2) AS average_movie_rating
FROM Ratings JOIN Movies USING (movieid)
GROUP BY movie_year
ORDER BY average_movie_rating DESC LIMIT 20;

-- 4. Find the average ratings of movies by language
SELECT movie_language, ROUND(AVG(movie_rank), 2) AS average_movie_rating
FROM Ratings JOIN Languages USING (movieid)
GROUP BY movie_language
ORDER BY average_movie_rating DESC LIMIT 20;

-- 5. Find the average ratings of movies by country
SELECT country, ROUND(AVG(movie_rank), 2) AS average_movie_rating
FROM Ratings JOIN Countries USING (movieid)
GROUP BY country
ORDER BY average_movie_rating DESC LIMIT 20;

-- 6. Find the writers who wrote more than 2 movies with a rating higher than 8.5, then obtain their average movie rating
SELECT writer_name, ROUND(AVG(movie_rank), 2) AS average_movie_rating
FROM Writers JOIN Movies2Writers USING (writerid) JOIN Movies USING (movieid) JOIN Ratings USING (movieid)
WHERE movie_rank > 7.0
GROUP BY writerid
HAVING COUNT(writerid) > 5
ORDER BY average_movie_rating DESC;

-- 7. Find the rating of each movie that was released by Disney on VHS
SELECT title, movie_year, ROUND(movie_rank, 2) AS movie_rating
FROM Movies JOIN Distributers USING (movieid) JOIN Ratings USING (movieid)
WHERE distributer LIKE '%Walt Disney%VHS%'
ORDER BY movie_rating DESC;

-- 8. Rank the top 10 directors with the least average movie rating.
SELECT director_name, ROUND(AVG(movie_rank), 2) AS average_movie_rating
FROM Directors JOIN Movies2Directors USING (directorid) JOIN Ratings USING (movieid)
GROUP BY directorid
ORDER BY average_movie_rating
LIMIT 10;

-- 9. Find the average rating of movies made in the 1990s.
SELECT ROUND(AVG(movie_rank), 2) AS average_rank_in_90s
FROM Ratings JOIN Movies USING (movieid)
WHERE movie_year BETWEEN 1990 AND 1999;

-- 10. Find the average rating of movies made between 1970 and 2020
SELECT ROUND(AVG(movie_rank), 2) AS average_rank_from_1920_to_2020
FROM Ratings JOIN Movies USING (movieid)
WHERE movie_year BETWEEN 1920 AND 2020;