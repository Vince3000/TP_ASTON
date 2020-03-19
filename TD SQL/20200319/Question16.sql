/*---------------------------Question16-----------------------------*/
/*16. Lister les tickets (année, numéro de ticket, montant total payé). En sachant que le prix
de vente est égal au prix d’achat augmenté de 15% et que l’on n’est pas assujetti à la TVA.*/

select t.ANNEE,t.NUMERO_TICKET,SUM((a.Prix_achat*v.quantite)*1.15) FROM beer.ticket t
INNER JOIN beer.ventes v ON t.NUMERO_TICKET=v.NUMERO_TICKET
INNER JOIN beer.article a ON v.ID_ARTICLE=a.ID_ARTICLE
group by t.NUMERO_TICKET;
