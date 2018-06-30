/*Création des index*/

/*Index sur la première viande pour pouvoir rapidement afficher les viandes vendues*/
CREATE INDEX nom_viande
ON commande
(viande1 ASC);

/*Index sur les noms des villes des clients pour pouvoir rapidement avoir une localisation de ces derniers*/
CREATE INDEX nom_ville
ON client
(ville ASC);