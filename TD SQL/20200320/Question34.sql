/*---------------------------Question34-----------------------------*/
/*34. Suppression des bières qui ne sont pas des bières ! (Type ‘Bière Aromatisée’)*/

SET FOREIGN_KEY_CHECKS=0;
DELETE FROM beer.article a
where a.id_type='1';
SET FOREIGN_KEY_CHECKS=1;


