create database if not exists db_loja_quadrinho
charset utf8mb4 collate utf8mb4_general_ci;

use db_biblioteca;

create table if not exists tb_autor (
	id_autor  int primary key auto_increment,
    nome varchar(255) not null 
    
)auto_increment=1;

create table if not exists tb_cliente (
	id_cliente  int primary key auto_increment,
    nome varchar(255) not null 
    
)auto_increment=1;

create table if not exists tb_quadrinho (
	id_livro int primary key auto_increment,
    titulo varchar(255) not null,
    id_autor_quadrinho int not null,
    
    constraint fk_tb_autor foreign key (id_autor_quadrinho) references tb_autor (id_autor)
)auto_increment=1;

create table if not exists tb_venda(
	id_venda int primary key auto_increment,
    valor float (5,2) not null,
    id_cliente_venda int not null,
    
    constraint fk_tb_cliente foreign key (id_cliente_venda) references tb_cliente(id_cliente)    
)auto_increment=1;

create table if not exists tb_emprestimo(
	id_emprestimo int primary key auto_increment,
    id_quadirnho_vq int,
    id_vend_vq int not null,
    
constraint fk_tb_quarinho foreign key (id_quadirnho_vq) references tb_quadrinho(id_quadrinho),
constraint fk_tb_venda foreign key (id_venda_vq) references tb_venda(id_venda)
)auto_increment=1;


