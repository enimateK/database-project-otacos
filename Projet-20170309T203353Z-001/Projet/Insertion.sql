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
INSERT INTO sucrerie VALUES ('Mousse Gourmande Chocolat Noisette', 1.5);
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
INSERT INTO commande VALUES (incrIDcommande.nextval,'M','Cordon bleu','NULL','NULL','NULL','Chili thaï','Samourai','NULL','NULL','Mousse Gourmande Chocolat Noisette','7.5','1119','22-FEB-2017');
INSERT INTO commande VALUES (incrIDcommande.nextval,'XXL','Viande hachée','Nuggets','Merguez','Tenders','Barbecue','Ketchup','Blanc de poulet','Cristaline fruit de la passion','NULL','15.9','1120','29-JAN-2017');
INSERT INTO commande VALUES (incrIDcommande.nextval,'XXL','Escalope de poulet','Cordon bleu','Nuggets','Tenders','Fish to fish','Blanche','NULL','NULL','NULL','14','1121','16-FEB-2017');
INSERT INTO commande VALUES (incrIDcommande.nextval,'L','Escalope de poulet','Nuggets','NULL','NULL','Blanche','Mayonnaise','NULL','NULL','NULL','6','1122','15-JAN-2017');
INSERT INTO commande VALUES (incrIDcommande.nextval,'XL','Viande hachée','Cordon bleu','Tenders','NULL','Ketchup','NULL','Poivronade','Cristaline fruit de la passion','NULL','10.5','1123','9-JAN-2017');
commit;
