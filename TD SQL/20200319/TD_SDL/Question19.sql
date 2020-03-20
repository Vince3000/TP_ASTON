/*---------------------------Question19-----------------------------*/
/*19. Lister les quantités vendues de chaque article pour les années 2014,2015 ,2016.*/

select a.NOM_ARTICLE, sum(v.quantite) QUANTITE,t.ANNEE FROM beer.ticket t
INNER JOIN beer.ventes v ON t.NUMERO_TICKET=v.NUMERO_TICKET
INNER JOIN beer.article a ON v.ID_ARTICLE=a.ID_ARTICLE
where t.ANNEE = '2016' OR t.ANNEE = '2014' OR t.ANNEE = '2015'
group by a.NOM_ARTICLE,t.ANNEE
ORDER BY t.ANNEE asc;
