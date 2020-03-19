/*---------------------------Question21-----------------------------*/
/*21. Coder de 3 manières différentes la requête suivante : Lister les pays qui fabriquent des
bières de type ‘Trappiste’.*/

select DISTINCT p.NOM_PAYS FROM beer.pays p
INNER JOIN beer.marque m on p.ID_PAYS=m.ID_PAYS
INNER JOIN beer.article a on m.ID_MARQUE=a.ID_MARQUE
INNER JOIN beer.type t on a.ID_TYPE=t.ID_TYPE
where t.NOM_TYPE LIKE ('Trappiste');


/*----------------------------------------V2--------------------------------------------*/
SELECT * FROM beer.type
where NOM_TYPE like 'Trappiste';

select DISTINCT p.NOM_PAYS FROM beer.pays p
INNER JOIN beer.marque m on p.ID_PAYS=m.ID_PAYS
INNER JOIN beer.article a on m.ID_MARQUE=a.ID_MARQUE
where a.ID_TYPE='13';

/*----------------------------------------V3--------------------------------------------*/
SELECT * FROM beer.type
where NOM_TYPE like 'Trappiste';

SELECT distinct ID_marque FROM beer.article
where ID_TYPE = '13';

SELECT * FROM beer.marque
where ID_MARQUE in ('48','56','57','58','59','60','470','531');

select DISTINCT p.NOM_PAYS FROM beer.pays p
INNER JOIN beer.marque m on p.ID_PAYS=m.ID_PAYS
where ID_MARQUE in ('48','56','57','58','59','60','470','531');

