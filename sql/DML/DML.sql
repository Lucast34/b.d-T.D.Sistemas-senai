-- DDL
CREATE TABLE tb_cliente(
    id int primary key auto_increment,
    nome varchar(80) NOT NULL,
    telefone char(13),
    email varchar(80) UNIQUE NOT NULL,
    senha varchar(255) NOT NULL
);

--DML
insert into tb_cliente(nome,telefone,email,senha)
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