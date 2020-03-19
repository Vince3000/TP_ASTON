/*---------------------------Question9------------------------------*/
/*9. Afficher la liste des bières n’ayant pas de couleur. (Afficher l’id et le nom)*/

select DISTINCT a.ID_ARTICLE, a.NOM_ARTICLE, c.NOM_COULEUR  from beer.article a
LEFT JOIN beer.couleur c ON a.ID_Couleur=c.ID_Couleur
where c.NOM_COULEUR is null;
