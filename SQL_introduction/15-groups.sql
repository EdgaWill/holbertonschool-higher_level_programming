-- Number by score
SELECT DISTINCT (score), COUNT(score)number FROM second_table
GROUP BY score
ORDER BY score DESC
