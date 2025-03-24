-- comentário

-- Criar um banco de dados

-- Linguagem SQL

-- DDL , DML, DQL

-- DDL (Data Definition Language)
-- CREATE , DROP , ALTER
-- criar o banco de dados
DROP DATABASE salaoestilorei;
CREATE DATABASE salaoestilorei;
-- usar o banco de dados
USE salaoestilorei;
-- criar a tabela
CREATE TABLE cliente(
    id int primary key auto_increment,
    nome varchar(80) NOT NULL,
    telefone char(13),
    email varchar(80) UNIQUE NOT NULL,
    senha varchar(255) NOT NULL
);
describe cliente;
ALTER TABLE cliente MODIFY senha VARCHAR(64) NOT NULL;

insert into cliente(nome,telefone,email,senha)
values
('Felipe','555-555','placeholer1@email','12345'),
('Matheus','555-555','placeholer2@email','12345'),
('Rodrigo','555-555','placeholer3@email','12345'),
('Bruno','555-555','placeholer4@email','12345'),
('Karyna','555-555','placeholer5@email','12345'),
('Daniel','555-555','placeholer6@email','12345'),
('Guilherme','555-555','placeholer7@email','12345'),
('Carlos','555-555','placeholer8@email','12345'),
('Yan','555-555','placeholer9@email','12345'),
('Paloma','555-555','placeholer10@email','12345'),
('Natanael','555-555','placeholer11@email','12345'),
('Vinicius','555-555','placeholer12@email','12345');

select * from cliente;

-- mostrar a estrutura da tabela
describe cliente;
-- Exercício
-- "Marvin agora é só você..."
-- Criar a tabela Funcionario
-- Criar o servico
-- criar a tabela funcionário
CREATE TABLE funcionario(
    id int primary key auto_increment,
    nome varchar(80) NOT NULL  
);

-- DROP TABLE servico;
CREATE TABLE servico(
    id int primary key auto_increment,
    nome varchar(80) NOT NULL,
    valor decimal(8,2)   
);
-- Mostrar dados do serviço
SELECT * FROM servico;
-- Criar a tabela de agendamento
CREATE TABLE agendamento(
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