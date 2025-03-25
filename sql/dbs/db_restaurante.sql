create database if not exists db_restaurante
charset utf8mb4 collate utf8mb4_general_ci;

use db_restaurante;

create table if not exists tb_pratos (
	id_prato int primary key auto_increment,
    descricao varchar(255) not null, 
    
)auto_increment=1;

create table if not exists tb_cliente(
	id_cliente int primary key auto_increment,
    nome varchar(255) not null,
    
)auto_increment=1;


create table if not exists tb_pedido (
	id_pedido int primary key auto_increment,
	preco float(5,2) not null,
    id_cliente_pedido int not null,
    
    constraint fk_tb_cliente foreign key (id_cliente_pedido) references tb_cliente(id_cliente)
)auto_increment=1;


create table if not exists tb_prato_pedido(
	id_prato_pedido int primary key auto_increment,
    id_pedido_pp int not null,
    id_prato_pp int not null,
    
constraint fk_tb_pedido foreign key (id_pedido_pp) references tb_pedido(id_pedido),
constraint fk_tb_prato foreign key (id_prato_pp) references tb_prato(id_prato)
)auto_increment=1;


