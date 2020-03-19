/*---------------------------Question5------------------------------*/
/*5. Quelles sont les tickets émis au mois de mars 2014.*/

select * from beer.ticket t
where t.DATE_VENTE BETWEEN '2014-03-01 00:00:00' and '2014-03-31 23:59:59';
