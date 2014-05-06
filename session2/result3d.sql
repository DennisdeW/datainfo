SELECT p.name
FROM Person p
WHERE EXISTS (
	SELECT *
	FROM Writes w
	WHERE p.pid = w.pid
	AND NOT EXISTS (
		SELECT *
		FROM Directs d
		WHERE EXISTS (
			SELECT *
			FROM Writes w2
			WHERE w.pid = w2.pid
			AND d.mid = w2.mid
		)
	)
);