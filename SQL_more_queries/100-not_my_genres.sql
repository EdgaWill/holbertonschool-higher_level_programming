-- Not my genre
SELECT a.name FROM tv_genres a
LEFT JOIN (SELECT a.id FROM tv_genres a
	JOIN tv_show_genres at
	ON a.id = at.genre_id
	JOIN tv_shows t
	ON t.id = at.show_id
	WHERE t.title = 'Dexter'
	) AS sub_set
	ON a.id = sub_set.id
	WHERE sub_set.id IS NULL
	ORDER BY a.name;
