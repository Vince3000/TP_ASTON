/*---------------------------Question29-----------------------------*/
/*29. Lister les types de bières suivant l’évolution de leurs ventes entre 2015 et 2016.
Classer le résultat par ordre décroissant des performances.*/

select a.ID_ARTICLE, a.NOM_ARTICLE, sum(a.VOLUME) VOLUME_CUMUL, sum(v.quantite) QUANTITE_CUMUL from beer.ventes v
INNER JOIN beer.article a on a.ID_ARTICLE=v.ID_ARTICLE
where v.ANNEE = 2016 OR v.ANNEE=2015
group by a.ID_ARTICLE
ORDER BY ((((select SUM(v.quantite) from beer.ventes v
					where v.ANNEE=2016)/(select sum(v.quantite) from beer.ventes v
					where v.ANNEE=2015))/(select sum(v.quantite) from beer.ventes v
					where v.ANNEE=2015))*100) desc;


