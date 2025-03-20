create database if not exists db_escola_magia
charset utf8mb4 collate utf8mb4_general_ci;

use db_escola_magia;

create table if not exists tb_mago(
	id_mago  int primary key auto_increment,
    nome varchar(255) not null, 
    nv_mago int not null
)auto_increment=1;

create table if not exists tb_aula(
	id_aula int primary key auto_increment,
    conteudo varchar(255)
    
)auto_increment=1;

create table if not exists tb_feitico(
	id_feitico int primary key auto_increment,
    dificuldade varchar(255)
    
)auto_increment=1;


create table if not exists tb_aula_feitico(
	id_aula_feitico int primary key auto_increment,
    id_aula_fa int not null,
    id_feitico_fa int not null,
    
constraint fk_tb_aula foreign key (id_aula_fa) references tb_aula(id_aula),
constraint fk_tb_feitico foreign key (id_feitico_fa) references tb_feitico(id_feitico)
)auto_increment=1;

create table if not exists tb_aula_mago(
	id_aula_mago int primary key auto_increment,
    id_aula_am int not null,
    id_mago_am int not null,
    
constraint fk_tb_aula foreign key (id_aula_am) references tb_aula(id_aula),
constraint fk_tb_mago foreign key (id_mago_am) references tb_mago(id_mago)
)auto_increment=1;


