/*---------------------------Question20-----------------------------*/
/*20. Lister les articles qui n’ont fait l’objet d’aucune vente en 2014.*/

select distinct a.NOM_ARTICLE, v.NUMERO_TICKET FROM beer.article a
left join beer.ventes v on a.ID_ARTICLE=v.ID_ARTICLE
where v.ANNEE='2014' AND v.QUANTITE is null;