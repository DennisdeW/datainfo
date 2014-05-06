BEGIN TRANSACTION;

INSERT INTO Problem1
VALUES ('a', FALSE, 'er kunnen meerdere voertuigen zijn met een gelijke capaciteit');

INSERT INTO Problem1
VALUES ('b', TRUE, 'uit (3) volgt dat dit klopt.');

INSERT INTO Problem1
VALUES ('c', TRUE, 'Volgens (8) geldt F -> APO, dus AF -> P moet zeker waar zijn.');

INSERT INTO Problem1
VALUES ('d', TRUE, 'Uit (4) volgt P -> O, uit (7) volgt OP -> A en uit (c) en (8) P <-> F');

INSERT INTO Problem1
VALUES ('e', TRUE, 'Uit (4) volgt P -> O, en uit (6) P -> G');

INSERT INTO Problem1
VALUES ('f', FALSE, 'Hier zijn geen aanwijzingen toe');

INSERT INTO Problem1
VALUES ('g', FALSE, 'Er kunnen meerdere bezorgers aan een voertuig toegewezen worden');

INSERT INTO Problem1
VALUES ('h', TRUE, 'Een V is gerelateerd aan één of meer, maar niet alle B');

INSERT INTO Problem1
VALUES ('i', TRUE, 'Aangezien (B) waar is, moet dit per definitie ook waar zijn');

INSERT INTO Problem1
VALUES ('j', TRUE, 'Dit volgt uit (H) en (I)');

COMMIT;