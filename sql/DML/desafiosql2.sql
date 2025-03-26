USE salaoestilorei;

insert into cliente(nome,telefone,email,senha) 
values('joao','61884455335','joao@gmail.com','592'),
('matheus','61987789878','matheus@email.com','123'),
('rodrigo','61988878878','rodrigo@aluno.senai.br','132'),
('gabriel','61987489878','gabriel@aluno.senai.br','231'),
('vitor','61987789878','vitor@email.com','321'),
('leo','61982289878','leo@email.com','158'),
('ronaldo','61987789878','ronaldo@email.com','129'),
('joaquin','61227789878','joaquin@email.com','156'),
('judas','61987756878','judas@emaluno.senai.br','144'),
('felipe','61987789878','felipe@email.com','199'),
('guilherme','61987789999','guilherme@aluno.senai.br','982');
; -- DML

insert into funcionario(nome)
values('joao'),('rodrigo'),('alex'),('gabriel'),('ezaquiel'),('fernanda'),('levy'),('enzo'),('ryan'),('pedro');

insert into servico(nome,valor) 
values('corte', 37.00),
('barba', 29.00),
('acabamento', 17.00),
('maquina', 28.00),
('hidratacao', 45.00),
('escova progressiva', 42.00),
('sobrancelha', 37.00),
('pigmentação barba', 38.00),
('depilação com cera', 32.00),
('lavagem' ,10.00);


select * from cliente where email like '%@aluno.senai.br';

select count(id) as qt_cliente from cliente;