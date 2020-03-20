/*----------------------------------Question1----------------------------------*/
/*1 / Afficher toutes les personnes venant de Seattle ainsi que leur nombre.*/

select a.last_name, ROW_NUMBER() OVER (ORDER BY a.last_name) QUANTITE from 
								(SELECT c.last_name, c.first_name, c.city,c.company, count(*) QUANTITE  FROM northwind.customers c
									where c.city Like "seattle" group by c.last_name, c.first_name, c.city,c.company
										UNION
								SELECT e.last_name, e.first_name, e.city,e.company,count(*) QUANTITE FROM northwind.employees e
									Where e.city Like "seattle" group by e.last_name, e.first_name, e.city,e.company) a
							group by a.last_name;

/*---------------------------------Question2----------------------------------*/
/*2/ Afficher l’employé ayant le privilège Purchase Approvals.*/

select  e.last_name, e.first_name from northwind.employees e
inner join northwind.employee_privileges EP on e.ID=EP.employee_id
inner join northwind.privileges P on EP.privilege_id=P.ID
where p.privilege_name like 'Purchase Approvals';

/*---------------------------------Question3----------------------------------*/
/*3/ Afficher tous les produits de la catégorie condiment et afficher leur quantité par unité.*/

select p.product_name, p.category, p.quantity_per_unit from northwind.products p
where p.category like 'condiments'
group by p.product_name;

/*---------------------------------Question4----------------------------------*/
/*4/ Afficher les 3 produits les moins chers et les 3 produits les plus chers.*/

select a.product_name, a.list_price FROM (select p.product_name, p.list_price from products p
											order by p.list_price DESC limit 3) a
UNION
select q.product_name,q.list_price FROM (select p.product_name, p.list_price from products p
											order by p.list_price ASC limit 3) q;