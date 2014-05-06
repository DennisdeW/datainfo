SELECT p.name, COUNT(m.mid)
FROM Person p, Movie m
WHERE EXISTS (
	SELECT *
	FROM Acts a
	WHERE p.pid = a.pid
	AND m.mid = a.mid
)
GROUP BY 1
HAVING COUNT(m.mid) >= 4 AND MAX(m.rating) >= 9
