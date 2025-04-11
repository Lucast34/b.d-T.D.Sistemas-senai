create database if not exists db_lanchonete
charset utf8mb4 collate utf8mb4_general_ci;

use db_lanchonete;

CREATE TABLE if not exists tb_produto (
    id INTEGER primary key auto_increment,
    nome VARCHAR(255) not null,
    preco_venda FLOAT(5,2) not null,
    preco_custo FLOAT(5,2) not null,
    magem_lucro int
    
)auto_increment=1;

create table if not exists tb_combo(
	id int primary key auto_increment,
    preco_combo float(5,2),
	custo_combo float(5,2), 
	preco_venda_combo float(5,2)
);


CREATE TABLE if not exists tb_entrega (
    id INTEGER primary key auto_increment,
    vl_ifood FLOAT(5,2),
    porc_ifood FLOAT(5,2),
    vl_entrega FLOAT(5,2)
)auto_increment=1;

CREATE TABLE if not exists tb_pedido (
    id INTEGER primary key auto_increment,
    cliente VARCHAR(255),
    id_combo int,
    
    constraint fk_tb_conmbo foreign key (id_combo) references tb_combo(id)
)auto_increment=1;

CREATE TABLE if not exists tb_pedido_entrega (
    id INTEGER PRIMARY KEY auto_increment,
    id_pedido_pe INTEGER not null,
    id_entrega_pe INTEGER not null,
    
    constraint fk_tb_pedido_pe foreign key (id_pedido_pe) references tb_pedido(id),
    constraint fk_tb_entrega_pe foreign key (id_entrega_pe) references tb_entrega(id)
    
)auto_increment=1;

CREATE TABLE if not exists tb_produto_pedido (
    id INTEGER PRIMARY KEY auto_increment,
    id_produto_pp INTEGER not null,
    id_pedido_pp INTEGER not null,
    
	constraint fk_tb_pedido_pp foreign key (id_pedido_pp) references tb_pedido(id),
    constraint fk_tb_produto_pp  foreign key (id_produto_pp) references tb_produto(id)
    
)auto_increment=1;


-- drop database db_lanchonete;