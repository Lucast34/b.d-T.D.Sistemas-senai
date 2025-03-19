-- systemctl mysql deactivate linux

create database if not exists db_clinica
charset utf8mb4 collate utf8_general_ci;

use db_clinica;

create table tb_especialidade(
	id_especialidade int primary key auto_increment,
    descricao varchar(255) not null
    
)auto_increment=1;

create table tb_medico(
	id_medico int primary key auto_increment,
    nome varchar(255) not null,
    id_especialidade_medico int not null,

constraint fk_tb_especialidade foreign key (id_especialidade_medico) references tb_especialidade(id_especialidade)
)auto_increment=1;