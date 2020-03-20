/*---------------------------Question22-----------------------------*/
/*22. Lister les tickets sur lesquels apparaissent un des articles apparaissant aussi sur le
ticket 2014 856 (le ticket 856 de l année 2014)*/

select DISTINCT t.NUMERO_TICKET from beer.ticket t
inner join beer.ventes v on t.NUMERO_TICKET=v.NUMERO_TICKET
WHERE EXISTS (select v.ID_ARTICLE from beer.ticket t
inner join beer.ventes v on t.NUMERO_TICKET=v.NUMERO_TICKET
where t.NUMERO_TICKET=856 and t.ANNEE=2014);

