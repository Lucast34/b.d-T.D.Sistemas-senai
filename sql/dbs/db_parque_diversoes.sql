create database if not exists db_parque_diversoes
charset utf8mb4 collate utf8mb4_general_ci;

use db_parque_diversoes;

create table if not exists tb_visitante(
	id_visitante int primary key auto_increment,
    nome varchar(255) not null,
    altura float (3,2) not null
    
)auto_increment=1;

create table if not exists tb_ingresso(
	id_ingresso int primary key auto_increment,
    valor float (5,2) not null,
    id_visitante_ingresso int not null,
    
    constraint fk_tb_visitante foreign key (id_local_missao) references tb_visitante(id_visitante)

)auto_increment=1;

create table if not exists tb_brinquedo(
	id_binquedo int primary key auto_increment,
    nome varchar(255) not null,
    altura_min float(3,2) not null,
    id_ingresso_brinquedo int not null,
    
constraint fk_tb_ingresso foreign key (id_ingresso_brinquedo) references tb_ingresso(id_ingresso)

)auto_increment=1;



