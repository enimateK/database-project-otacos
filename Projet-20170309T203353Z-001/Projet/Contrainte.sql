/*CONTRAINTES*/
ALTER TABLE commande ADD CONSTRAINT contraintedate CHECK (date_commande IS NOT NULL AND  date_commande >= to_date('01-JAN-2017', 'DD-MON-YYYY') AND date_commande <= to_date('31-DEC-2017', 'DD-MON-YYYY') );
ALTER TABLE commande ADD CONSTRAINT contrainteviande1 CHECK ( viande1 IS NOT NULL );
ALTER TABLE commande ADD CONSTRAINT contraintesauce1 CHECK ( sauce1 IS NOT NULL );

