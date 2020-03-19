/*--------------------------Question1-------------------------------------*/

SELECT t.NUMERO_TICKET FROM beer.ticket t
INNER JOIN beer.ventes v on t.NUMERO_TICKET=v.NUMERO_TICKET
INNER JOIN beer.article A on v.ID_ARTICLE=A.ID_ARTICLE
where a.ID_ARTICLE=500;