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