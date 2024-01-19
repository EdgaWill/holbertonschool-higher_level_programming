-- No Comedy tonight!
SELECT a.title FROM tv_shows a
WHERE a.title NOT IN (SELECT a.title FROM tv_shows a
	LEFT JOIN tv_show_genres ap
	ON a.id = ap.show_id
	LEFT JOIN tv_genres p
	ON p.id = ap.genre_id
	WHERE p.name = 'Comedy')
	ORDER BY a.title;
