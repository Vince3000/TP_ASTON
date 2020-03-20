/*---------------------------Question30-----------------------------*/
/*30. Existe t il des tickets sans vente ?*/

select distinct t.NUMERO_TICKET from beer.ticket t
LEFT JOIN beer.ventes v on t.NUMERO_TICKET=v.NUMERO_TICKET AND t.ANNEE=v.ANNEE
where v.NUMERO_TICKET is null;



