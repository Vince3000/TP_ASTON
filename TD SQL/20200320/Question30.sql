/*---------------------------Question30-----------------------------*/
/*30. Existe t il des tickets sans vente ?*/

select * from beer.ticket t
left join beer.ventes v on t.NUMERO_TICKET=v.NUMERO_TICKET and t.ANNEE=v.ANNEE
where v.NUMERO_TICKET is null;



