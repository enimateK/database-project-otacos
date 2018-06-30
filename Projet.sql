SET ECHO OFF
SPOOL drop.sql
SET ECHO OFF
SET FEEDBACK OFF
SET HEADING OFF
SET PAGESIZE 0
SELECT 'DROP TABLE ' || table_name || ' CASCADE CONSTRAINTS ;'
FROM USER_TABLES ;
SELECT 'DROP SEQUENCE ' || sequence_name || ';'
FROM USER_SEQUENCES;
SELECT 'DROP VIEW ' || view_name || ';'
FROM USER_VIEWS;
SPOOL OFF
SET ECHO ON
@drop.sql

/* Create Sequence */
CREATE SEQUENCE incrIDcommande START WITH 11112 INCREMENT BY 1;
CREATE SEQUENCE incrIDclient START WITH 1110 INCREMENT BY 1;

/* Create Table */
CREATE TABLE taco(
		taille VARCHAR2(100) PRIMARY KEY,
		nbViandes INTEGER,
		prixTaco NUMBER
		);

CREATE TABLE accompagnement(
		nomExtraAccomp VARCHAR2(100) PRIMARY KEY,
		prixExtraAccomp NUMBER
		);

CREATE TABLE boisson(
		nomExtraBoisson VARCHAR2(100) PRIMARY KEY,
		prixExtraBoisson NUMBER
		);

CREATE TABLE sucrerie(
		nomExtraSucre VARCHAR2(100) PRIMARY KEY,
		prixExtraSucre NUMBER
		);

CREATE TABLE client(
		idClient INTEGER PRIMARY KEY,
		nomClient VARCHAR2(100),
		prenomClient VARCHAR2(100),
		telClient INTEGER,
		adresseClient VARCHAR2(100),
		codePostal INTEGER,
		ville VARCHAR2(100)
		);

CREATE TABLE commande(
		idCommande INTEGER PRIMARY KEY,
		taille VARCHAR2(100) REFERENCES taco(taille) ON DELETE CASCADE ,
		viande1 VARCHAR2(100),
		viande2 VARCHAR2(100),
		viande3 VARCHAR2(100),
		viande4 VARCHAR2(100),
		sauce1 VARCHAR2(100),
		sauce2 VARCHAR2(100),
		nomExtraAccomp VARCHAR2(100) REFERENCES accompagnement(nomExtraAccomp) ON DELETE CASCADE,
		nomExtraBoisson VARCHAR2(100) REFERENCES boisson(nomExtraBoisson) ON DELETE CASCADE,
		nomExtraSucre VARCHAR2(100) REFERENCES sucrerie(nomExtraSucre) ON DELETE CASCADE,
		prixCommande NUMBER,
		idClient INTEGER REFERENCES client(idClient) ON DELETE CASCADE,
		date_commande DATE
		);


ALTER TABLE commande ADD CONSTRAINT contraintedate CHECK (date_commande IS NOT NULL AND  date_commande >= to_date('01-JAN-2017', 'DD-MON-YYYY') AND date_commande <= to_date('31-DEC-2017', 'DD-MON-YYYY') );
ALTER TABLE commande ADD CONSTRAINT contrainteviande1 CHECK ( viande1 IS NOT NULL );
ALTER TABLE commande ADD CONSTRAINT contraintesauce1 CHECK ( sauce1 IS NOT NULL );

/* INSERT */
INSERT INTO taco VALUES ('M', 1, 5);
INSERT INTO taco VALUES ('L', 2, 6);
INSERT INTO taco VALUES ('XL', 3, 9);
INSERT INTO taco VALUES ('XXL', 4, 14);

INSERT INTO boisson VALUES ('Coca-Cola', 1);
INSERT INTO boisson VALUES ('Coca-Cola Zéro', 1);
INSERT INTO boisson VALUES ('Oasis tropical', 1);
INSERT INTO boisson VALUES ('Oasis Pomme-Cassis', 1);
INSERT INTO boisson VALUES ('Seven Up Mojito', 1.5);
INSERT INTO boisson VALUES ('Seven Up', 1);
INSERT INTO boisson VALUES ('Ice Tea', 1);
INSERT INTO boisson VALUES ('Tropico', 1);
INSERT INTO boisson VALUES ('Fanta Orange', 1);
INSERT INTO boisson VALUES ('Fanta Citron', 1);
INSERT INTO boisson VALUES ('Arizona', 2.5);
INSERT INTO boisson VALUES ('Cristaline eau', 0.8);
INSERT INTO boisson VALUES ('Cristaline fraise', 1);
INSERT INTO boisson VALUES ('Cristaline fruit de la passion', 1);
INSERT INTO boisson VALUES ('NULL', 0);

INSERT INTO accompagnement VALUES ('Cheddar', 0.3);
INSERT INTO accompagnement VALUES ('Raclette', 1);
INSERT INTO accompagnement VALUES ('Boursin', 0.5);
INSERT INTO accompagnement VALUES ('Chèvre', 0.3);
INSERT INTO accompagnement VALUES ('Mozza', 0.3);
INSERT INTO accompagnement VALUES ('Oeuf', 0.5);
INSERT INTO accompagnement VALUES ('Vache qui rit', 0.3);
INSERT INTO accompagnement VALUES ('Salami', 0.5);
INSERT INTO accompagnement VALUES ('Jambon de dinde', 0.8);
INSERT INTO accompagnement VALUES ('Lardon de dinde', 0.5);
INSERT INTO accompagnement VALUES ('Bacon de dinde', 0.7);
INSERT INTO accompagnement VALUES ('Blanc de poulet', 0.8);
INSERT INTO accompagnement VALUES ('Champignon', 0.5);
INSERT INTO accompagnement VALUES ('Poivronade', 0.6);
INSERT INTO accompagnement VALUES ('NULL', 0);

INSERT INTO sucrerie VALUES ('Tiramisu Caramel Speculoos', 1.5);
INSERT INTO sucrerie VALUES ('Tiramisu Chocolat Noisette Speculoos', 1.5);
INSERT INTO sucrerie VALUES ('Tiramisu Tiratatin Pomme Caramel Beurre Salé', 1.5);
INSERT INTO sucrerie VALUES ('Mousse Gourmande Vanille Caramel', 1.5);
INSERT INTO sucrerie VALUES ('Mousse Goumande Chocolat Noisette', 1.5);
INSERT INTO sucrerie VALUES ('NULL', 0);

INSERT INTO client VALUES (incrIDclient.nextval, 'ISCARIOTE', 'MANUEL', '660066006','3 boulevard du pont','44000','Nantes');
INSERT INTO client VALUES (incrIDclient.nextval, 'VALLS', 'FRANCOIS', '668987862','5 avenue quelconque','44230','Saint Sébastien');
INSERT INTO client VALUES (incrIDclient.nextval, 'HOLLANDE', 'RACHIDA', '660066006','3 boulevard du pont','44000','Nantes');
INSERT INTO client VALUES (incrIDclient.nextval, 'DATI', 'SILVIO', '657896232','13 chemin des Oliviers','44000','Nantes');
INSERT INTO client VALUES (incrIDclient.nextval, 'BERLUSCONI', 'BARACK', '635241589','1ter Rue des Olivettes','44800','Saint Herblain');
INSERT INTO client VALUES (incrIDclient.nextval, 'OBAMA', 'ANGELA', '687953578','5 Place du général','75001','Paris');
INSERT INTO client VALUES (incrIDclient.nextval, 'MERKEL', 'HILARY', '612358598','14 rue PHL','44310','Saint Colomban');
INSERT INTO client VALUES (incrIDclient.nextval, 'CLINTON', 'MAO', '654873598','2 avenue de la poste','44000','Nantes');
INSERT INTO client VALUES (incrIDclient.nextval, 'ZEDONG', 'KIM', '622863595','6 rue de la boulangerie','44000','Nantes');
INSERT INTO client VALUES (incrIDclient.nextval, 'JONG UN', 'DONALD', '644853356','PRIVEE','20020','Washington');
INSERT INTO client VALUES (incrIDclient.nextval, 'TRUMP', 'PABLO', '633885522','PRIVEE','20020','Washington');
INSERT INTO client VALUES (incrIDclient.nextval, 'ESCOBAR', 'JESUS', '666666666','7 rue du port','44240','Sucé sur Erdre');
INSERT INTO client VALUES (incrIDclient.nextval, 'CHRIST', 'JUDAS', '658982535','7 rue du port','44390','Nort sur Erdre');

INSERT INTO commande VALUES (incrIDcommande.nextval,'M','Cordon bleu','NULL','NULL','NULL','Cheesy easy','Biggy burger','NULL','Seven Up','NULL','8.5','1111','01-FEB-2017');
INSERT INTO commande VALUES (incrIDcommande.nextval,'XXL','Viande hachée','Cordon bleu','Nuggets','Merguez','Mayonnaise','Ketchup','Raclette','NULL','Tiramisu Caramel Speculoos','17','1112','01-FEB-2017');
INSERT INTO commande VALUES (incrIDcommande.nextval,'XL','Escalope de poulet','Cordon bleu','Tenders','NULL','Algérienne','Curry','NULL','Coca-Cola','NULL','10','1113', '05-JAN-2017');
INSERT INTO commande VALUES (incrIDcommande.nextval,'XXL','Escalope de poulet','Viande hachée','Cordon bleu','Nuggets','Blanche','Harissa','Mozza','NULL','NULL','14.5','1114','24-FEB-2017');
INSERT INTO commande VALUES (incrIDcommande.nextval,'M','Nuggets','NULL','NULL','NULL','Harissa','Poivre','Lardon de dinde','NULL','NULL','5.9','1115','14-FEB-2017');
INSERT INTO commande VALUES (incrIDcommande.nextval,'XXL','Viande hachée','Cordon bleu','Merguez','Tenders','Curry','Chili thaï','Vache qui rit','Oasis Pomme-Cassis','NULL','15.5','1116','01-MAR-2017');
INSERT INTO commande VALUES (incrIDcommande.nextval,'L','Merguez','Tenders','NULL','NULL','Poivre','Samourai','Oeuf','NULL','NULL','6.5','1117','23-JAN-2017');
INSERT INTO commande VALUES (incrIDcommande.nextval,'M','Escalope de poulet','NULL','NULL','NULL','Chili thaï','Samourai','Boursin','NULL','NULL','5.5','1118','21-JAN-2017');
INSERT INTO commande VALUES (incrIDcommande.nextval,'M','Cordon bleu','NULL','NULL','NULL','Chili thaï','Samourai','NULL','NULL','Mousse Goumande Chocolat Noisette','7.5','1119','22-FEB-2017');
INSERT INTO commande VALUES (incrIDcommande.nextval,'XXL','Viande hachée','Nuggets','Merguez','Tenders','Barbecue','Ketchup','Blanc de poulet','Cristaline fruit de la passion','NULL','15.9','1120','29-JAN-2017');
INSERT INTO commande VALUES (incrIDcommande.nextval,'XXL','Escalope de poulet','Cordon bleu','Nuggets','Tenders','Fish to fish','Blanche','NULL','NULL','NULL','14','1121','16-FEB-2017');
INSERT INTO commande VALUES (incrIDcommande.nextval,'L','Escalope de poulet','Nuggets','NULL','NULL','Blanche','Mayonnaise','NULL','NULL','NULL','6','1122','15-JAN-2017');
INSERT INTO commande VALUES (incrIDcommande.nextval,'XL','Viande hachée','Cordon bleu','Tenders','NULL','Ketchup','NULL','Poivronade','Cristaline fruit de la passion','NULL','10.5','1123','9-JAN-2017');


/*Trigger*/

CREATE OR REPLACE TRIGGER verif_viande
BEFORE INSERT OR UPDATE ON commande
FOR EACH ROW
DECLARE 
	viande_prec_vide EXCEPTION;
BEGIN
	IF (:new.viande1 = NULL AND :new.viande2 != NULL)
	OR (:new.viande2 = NULL AND :new.viande3 != NULL)
	OR (:new.viande3 = NULL AND :new.viande4 != NULL)
	THEN
		RAISE viande_prec_vide;
	END IF;
	EXCEPTION 
		WHEN viande_prec_vide THEN
		RAISE_APPLICATION_ERROR (-20000, 'Les viandes doivent être remplie dans l ordre');
END;
/

CREATE OR REPLACE TRIGGER verif_jour
BEFORE INSERT OR UPDATE ON commande
FOR EACH ROW
DECLARE 
	mauvaise_date EXCEPTION;
BEGIN
	IF to_date(:new.date_commande,'DD-MON-YYYY') < to_date (sysdate, 'DD-MON-YYYY') 
	OR to_date(:new.date_commande,'DD-MON-YYYY') > to_date (sysdate, 'DD-MON-YYYY') THEN
		RAISE mauvaise_date;
	END IF;
	EXCEPTION 
		WHEN mauvaise_date THEN
		RAISE_APPLICATION_ERROR (-20001, 'On ne peut que mettre la date du jour');
END;
/

/*INSERTION TEST A METTRE A JOUR*/

INSERT INTO commande VALUES (1,'XL','Viande hachée','Cordon bleu','Tenders','NULL','Ketchup','NULL','Poivronade','Cristaline fruit de la passion','NULL','10.5','1123','12-MAR-2017');
INSERT INTO commande VALUES (1,'XL','NULL','Cordon bleu','Tenders','NULL','Ketchup','NULL','Poivronade','Cristaline fruit de la passion','NULL','10.5','1123','9-MAR-2017');

/* Create View */

CREATE VIEW CommandeCuisine
(numCommande, Viande1, Viande2, Viande3, Viande4, Sauce1, Sauce2, nomExtraAccomp)
AS SELECT idCommande, Viande1, Viande2, Viande3, Viande4, Sauce1, Sauce2, nomExtraAccomp
FROM Commande
WHERE to_date(SYSDATE,'DD-MON-YYYY') = to_date(Commande.date_commande,'DD-MON-YYYY');


CREATE VIEW DepenseClient
(id, Nom, Prenom, euroDepense)
AS SELECT idClient, nomClient, prenomClient, SUM(prixCommande)
FROM client NATURAL JOIN commande
GROUP BY idClient, nomClient, prenomClient;


/* Procedure */

CREATE OR REPLACE PROCEDURE update_commande (
			idcom IN INTEGER,
			nomAccomp IN VARCHAR2,
			nomBoisson IN VARCHAR2,
			nomSucre IN VARCHAR2,
			idcl IN INTEGER
 )
IS
	modif_error EXCEPTION; 
	nb NUMBER;
	

BEGIN

	SELECT COUNT(*) INTO nb
	FROM commande
	WHERE idCommande = idcom AND idClient =  idcl; 

	IF (nb  = 0) THEN
		RAISE modif_error;
	ELSE
		UPDATE commande
		SET nomExtraAccomp = nomAccomp, nomExtraBoisson = nomBoisson, nomExtraSucre = nomSucre
		WHERE idCommande = idcom AND idClient = idcl;
	END IF;
	EXCEPTION
		WHEN modif_error THEN
			RAISE_APPLICATION_ERROR (-20003, 'La commande n existe pas .');
		


END update_commande;
/

CREATE OR REPLACE PROCEDURE calcul_prix_commande (
			idcom IN INTEGER,
			taillechoisie IN VARCHAR2,
			nomAccomp in VARCHAR2,
			nomBoisson in VARCHAR2,
			nomSucre in VARCHAR2

 )
IS
	modif_error EXCEPTION;
	prix1 NUMBER;
	prix2 NUMBER;
	prix3 NUMBER;
	prix4 NUMBER;
	prixtotal NUMBER;

BEGIN

	SELECT prixTaco INTO prix1 
	FROM commande INNER JOIN taco ON commande.taille = taco.taille
	WHERE commande.taille = taillechoisie;
	
	SELECT prixExtraAccomp INTO prix2
	FROM commande INNER JOIN accompagnement ON commande.nomExtraAccomp = accompagnement.nomExtraAccomp
	WHERE commande.nomExtraAccomp = nomAccomp;
	
	SELECT prixExtraBoisson INTO prix3
	FROM commande INNER JOIN boisson ON commande.nomExtraBoisson = boisson.nomExtraBoisson
	WHERE commande.nomExtraBoisson = nomBoisson;

	SELECT prixExtraSucre INTO prix4
	FROM commande INNER JOIN sucrerie ON commande.nomExtraSucre = sucrerie.nomExtraSucre
	WHERE commande.nomExtraSucre = nomSucre;

	prixtotal := prix1 + prix2 + prix3 + prix4;

	UPDATE commande
	SET prixCommande = prixtotal
	WHERE idCommande = idcom ;
	
	IF (prix1 = 0 AND prix2 = 0 AND prix3 = 0  AND prix4 = 0) THEN
		RAISE modif_error;
	END IF;	
	EXCEPTION
		WHEN modif_error THEN
			RAISE_APPLICATION_ERROR (-20003, 'Pas de prix à calculer');



END calcul_prix_commande;
/

