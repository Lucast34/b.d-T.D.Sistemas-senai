create database if not exists db_heroi_vs_vilao
charset utf8mb4 collate utf8mb4_general_ci;

use db_heroi_vs_vilao;

create table if not exists tb_heroi(
	id_heroi  int primary key auto_increment,
    nome varchar(255) not null, 
	poder varchar(255) not null
    
)auto_increment=1;

create table if not exists tb_vilao(
	id_vilao int primary key auto_increment,
    nome varchar(255) not null,
    poder varchar(255) not null
    
)auto_increment=1;

create table if not exists tb_local(
	id_local int primary key auto_increment,
    nome varchar(255) not null
    
)auto_increment=1;

create table if not exists tb_missao(
	id_missao int primary key auto_increment,
    descricao varchar(255) not null,
    id_local_missao int not null,
    
    constraint fk_tb_local foreign key (id_local_missao) references tb_local(id_local)

)auto_increment=1;

create table if not exists tb_missao_heroi(
	id_missao_heroi int primary key auto_increment,
    id_missao_mh int not null,
    id_heroi_mh int not null,
    
constraint fk_tb_missao foreign key (id_missao_mh) references tb_missao(id_missao),
constraint fk_tb_heroi foreign key (id_heroi_mh) references tb_heroi(id_heroi)
)auto_increment=1;

create table if not exists tb_missao_vilao(
	id_missao_vilao int primary key auto_increment,
    id_missao_mv int not null,
    id_vilao_mv int not null,
    
constraint fk_tb_missao foreign key (id_missao_mv) references tb_missao(id_missao),
constraint fk_tb_vilao foreign key (id_vilao_mv) references tb_vilao(id_vilao)
)auto_increment=1;


