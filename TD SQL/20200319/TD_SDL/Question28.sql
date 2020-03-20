/*---------------------------Question28-----------------------------*/
/*28. Donner l’ID, le nom, le volume et les quantités vendues en 2015 et 2016, des bières
dont les ventes ont été stables. ( Moins de 1% de variation)*/

select a.ID_ARTICLE, a.NOM_ARTICLE, sum(a.VOLUME) VOLUME_CUMUL, sum(v.quantite) QUANTITE_CUMUL from beer.ventes v
INNER JOIN beer.article a on a.ID_ARTICLE=v.ID_ARTICLE
where v.ANNEE = 2016 OR v.ANNEE=2015 AND 
				(((select SUM(v.quantite) from beer.ventes v
					where v.ANNEE=2016)/(select sum(v.quantite) from beer.ventes v
					where v.ANNEE=2015))/(select sum(v.quantite) from beer.ventes v
					where v.ANNEE=2015))*100<=1
group by a.ID_ARTICLE
ORDER BY QUANTITE desc;


