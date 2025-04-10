use db_schooltracker;

show tables;

select * from tb_aluno;

select * from tb_escolaridade;


select al.nome as aluno, es.nome as escolaridade
from tb_aluno as al
inner join tb_escolaridade as es
where al.id_escolaridade = es.id;