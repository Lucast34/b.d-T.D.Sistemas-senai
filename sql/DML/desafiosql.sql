-- https://dontpad.com/desafios-sql
-- comentário

DROP DATABASE if exists salaoestilorei; -- ddl
CREATE DATABASE if not exists salaoestilorei; -- ddl

USE salaoestilorei;

CREATE TABLE if not exists cliente(
    id int primary key auto_increment,
    nome varchar(80) NOT NULL,
    telefone char(13),
    email varchar(80) UNIQUE NOT NULL,
    senha varchar(255) NOT NULL
);
describe cliente;

-- DQL
SELECT * FROM cliente;

-- ALTER TABLE cliente MODIFY senha VARCHAR(64) NOT NULL;

-- mostrar a estrutura da tabela
-- describe cliente;

CREATE TABLE if not exists funcionario(
    id int primary key auto_increment,
    nome varchar(80) NOT NULL  
);

select * from funcionario;

-- DROP TABLE servico;
CREATE TABLE if not exists servico(
    id int primary key auto_increment,
    nome varchar(80) NOT NULL,
    valor decimal(8,2)   
);



SELECT * FROM servico;

-- Criar a tabela de agendamento
CREATE TABLE if not exists agendamento(
   id int primary key auto_increment,
   data_agenda date NOT NULL,
   hora time NOT NULL,
   fk_cliente_id int NOT NULL,  -- campo do tipo inteiro
   fk_servico_id int NOT NULL,  -- campo do tipo inteiro
   fk_funcionario_id int NOT NULL -- campo do tipo inteiro
);

-- alterar a tabela agendamento = alter table
-- adicionamos constraint com o nome FK
ALTER TABLE agendamento ADD CONSTRAINT FK_agendamento_cli
      foreign key(fk_cliente_id)
      references cliente(id)
      ON DELETE CASCADE;
      
ALTER TABLE agendamento ADD CONSTRAINT FK_agendamento_fun
      foreign key(fk_funcionario_id)
      references funcionario(id)
      ON DELETE CASCADE;
      
ALTER TABLE agendamento ADD CONSTRAINT FK_agendamento_ser
      foreign key(
      fk_servico_id)
      references servico(id)
      ON DELETE CASCADE;