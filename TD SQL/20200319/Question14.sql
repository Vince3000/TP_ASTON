/*---------------------------Question14-----------------------------*/
/*14. Lister les marques de bières du continent ‘Afrique’*/

select m.NOM_MARQUE FROM beer.marque m
INNER JOIN beer.pays p ON m.ID_PAYS=p.ID_PAYS
INNER JOIN beer.continent c on p.ID_CONTINENT=c.ID_CONTINENT
where c.NOM_CONTINENT LIKE ('%afrique%');
