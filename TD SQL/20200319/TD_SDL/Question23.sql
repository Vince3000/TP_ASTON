/*---------------------------Question23-----------------------------*/
/*23. Lister les articles ayant un degré d’alcool plus élevé que la plus forte des trappistes.*/

select a.nom_article, a.TITRAGE from beer.article a
where a.TITRAGE > (SELECT  MAX(a.TITRAGE)  FROM beer.article a
where ID_TYPE = '13')
ORDER BY a.titrage ASC;

