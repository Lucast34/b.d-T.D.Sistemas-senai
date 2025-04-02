use db_ruido;

insert into tb_cidade(sigla) value('tag-nor'),('tag-sul'),('ceil'),('sam-nor'),('sam-sul'),('pla-pil'),('nuc-ban');


insert into tb_cruzamento(sigla, ruido) values
('br-01',85),
('br-02',92),
('br-03',95),
('br-04',98),
('br-05',101),
('br-06',103),
('br-07',107),
('br-08',110),
('br-09',114),
('br-10',117),
('br-11',120),
('br-12',120),
('br-13',122),
('br-14',125),
('br-15',127),
('br-16',112);

-- min
select sigla, min(ruido)as min_ruido from tb_cruzamento;

-- avg
select sigla, avg(ruido)as avg_ruidoo from tb_cruzamento;

-- max
select sigla, max(ruido)as max_rudio from tb_cruzamento;

-- count
select sigla, count(ruido)as count_rudio from tb_cruzamento;

-- sum
select sigla, sum(ruido)as sum_rudio from tb_cruzamento;