/* Creation de vue  */

/*CommandeCuisine : Affiche les commandes passées dans la journée*/
CREATE VIEW CommandeCuisine
(numCommande, Viande1, Viande2, Viande3, Viande4, Sauce1, Sauce2, nomExtraAccomp)
AS SELECT idCommande, Viande1, Viande2, Viande3, Viande4, Sauce1, Sauce2, nomExtraAccomp
FROM Commande
WHERE to_date(SYSDATE,'DD-MON-YYYY') = to_date(Commande.date_commande,'DD-MON-YYYY');

/*DepenseClient : Affiche les dépenses totales faites par les clients*/
CREATE VIEW DepenseClient
(id, Nom, Prenom, euroDepense)
AS SELECT idClient, nomClient, prenomClient, SUM(prixCommande)
FROM client NATURAL JOIN commande
GROUP BY idClient, nomClient, prenomClient;

