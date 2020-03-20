/*---------------------------Question27-----------------------------*/
/*27. Donner l’ID, le nom, le volume et la quantité vendue des 5 ‘Trappistes’ les plus vendus en 2016.*/

select a.ID_ARTICLE, a.NOM_ARTICLE, sum(a.VOLUME) VOLUME_CUMUL, sum(quantite) QUANTITE_CUMUL from beer.ventes v
INNER JOIN beer.article a on a.ID_ARTICLE=v.ID_ARTICLE
where v.ANNEE = 2016 AND ID_TYPE=13
group by a.ID_ARTICLE
ORDER BY QUANTITE desc
LIMIT 5;

