create database if not exists db_zoo
charset utf8mb4 collate utf8mb4_general_ci;

use db_zoo;

create table if not exists tb_especie(
	id_especie int primary key auto_increment,
    descricao varchar(255) not null
    
)auto_increment=1;

create table if not exists tb_habitat(
	id_habiat int primary key auto_increment,
    tipo_habitat varchar(255) not null
    
)auto_increment=1;


create table if not exists tb_cuidador(
	id_cuidador int primary key auto_increment,
    nome varchar(255) not null
    
)auto_increment=1;


create table if not exists tb_cuidador_habitat(
	id_ingresso int primary key auto_increment,
    id_habitat_ch int not null,
    id_cuidador_ch int not null,
    
    constraint fk_tb_habitat foreign key (id_habitat_ch) references tb_habitat(id_habitat),
	constraint fk_tb_cuidador foreign key (id_cuidador_ch) references tb_cuidador(id_cuidador)
)auto_increment=1;

create table if not exists tb_animal(
	id_animal int primary key auto_increment,
    idade int not null,
    id_habitat_animal int not null,
    id_especie_animal int not null,

constraint fk_tb_habitat foreign key (id_habitat_animal) references tb_habitat(id_habitat),
constraint fk_tb_especie foreign key (id_especie_animal) references tb_especie(id_especie)

)auto_increment=1;



