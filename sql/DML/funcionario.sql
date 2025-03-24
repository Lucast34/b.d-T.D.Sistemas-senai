CREATE TABLE tb_funcionario(
    id int primary key auto_increment,
    nome varchar(80) NOT NULL  
);

insert into tb_funcionario(nome)
values('Joao'),('Rodrigo'),('Alex'),('Gabriel'),('Ezaquiel');