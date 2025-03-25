create database if not exists db_barbearia
charset utf8mb4 collate utf8mb4_general_ci; -- DDL

use db_barbearia; -- DQL

create table if not exists tb_cliente (
	id int primary key auto_increment,
    nome varchar(60) not null,
    whatsapp char(13) not null,
    email varchar(80) unique
)auto_increment=1; -- DDL

show tables; -- DQL

describe tb_cliente; -- DQL
 
insert into tb_cliente(nome,whatsapp,email) values('Joao','6188445533','joao@gmail.com'); -- DML

select * from tb_cliente; -- DQL

create table if not exists tb_servicos(
	id int primary key auto_increment,
    nome varchar(255) not null,
    valor float(5,2) not null
)auto_increment=1;

insert into tb_servicos(nome,valor) 
values('Corte', 37.00),
('Barba', 29.00),
('Acabamento', 17.00),
('Maquina', 28.00),
('Hidratacao', 45.00),
('Escova Progressiva', 42.00),
('Sobrancelha', 37.00),
('Pigmentação Barba', 38.00),
('Depilação com Cera', 32.00);

select * from tb_servicos;