/*---------------------------Question10------------------------------*/
/*9. 10. Lister pour chaque ticket la quantité totale d’articles vendus. (Classer par quantité décroissante)*/

select t.numero_ticket, SUM(v.QUANTITE)  from beer.ticket t
INNER JOIN beer.ventes v ON t.NUMERO_TICKET=v.NUMERO_TICKET
group by t.NUMERO_TICKET
ORDER BY SUM(v.QUANTITE);
