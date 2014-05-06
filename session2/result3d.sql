SELECT p.name
FROM Person p
WHERE EXISTS (
	SELECT *
	FROM Writes w
	WHERE p.pid = w.pid
	AND NOT EXISTS (
		SELECT *
		FROM Directs d
		WHERE 'd.pid heeft een film geregiseerd waaraan w.pid geschreven heeft'
);