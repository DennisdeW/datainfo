SELECT p.pid
FROM Person p
WHERE EXISTS (
	SELECT *
	FROM Writes w
	WHERE 'de film niet geregiseerd is';