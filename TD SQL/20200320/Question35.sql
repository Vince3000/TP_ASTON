/*---------------------------Question35-----------------------------*/
/*35. Supprimer les tickets qui n’ont pas de ventes.*/

select * from beer.ticket t
left join beer.ventes v on t.NUMERO_TICKET=v.NUMERO_TICKET and t.ANNEE=v.ANNEE
where v.NUMERO_TICKET is null;
/*# ANNEE	NUMERO_TICKET	DATE_VENTE	ANNEE	NUMERO_TICKET	ID_ARTICLE	QUANTITE
	2015	2065			2015-10-06 00:00:00				
	2016	1138			2016-04-02 00:00:00				
	2016	1452			2016-04-26 00:00:00			*/	

SET FOREIGN_KEY_CHECKS=0;
DELETE  FROM beer.ticket t
where concat(t.NUMERO_TICKET,t.ANNEE) IN ('20652015','11382016','14522016');
SET FOREIGN_KEY_CHECKS=1;



