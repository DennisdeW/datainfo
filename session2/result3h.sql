SELECT p.name, COUNT(m.mid)
FROM Person p, Movie m
WHERE EXISTS (
	SELECT *
	FROM Directs d, Movie m2
	WHERE d.mid = m2.mid
	AND p.pid = d.pid
)
AND EXISTS (
	SELECT *
	FROM Acts a
	WHERE p.pid = a.pid
	AND a.mid = m.mid
)
GROUP BY 1
HAVING COUNT(m.mid) > 0
ORDER BY 2 DESC
LIMIT 3