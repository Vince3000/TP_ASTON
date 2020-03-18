create database TP_20200318;

/*------------------------------------TP 1 Comptabiliser le nombre de visiteurs d’un site------------------------*/

CREATE TABLE traffic(
id_utilisateur INT NOT NULL AUTO_INCREMENT,
IP varchar(45),
DT_FIRST_Visit DATEtime default now(),
DT_LAST_Visit DATE,
nb_visit int default +1,
 PRIMARY KEY (id_utilisateur));
 
insert into traffic (IP,DT_LAST_Visit) values ("1.181.168.1","2020-03-11"),("1.181.168.2","2020-03-11"),("1.181.168.1","2020-03-11");

SELECT COUNT(IP) 
FROM traffic;

select * from traffic;


/*---------------------------------------------------TP2 Les relations-------------------------------------------*/
CREATE TABLE pays(
id_pays INT NOT NULL AUTO_INCREMENT,
nom_pays varchar(55),
PRIMARY KEY (id_pays));

CREATE TABLE ville(
id_ville INT NOT NULL AUTO_INCREMENT,
nom_ville varchar(55),
id_pays INT NOT NULL,
PRIMARY KEY (id_ville));

CREATE TABLE langue(
id_langue INT NOT NULL AUTO_INCREMENT,
nom_langue varchar(55),
id_pays INT NOT NULL,
PRIMARY KEY (id_langue));

CREATE TABLE langue_TO_pays(
id_langue INT NOT NULL,
id_pays INT NOT NULL);

alter table langue_TO_pays add constraint fk_langue foreign key(id_langue)
		references langue(id_langue);
alter table langue_TO_pays add constraint fk2_pays foreign key(id_pays)
		references pays(id_pays);

alter table ville add constraint fk_pays foreign key(id_pays)
		references pays(id_pays);

alter table langue add constraint fk1_pays foreign key(id_pays)
		references pays(id_pays);

insert into pays(nom_pays) values ("france"),("allemagne"),("belgique"),("royaume uni"),("USA");
insert into langue(nom_langue,id_pays) values ("français","1"),("allemand","2"),("nertherland","3"),("anglais","4");
insert into ville(nom_ville,id_pays) values ("paris","1"),("berlin","2"),("bruxelle","3"),("londres","4"),("ny","4");
insert into langue_id(id_pays,id_langue) values ("1","1"),("2","2"),("3","3"),("4","4"),("5","4");

select p.nom_pays from pays p
inner join langue_id l on p.id_pays=l.id_pays
inner join langue on langue.id_langue = l.id_langue
where langue.nom_langue="anglais";


/*-----------------------------------------TP3 le blog--------------------------------------------*/
CREATE TABLE blog_UTLISATEUR(
UID INT NOT NULL auto_increment,
utilisateur varchar(55),
PRIMARY KEY (UID));

CREATE TABLE article(
article_id int not null auto_increment,
article varchar(55),
UID int NOT NULL,
FOREIGN KEY(UID) references blog_UTLISATEUR(UID),
PRIMARY KEY (article_id));

CREATE TABLE commentaire(
comm_id int not null auto_increment,
commentaire varchar(255),
UID int NOT NULL,
article_id int NOT NULL,
FOREIGN KEY(UID) references blog_UTLISATEUR(UID),
FOREIGN KEY(article_id) references article(article_id),
PRIMARY KEY (comm_id));

CREATE TABLE message(
message_id int not null auto_increment,
message varchar(255),
UID int NOT NULL,
FOREIGN KEY(UID) references blog_UTLISATEUR(UID),
PRIMARY KEY (message_id));

CREATE TABLE tags(
tags_id int not null auto_increment,
tags varchar(255),
UID int NOT NULL,
FOREIGN KEY(UID) references blog_UTLISATEUR(UID),
PRIMARY KEY (tags_id));

/*-----------------------------------------TD4 E-commmerce--------------------------------------------*/
CREATE TABLE customer(
UID INT NOT NULL auto_increment,
nom varchar(55),
prenom varchar(55),
email varchar(55),
pasword text not null,
PRIMARY KEY (UID));

create table panier(
panier_id int not null,
article varchar(150),
primary key(panier_id),
FOREIGN KEY(UID) references customer(UID));

create table purchase(
purchase_id int not null auto_increment,
purchase varchar(150),
purchase_date date,
primary key(purchase_id),
FOREIGN KEY(UID) references customer(UID));





        

