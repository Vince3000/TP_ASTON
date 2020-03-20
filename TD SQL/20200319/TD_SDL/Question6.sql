/*---------------------------Question6------------------------------*/
/*6. Quelles sont les tickets émis entre les mois de mars et avril 2014 ?*/

select * from beer.ticket t
where t.DATE_VENTE BETWEEN '2014-03-01 00:00:00' and '2014-04-30 23:59:59';
