create database if not exists db_diariobordo charset utf8mb4 collate utf8mb4_general_ci;

create table if not exists tb_aluno(
	id int auto_increment,
    ra mediumint not null unique,
    cpf int(12) not null unique,
    nome varchar(255) not null
	
)auto_increment=1;

create table if not exists tb_diariobordo(
	id int auto_increment,
    descricao text(289),
    dt_hora datetime,
    id_aluno int not null,
    
    constraint fk_tb_aluno foreign key (id_aluno) references tb_aluno(id)
    
)auto_increment=1;

create table if not exists tb_avaliacao(
	id int auto_increment,
    nota tinyint(1) not null,
	id_diariobrodo int not null,
    
    constraint fk_tb_diariobordo foreign key (id_diariobordo) references tb_diariobordo(id)
    
    
)auto_increment = 1;