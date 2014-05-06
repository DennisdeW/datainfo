SELECT p.pid
FROM Person p
WHERE EXISTS (
	SELECT *
	FROM Acts a
	WHERE p.pid = a.pid
	AND NOT EXISTS 'Een regisseur met dezelfde mid'
	);