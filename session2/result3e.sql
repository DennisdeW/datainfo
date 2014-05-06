SELECT p.name, MIN(m.year)
FROM Movie m, Person p
WHERE 2 <= (
	SELECT COUNT(*)
	FROM Genre g
	WHERE g.genre = 'Action'
	AND EXISTS (
		SELECT *
		FROM Directs d
		WHERE d.pid = p.pid
		AND d.mid = g.mid
	)
)
AND EXISTS (
	SELECT *
	FROM Directs d
	WHERE d.pid = p.pid
	AND d.mid = m.mid
)
AND EXISTS (
	SELECT *
	FROM Genre g2
	WHERE g2.mid = m.mid
	AND g2.genre = 'Action'
)
GROUP BY 1;	
			