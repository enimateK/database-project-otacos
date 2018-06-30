/*Création de trigger*/

/*Trigger verif_viande : Permet de vérifier que les viandes sont entrées dans l'ordre croissant (de la 1ere à la 4eme)*/
CREATE OR REPLACE TRIGGER verif_viande
BEFORE INSERT OR UPDATE ON commande
FOR EACH ROW
DECLARE 
	viande_prec_vide EXCEPTION;
BEGIN
	IF (:new.viande1 = 'NULL' AND :new.viande2 != 'NULL')
	OR (:new.viande2 = 'NULL' AND :new.viande3 != 'NULL')
	OR (:new.viande3 = 'NULL' AND :new.viande4 != 'NULL')
	THEN
		RAISE viande_prec_vide;
	END IF;
	EXCEPTION 
		WHEN viande_prec_vide THEN
		RAISE_APPLICATION_ERROR (-20000, 'Les viandes doivent etre remplie dans l ordre');
END;
/

/*Trigger verif_jour : Vérifie le fait que la date entrée après une commande est bien celle d'aujourd'hui*/
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
INSERT INTO commande VALUES (2,'XL','NULL','Cordon bleu','Tenders','NULL','Ketchup','NULL','Poivronade','Cristaline fruit de la passion','NULL','10.5','1123','10-MAR-2017');
INSERT INTO commande VALUES (3,'XL','Viande hachée','NULL','Tenders','NULL','Ketchup','NULL','Poivronade','Cristaline fruit de la passion','NULL','10.5','1123','10-MAR-2017');
INSERT INTO commande VALUES (4,'XL','Viande hachée','Cordon bleu','NULL','NULL','Ketchup','NULL','Poivronade','Cristaline fruit de la passion','NULL','10.5','1123','10-MAR-2017');
commit;