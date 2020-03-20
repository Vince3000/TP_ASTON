/*---------------------------Question12------------------------------*/
/*12. Lister chaque ticket pour lequel la quantité totale d’articles vendus est supérieure à 500.
On exclura du total, les ventes ayant une quantité supérieure à 50 (classer par quantité décroissante)*/

select t.numero_ticket, SUM(v.QUANTITE) SOMME  from beer.ticket t
INNER JOIN beer.ventes v ON t.NUMERO_TICKET=v.NUMERO_TICKET
group by t.NUMERO_TICKET having SUM(v.QUANTITE) > 500 and v.QUANTITE<50
ORDER BY v.QUANTITE DESC;
