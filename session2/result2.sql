BEGIN TRANSACTION;

INSERT INTO F 
VALUES ('ABC', 'EF', FALSE, 'ABC is een superkey voor de tabel, aangezien E -> D en dus ABC -> ABCDEF');

INSERT INTO F
VALUES ('E', 'D', TRUE, 'De afhankelijkheid is niet triviaal, en E is geen superkey aangezien alleen E -> DA geldt');

INSERT INTO F
VALUES ('D', 'A', TRUE, 'De afhankelijkheid is niet triviaal en D is geen superkey aangezien geen verdere afleidingen gedaan kunnen worden');

COMMIT;

BEGIN TRANSACTION;

INSERT INTO F1
VALUES ('ABC', 'EF', FALSE, 'ABC is nog steeds een superkey');

--INSERT INTO F1
--VALUES ('E', 'A', TRUE, 'E is nog steeds geen superkey');

INSERT INTO F2
VALUES ('E', 'D', FALSE, 'E is hier wel een superkey');

COMMIT;

--BEGIN TRANSACTION;

--INSERT INTO F3
--VALUES ('EBC', 'F', FALSE, 'EBC is een superkey');

--INSERT INTO F4
--VALUES ('E', 'A', FALSE, 'E is een superkey');

--COMMIT;