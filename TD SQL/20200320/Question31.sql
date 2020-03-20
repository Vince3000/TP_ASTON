/*---------------------------Question31-----------------------------*/
/*31. Lister les produits vendus en 2016 dans des quantités jusqu’à 15% des quantités de
l’article le plus vendu.*/

select distinct a.ID_ARTICLE,a.NOM_ARTICLE, sum(v.QUANTITE) QUANTITE_CUMUL from beer.ventes v
INNER JOIN beer.ARTICLE a ON a.ID_ARTICLE=v.ID_ARTICLE
where v.ANNEE=2016 group by a.NOM_ARTICLE
	having sum(v.QUANTITE)>=(select sum(v.QUANTITE) QUANTITE_CUMUL from beer.ventes v
								INNER JOIN beer.ARTICLE a ON a.ID_ARTICLE=v.ID_ARTICLE
								where v.ANNEE=2016
								group by a.NOM_ARTICLE
								ORDER BY QUANTITE_CUMUL DESC
								LIMIT 1)*0.85
	ORDER BY QUANTITE_CUMUL DESC;
