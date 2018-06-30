-- Test contenus des tables

SELECT * FROM taco;
SELECT * FROM boisson;
SELECT * FROM accompagnement;
SELECT * FROM sucrerie;
SELECT * FROM client;
SELECT * FROM commande;


/*INSERTION TEST A METTRE A JOUR*/

INSERT INTO commande VALUES (1,'XL','Viande hachée','Cordon bleu','Tenders','NULL','Ketchup','NULL','Poivronade','Cristaline fruit de la passion','NULL','10.5','1123','12-MAR-2017');
INSERT INTO commande VALUES (2,'XL','NULL','Cordon bleu','Tenders','NULL','Ketchup','NULL','Poivronade','Cristaline fruit de la passion','NULL','10.5','1123','10-MAR-2017');
INSERT INTO commande VALUES (3,'XL','Viande hachée','NULL','Tenders','NULL','Ketchup','NULL','Poivronade','Cristaline fruit de la passion','NULL','10.5','1123','10-MAR-2017');
INSERT INTO commande VALUES (4,'XL','Viande hachée','Cordon bleu','NULL','NULL','Ketchup','NULL','Poivronade','Cristaline fruit de la passion','NULL','10.5','1123','10-MAR-2017');
commit;

-- Test contraintes

INSERT INTO commande VALUES (1,'XL','Viande hachée','Cordon bleu','Tenders','NULL','Ketchup','NULL','Poivronade','Cristaline fruit de la passion','NULL','10.5','1123','10-MAR-2016');
INSERT INTO commande VALUES (1,'XL','Viande hachée','Cordon bleu','Tenders','NULL','Ketchup','NULL','Poivronade','Cristaline fruit de la passion','NULL','10.5','1123','15-MAR-2018');
INSERT INTO commande VALUES (1,'XL','NULL','NULL','NULL','NULL','Ketchup','NULL','Poivronade','Cristaline fruit de la passion','NULL','10.5','1123','12-MAR-2017');
INSERT INTO commande VALUES (1,'XL','Viande hachée','Cordon bleu','Tenders','NULL','NULL','NULL','Poivronade','Cristaline fruit de la passion','NULL','10.5','1123','12-MAR-2017');

-- Test vues

SELECT * FROM DepenseClient;
SELECT * FROM CommandeCuisine;

-- Test procédures

EXECUTE update_commande (2, 'Cheddar', 'Cristaline fruit de la passion', 'Mousse Gourmande Chocolat Noisette', '1112');
EXECUTE update_commande (72, 'Cheddar', 'Cristaline fruit de la passion', 'Mousse Gourmande Chocolat Noisette', '1112')