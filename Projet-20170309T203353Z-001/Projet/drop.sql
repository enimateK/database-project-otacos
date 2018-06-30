/*Fichier créé après l'appel de Suppression.sql*/

/*Fichier appelé par Suppression.sql pour supprimer les talbes, les séquences et les vues*/

/*fichier à appelé pour tout supprimer sans relancer Suppression.sql*/

/*Suppression des tables en cascade*/
DROP TABLE TACO CASCADE CONSTRAINTS ;                                           
DROP TABLE ACCOMPAGNEMENT CASCADE CONSTRAINTS ;                                 
DROP TABLE BOISSON CASCADE CONSTRAINTS ;                                        
DROP TABLE SUCRERIE CASCADE CONSTRAINTS ;                                       
DROP TABLE CLIENT CASCADE CONSTRAINTS ;                                         
DROP TABLE COMMANDE CASCADE CONSTRAINTS ;

/*Suppression des séquences*/                                       
DROP SEQUENCE INCRIDCLIENT;                                                     
DROP SEQUENCE INCRIDCOMMANDE;

/*Suppression des vues*/                                                   
DROP VIEW DEPENSECLIENT;                                                        
DROP VIEW COMMANDECUISINE;                                                      
