-- Best genre
SELECT a.name, SUM(d.rate)rating FROM tv_genres a
INNER JOIN tv_show_genres b
ON a.id = b.genre_id
INNER JOIN tv_shows c
ON c.id = b.show_id
INNER JOIN tv_show_ratings d
ON d.show_id = c.id
GROUP BY a.name
ORDER BY rating DESC
