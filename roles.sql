
-- Le drop role ne semble pas fonctionner à cause des droits de la base
/*
DROP ROLE gerant;
DROP ROLE serveur;
DROP ROLE cuisinier;
DROP ROLE clients;
*/


-- Création du role gérant, qui a tous les droits sur la base

CREATE ROLE gerant;

GRANT ALL on TACO to gerant; 
GRANT ALL on ACCOMPAGNEMENT to gerant; 
GRANT ALL on BOISSON to gerant; 
GRANT ALL on SUCRERIE to gerant; 
GRANT ALL on COMMANDE to gerant; 
GRANT ALL on CLIENT to gerant; 

GRANT gerant TO L3_61 ;


-- Création du role serveur, il peut voir les tables Taco, Accompagnement, Boisson et Sucrerie et a tous les droits sur les tables commande et client

CREATE ROLE serveur ;

GRANT SELECT on TACO to serveur; 
GRANT SELECT on ACCOMPAGNEMENT to serveur; 
GRANT SELECT on BOISSON to serveur; 
GRANT SELECT on SUCRERIE to serveur; 

GRANT ALL on COMMANDE to serveur; 
GRANT ALL on CLIENT to serveur; 

GRANT serveur TO L3_74 ;

-- Création du role cuisinier, il peut voir les tables Taco, Accompagnement, Boisson, Sucrerie et consulter les commandes

CREATE ROLE cuisinier;

GRANT SELECT on TACO to cuisinier; 
GRANT SELECT on ACCOMPAGNEMENT to cuisinier; 
GRANT SELECT on BOISSON to cuisinier; 
GRANT SELECT on SUCRERIE to cuisinier; 
GRANT SELECT on COMMANDE to cuisinier; 

GRANT cuisinier to L3_73;


-- Création du role client, il peut seulement consulter le menu

CREATE ROLE clients;

GRANT SELECT on TACO to clients; 
GRANT SELECT on ACCOMPAGNEMENT to clients; 
GRANT SELECT on BOISSON to clients; 
GRANT SELECT on SUCRERIE to clients; 

GRANT clients to L3_69;

commit;
