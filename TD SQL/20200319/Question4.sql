/*---------------------------Question4------------------------------*/

select a.NOM_ARTICLE from beer.article a
INNER JOIN beer.ventes v ON a.ID_ARTICLE=v.ID_ARTICLE
where v.QUANTITE >=50;
