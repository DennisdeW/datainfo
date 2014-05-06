SELECT p.name
FROM Person p
WHERE EXISTS (
	SELECT *
	FROM Writes w
	WHERE p.pid = w.pid
	AND NOT EXISTS 'een regisseur voor een film waar p aan geschreven heeft'
);