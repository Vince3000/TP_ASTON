/*-------------------------------------------------------------TD AUTO Ecole----------------------------------------------------------------*/
Create database AUTOECOLE;

create table eleve(
eleve_id int not null auto_increment,
nom varchar(55),
prénom varchar(55),
adresse varchar(42),
date_naissance date,
primary key(eleve_id));

create table cd_rom(
id_cd int not null auto_increment,
num_cd int not null,
nom_editeur varchar(100),
primary key(id_cd));

create table question(
id_question int not null auto_increment,
num_question int not null,
intitulé varchar(100),
reponse varchar(100),
difficulte int not null,
theme varchar(50),
id_cd int not null,
FOREIGN KEY(UID) references cd_rom(id_cd),
primary key(id_question));

create table séance(
seances_id int not null auto_increment,
dt_séance datetime,
id_cd int not null,
id_eleve int not null,
FOREIGN KEY(id_cd) references cd_rom(id_cd),
FOREIGN KEY(id_eleve) references eleve(eleve_id));

create table reponse(
id_reponse int not null,
reponse enum("1","0","0") not null,
id_question int not null,
eleve_id int not null,
FOREIGN KEY(id_question) references question(id_question),
FOREIGN KEY(eleve_id) references eleve(eleve_id));

