/*---------------------------Question17-----------------------------*/
/*17. Donner le C.A. par année.*/

select fab.NOM_FABRICANT, SUM(ROUND(a.Prix_achat*v.quantite)) CA FROM beer.ticket t
INNER JOIN beer.ventes v ON t.NUMERO_TICKET=v.NUMERO_TICKET
INNER JOIN beer.article a ON v.ID_ARTICLE=a.ID_ARTICLE
INNER JOIN beer.marque f on a.ID_MARQUE=f.ID_MARQUE
INNER JOIN beer.fabricant fab on f.ID_FABRICANT=fab.ID_FABRICANT
group by fab.NOM_FABRICANT;
