create database if not exists db_filme
charset utf8mb4 collate utf8mb4_general_ci;

use db_filme;

create table if not exists tb_ator (
	id_ator int primary key auto_increment,
    nome varchar(255) not null
    
)auto_increment=1;

create table if not exists tb_diretor(
	id_diretor int primary key auto_increment,
    nome varchar(255) not null,
    nacionalidade varchar(255) not null
)auto_increment=1;


create table if not exists tb_filme (
	id_filme int primary key auto_increment,
	titulo varchar(255) not null,
    ano year,
    id_diretor_filme int not null,
    
    constraint fk_tb_diretor foreign key (id_diretor_filme) references tb_diretor(id_diretor)
)auto_increment=1;


create table if not exists tb_ator_filme(
	id_ator_filme int primary key auto_increment,
    id_filme_af int not null,
    id_ator_af int not null,
    
constraint fk_tb_filme foreign key (id_filme_af) references tb_filme(id_filme),
constraint fk_tb_ator foreign key (id_ator_af) references tb_ator(id_ator)
)auto_increment=1;


