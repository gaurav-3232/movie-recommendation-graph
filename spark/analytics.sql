-- Spark SQL analytics
SELECT movie,
       AVG(rating) AS avg_rating,
       COUNT(*) AS popularity
FROM ratings
GROUP BY movie
ORDER BY avg_rating DESC;
