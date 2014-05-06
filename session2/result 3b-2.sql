--SELECT p.pid
--FROM Person p
--WHERE EXISTS (
--	SELECT * 
--	FROM Acts a, Movie m
--	WHERE m.mid = a.mid
--	AND m.name = 'Back to the Future'
--);

SELECT p.pid
FROM Person p, Acts a, Movie m
WHERE p.pid = a.pid 
AND m.mid = a.mid
AND m.name = 'Back to the Future'