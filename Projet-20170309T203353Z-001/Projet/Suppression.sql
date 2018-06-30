/*script créant un fichier drop.sql dans lequel il écrit les requêtes permettant de supprimer :*/

SET ECHO OFF
SPOOL drop.sql
SET ECHO OFF
SET FEEDBACK OFF
SET HEADING OFF
SET PAGESIZE 0

/*toutes les tables de la base de données*/
SELECT 'DROP TABLE ' || table_name || ' CASCADE CONSTRAINTS ;'
FROM USER_TABLES ;

/*toutes les séquences de la base de données*/
SELECT 'DROP SEQUENCE ' || sequence_name || ';'
FROM USER_SEQUENCES;

/*toutes les vues de la base de données*/
SELECT 'DROP VIEW ' || view_name || ';'
FROM USER_VIEWS;

SPOOL OFF
SET ECHO ON

/*Appel de drop.sql*/
@drop.sql
