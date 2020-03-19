/*---------------------------Question25-----------------------------*/
/*25. Donner pour chaque fabricant, le nombre de tickets sur lesquels apparait un de ses
produits en 2014.*/

select f.NOM_FABRICANT, sum(t.NUMERO_TICKET) NB_TICKET from beer.fabricant f
INNER JOIN beer.marque m ON f.ID_FABRICANT=m.ID_FABRICANT
INNER JOIN beer.article a ON m.ID_MARQUE=a.ID_MARQUE
INNER JOIN beer.ventes v ON a.ID_ARTICLE=v.ID_ARTICLE
INNER JOIN beer.ticket t ON t.NUMERO_TICKET=v.NUMERO_TICKET
where v.ANNEE='2014'
group by f.NOM_FABRICANT
ORDER BY NB_TICKET;
