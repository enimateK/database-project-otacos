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
