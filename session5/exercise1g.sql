DROP TABLE IF EXISTS Bestelling;
CREATE TABLE Bestelling (
isbn INT,
aantal INT
);

CREATE OR REPLACE FUNCTION nieuwe_bestelling()
RETURNS TRIGGER
AS $$	BEGIN
			IF EXISTS (SELECT auteur FROM Boek B WHERE B.auteur = NEW.auteur) THEN
				RETURN NULL;
			ELSE
				INSERT INTO Bestelling VALUES(NEW.isbn, 1);
				RETURN NEW; 
			END IF;
		END;
   $$	
LANGUAGE plpgsql;

CREATE TRIGGER boek_ins_cascade
AFTER INSERT ON Boek
FOR EACH STATEMENT
EXECUTE PROCEDURE nieuwe_bestelling();