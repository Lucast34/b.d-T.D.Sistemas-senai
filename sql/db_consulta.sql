-- systemctl mysql deactivate linux

drop database db_clinica;

create database if not exists db_clinica
charset utf8mb4 collate utf8mb4_general_ci ;

use db_clinica;

create table if not exists tb_especialidade(
	id_especialidade int primary key auto_increment,
    descricao varchar(255) not null
    
)auto_increment=1;

create table if not exists tb_medico(
	id_medico int primary key auto_increment,
    nome varchar(255) not null,
    id_especialidade_medico int not null,

constraint fk_tb_especialidade foreign key (id_especialidade_medico) references tb_especialidade(id_especialidade)
)auto_increment=1;


create table if not exists tb_paciente(
	id_paciente int primary key,
    nome varchar(255) not null
)auto_increment = 1;

create table if not exists tb_consulta(
	id_consulta int primary key ,
    dt_consulta date not null,
    id_medico_consulta int not null,
    id_paciente_consulta int not null,
    
    constraint fk_tb_medico foreign key (id_medico_consulta) references tb_medico(id_medico),
    constraint fk_tb_paciente foreign key (id_paciente_consulta) references tb_paciente(id_paciente)
)auto_increment=1;

drop table tb_consulta;

show tables;