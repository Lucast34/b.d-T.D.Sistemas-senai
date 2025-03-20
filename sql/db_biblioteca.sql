create database if not exists db_biblioteca
charset utf8mb4 collate utf8mb4_general_ci;

use db_biblioteca;

create table if not exists tb_autor (
	id_autor  int primary key auto_increment,
    nome varchar(255) not null 
    
)auto_increment=1;

create table if not exists tb_livro (
	id_livro int primary key auto_increment,
    titulo varchar(255) not null,
    ano year not null,
    id_autor_livro int not null,
    
    constraint fk_tb_autor foreign key (id_autor_livro) references tb_autor (id_autor)
)auto_increment=1;

create table if not exists tb_usuario(
	id_usuario int primary key auto_increment,
    nome varchar(255) not null,
    email varchar(255) unique not null
    
)auto_increment=1;

create table if not exists tb_emprestimo(
	id_emprestimo int primary key auto_increment,
    dt_emprestimo date not null,
    dt_devolucao date not null,
    id_livro_emprestimo int,
    id_usuario_emprestimo int not null,
    
constraint fk_tb_livro foreign key (id_livro_emprestimo) references tb_livro(id_livro),
constraint fk_tb_usuario foreign key (id_usuario_emprestimo) references tb_usuario(id_usuario)
)auto_increment=1;


