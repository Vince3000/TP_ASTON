/*---------------------------Question7------------------------------*/
/*7. Quelles sont les tickets émis au mois de mars et juin 2014 ?*/

select * from beer.ticket t
where t.DATE_VENTE BETWEEN '2014-03-01 00:00:00' and '2014-03-31 23:59:59'
OR t.DATE_VENTE BETWEEN '2014-05-01 00:00:00' and '2014-05-30 23:59:59';
