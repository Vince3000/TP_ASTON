/*---------------------------Question13-----------------------------*/
/*13. Lister les bières de type ‘Trappiste’. (id, nom de la bière, volume et titrage)*/

select a.ID_ARTICLE,a.NOM_ARTICLE,a.volume, a.TITRAGE FROM beer.article a
INNER JOIN beer.type ty ON a.ID_TYPE=ty.ID_TYPE
where ty.NOM_TYPE LIKE ('%Trappiste%');
