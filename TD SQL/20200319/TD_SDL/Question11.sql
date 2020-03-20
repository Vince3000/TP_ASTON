/*---------------------------Question11------------------------------*/
/*11.Lister chaque ticket pour lequel la quantité totale d’articles vendus est supérieure à 500. ( Classer par quantité décroissante)*/

select t.numero_ticket, SUM(v.QUANTITE) SOMME  from beer.ticket t
INNER JOIN beer.ventes v ON t.NUMERO_TICKET=v.NUMERO_TICKET
group by t.NUMERO_TICKET having SUM(v.QUANTITE) > 500
ORDER BY SUM(v.QUANTITE) DESC;
