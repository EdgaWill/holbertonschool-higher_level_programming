-- Rotten tomatoes
SELECT A.title, SUM(B.rate) rating FROM tv_shows A
INNER JOIN tv_show_ratings B
ON A.id=B.show_id
GROUP BY A.title
ORDER BY rating DESC
