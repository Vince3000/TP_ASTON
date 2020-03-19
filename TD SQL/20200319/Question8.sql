/*---------------------------Question8------------------------------*/
/*8. Afficher la liste des bières classée par couleur. ( Afficher l’id et le nom)*/

select DISTINCT a.ID_ARTICLE, a.NOM_ARTICLE from beer.article a
INNER JOIN beer.couleur c ON a.ID_Couleur=c.ID_Couleur
ORDER BY c.NOM_COULEUR;
