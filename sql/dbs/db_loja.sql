create database if not exists db_loja
charset utf8mb4 collate utf8mb4_general_ci;

use db_loja;

create table if not exists tb_produto (
	id_pedido  int primary key auto_increment,
    nome varchar(255) not null, 
    preco float(5,2)
    
)auto_increment=1;

create table if not exists tb_cliente(
	id_cliente int primary key auto_increment,
    nome varchar(255) not null,
    email varchar(255) unique not null
    
)auto_increment=1;


create table if not exists tb_pedido (
	id_pedido int primary key auto_increment,
    dt_pedido date not null,
    id_cliente_pedido int not null,
    
    constraint fk_tb_cliente foreign key (id_cliente_pedido) references tb_cliente(id_cliente)
)auto_increment=1;


create table if not exists tb_produto_pedido(
	id_produto_pedido int primary key auto_increment,
    id_pedido_pp int not null,
    id_produto_pp int not null,
    
constraint fk_tb_pedido foreign key (id_pedido_pp) references tb_pedido(id_pedido),
constraint fk_tb_produto foreign key (id_produto_pp) references tb_produto(id_produto)
)auto_increment=1;


