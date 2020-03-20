/*---------------------------Question32-----------------------------*/
/*32. Appliquer une augmentation de tarif de 10% pour toutes les bières ‘Trappistes’ de couleur ‘Blonde’*/

UPDATE beer.article a
SET a.PRIX_ACHAT=ROUND(a.PRIX_ACHAT+a.prix_ACHAT*0.10,2)
where a.ID_Couleur='3' AND a.id_type='13';


