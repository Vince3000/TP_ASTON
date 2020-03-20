/*---------------------------Question24-----------------------------*/
/*24. Editer les quantités vendues pour chaque couleur en 2014.*/

select c.NOM_couleur,sum(v.quantite) from beer.ventes v
INNER JOIN beer.article a ON v.ID_ARTICLE=a.ID_ARTICLE
INNER JOIN beer.couleur c ON a.ID_Couleur=c.ID_Couleur
where v.ANNEE='2014'
group by c.NOM_couleur;

