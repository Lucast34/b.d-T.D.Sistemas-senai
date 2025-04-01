create database if not exists db_ruido
charset utf8mb4 collate utf8mb4_general_ci;

use db_ruido;

create table if not exists tb_cidade(
	id int primary key auto_increment,
    sigla varchar(7) not null
)auto_increment=1; 


create table if not exists tb_cruzamento(
	id int primary key auto_increment,
    sigla varchar(255),
    ruido int
    
)auto_increment=1;


create table if not exists tb_cidade_cruzamento(
	id int primary key auto_increment,
    id_cidade int not null,
    id_cruzamento int not null,
    
    constraint Fk_tb_Cidade foreign key (id_cidade) references tb_cidade(id),
	constraint Fk_tb_Cruzamento foreign key (id_cruzamento) references tb_cruzamento(id)
)auto_increment=1;