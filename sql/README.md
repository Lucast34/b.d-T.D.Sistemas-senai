# Codigo SQL

Caso queira ver o arquivo do código acesse por aqui:

|Código|arquivo|
|------|-------|
|db_consultas|[codigo](./dbs/db_consulta.sql)|
|db_biblioteca|[codigo](./dbs/db_biblioteca.sql)|
|db_loja|[codigo](./dbs/db_loja.sql)|
|db_escola_magia|[codigo](./dbs/db_escola_magia.sql)|
|db_heroi_vs_vilao|[codigo](./dbs/db_heroi_vs_vilao.sql)|
|db_parque_diversoes|[codigo](./dbs/db_parque_diversoes.sql)|
|db_zoo|[codigo](./dbs/db_zoo.sql)|
|db_loja_quadrinhos|[codigo](./dbs/db_loja_quadrinho.sql)|
|db_restaurante|[codigo](./dbs/db_restaurante.sql)|
|db_filme|[codigo](./dbs/db_filme.sql)|
|db_babearia|[codigo](./dbs/db_barbearia.sql)|

## db_consultas

``` sql
drop database db_clinica;

create database if not exists db_clinica
charset utf8mb4 collate utf8mb4_general_ci ;

use db_clinica;

create table if not exists tb_especialidade(
	id_especialidade int primary key auto_increment,
    descricao varchar(255) not null
    
)auto_increment=1;

create table if not exists tb_medico(
	id_medico int primary key auto_increment,
    nome varchar(255) not null,
    id_especialidade_medico int not null,

constraint fk_tb_especialidade foreign key (id_especialidade_medico) references tb_especialidade(id_especialidade)
)auto_increment=1;


create table if not exists tb_paciente(
	id_paciente int primary key,
    nome varchar(255) not null
)auto_increment = 1;

create table if not exists tb_consulta(
	id_consulta int primary key ,
    dt_consulta date not null,
    id_medico_consulta int not null,
    id_paciente_consulta int not null,
    
    constraint fk_tb_medico foreign key (id_medico_consulta) references tb_medico(id_medico),
    constraint fk_tb_paciente foreign key (id_paciente_consulta) references tb_paciente(id_paciente)
)auto_increment=1;

drop table tb_consulta;

show tables;
```

## db_biblioteca

```sql

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

```

## db_loja

```sql

create database if not exists db_loja
charset utf8mb4 collate utf8mb4_general_ci;

use db_loja;

create table if not exists tb_produto (
	id_pedido  int primary key auto_increment,
    nome varchar(255) not null, 
    preco float(5,2)
    
)auto_increment=1;

create table if not exists tb_cliente(
	id_cliente int primary key auto_increment,
    nome varchar(255) not null,
    email varchar(255) unique not null
    
)auto_increment=1;


create table if not exists tb_pedido (
	id_pedido int primary key auto_increment,
    dt_pedido date not null,
    id_cliente_pedido int not null,
    
    constraint fk_tb_cliente foreign key (id_cliente_pedido) references tb_cliente(id_cliente)
)auto_increment=1;


create table if not exists tb_produto_pedido(
	id_produto_pedido int primary key auto_increment,
    id_pedido_pp int not null,
    id_produto_pp int not null,
    
constraint fk_tb_pedido foreign key (id_pedido_pp) references tb_pedido(id_pedido),
constraint fk_tb_produto foreign key (id_produto_pp) references tb_produto(id_produto)
)auto_increment=1;

```

## db_escola_magia

```sql

create database if not exists db_escola_magia
charset utf8mb4 collate utf8mb4_general_ci;

use db_escola_magia;

create table if not exists tb_mago(
	id_mago  int primary key auto_increment,
    nome varchar(255) not null, 
    nv_mago int not null
)auto_increment=1;

create table if not exists tb_aula(
	id_aula int primary key auto_increment,
    conteudo varchar(255)
    
)auto_increment=1;

create table if not exists tb_feitico(
	id_feitico int primary key auto_increment,
    dificuldade varchar(255)
    
)auto_increment=1;


create table if not exists tb_aula_feitico(
	id_aula_feitico int primary key auto_increment,
    id_aula_fa int not null,
    id_feitico_fa int not null,
    
constraint fk_tb_aula foreign key (id_aula_fa) references tb_aula(id_aula),
constraint fk_tb_feitico foreign key (id_feitico_fa) references tb_feitico(id_feitico)
)auto_increment=1;

create table if not exists tb_aula_mago(
	id_aula_mago int primary key auto_increment,
    id_aula_am int not null,
    id_mago_am int not null,
    
constraint fk_tb_aula foreign key (id_aula_am) references tb_aula(id_aula),
constraint fk_tb_mago foreign key (id_mago_am) references tb_mago(id_mago)
)auto_increment=1;

```

## db_heroi_vs_vilao

```sql

create database if not exists db_heroi_vs_vilao
charset utf8mb4 collate utf8mb4_general_ci;

use db_heroi_vs_vilao;

create table if not exists tb_heroi(
	id_heroi  int primary key auto_increment,
    nome varchar(255) not null, 
	poder varchar(255) not null
    
)auto_increment=1;

create table if not exists tb_vilao(
	id_vilao int primary key auto_increment,
    nome varchar(255) not null,
    poder varchar(255) not null
    
)auto_increment=1;

create table if not exists tb_local(
	id_local int primary key auto_increment,
    nome varchar(255) not null
    
)auto_increment=1;

create table if not exists tb_missao(
	id_missao int primary key auto_increment,
    descricao varchar(255) not null,
    id_local_missao int not null,
    
    constraint fk_tb_local foreign key (id_local_missao) references tb_local(id_local)

)auto_increment=1;

create table if not exists tb_missao_heroi(
	id_missao_heroi int primary key auto_increment,
    id_missao_mh int not null,
    id_heroi_mh int not null,
    
constraint fk_tb_missao foreign key (id_missao_mh) references tb_missao(id_missao),
constraint fk_tb_heroi foreign key (id_heroi_mh) references tb_heroi(id_heroi)
)auto_increment=1;

create table if not exists tb_missao_vilao(
	id_missao_vilao int primary key auto_increment,
    id_missao_mv int not null,
    id_vilao_mv int not null,
    
constraint fk_tb_missao foreign key (id_missao_mv) references tb_missao(id_missao),
constraint fk_tb_vilao foreign key (id_vilao_mv) references tb_vilao(id_vilao)
)auto_increment=1;

```

## db_parque_diversoes

```sql

create database if not exists db_parque_diversoes
charset utf8mb4 collate utf8mb4_general_ci;

use db_parque_diversoes;

create table if not exists tb_visitante(
	id_visitante int primary key auto_increment,
    nome varchar(255) not null,
    altura float (3,2) not null
    
)auto_increment=1;

create table if not exists tb_ingresso(
	id_ingresso int primary key auto_increment,
    valor float (5,2) not null,
    id_visitante_ingresso int not null,
    
    constraint fk_tb_visitante foreign key (id_local_missao) references tb_visitante(id_visitante)

)auto_increment=1;

create table if not exists tb_brinquedo(
	id_binquedo int primary key auto_increment,
    nome varchar(255) not null,
    altura_min float(3,2) not null,
    id_ingresso_brinquedo int not null,
    
constraint fk_tb_ingresso foreign key (id_ingresso_brinquedo) references tb_ingresso(id_ingresso)

)auto_increment=1;

```

## db_zoo

```sql

create database if not exists db_zoo
charset utf8mb4 collate utf8mb4_general_ci;

use db_zoo;

create table if not exists tb_especie(
	id_especie int primary key auto_increment,
    descricao varchar(255) not null
    
)auto_increment=1;

create table if not exists tb_habitat(
	id_habiat int primary key auto_increment,
    tipo_habitat varchar(255) not null
    
)auto_increment=1;


create table if not exists tb_cuidador(
	id_cuidador int primary key auto_increment,
    nome varchar(255) not null
    
)auto_increment=1;


create table if not exists tb_cuidador_habitat(
	id_ingresso int primary key auto_increment,
    id_habitat_ch int not null,
    id_cuidador_ch int not null,
    
    constraint fk_tb_habitat foreign key (id_habitat_ch) references tb_habitat(id_habitat),
	constraint fk_tb_cuidador foreign key (id_cuidador_ch) references tb_cuidador(id_cuidador)
)auto_increment=1;

create table if not exists tb_animal(
	id_animal int primary key auto_increment,
    idade int not null,
    id_habitat_animal int not null,
    id_especie_animal int not null,

constraint fk_tb_habitat foreign key (id_habitat_animal) references tb_habitat(id_habitat),
constraint fk_tb_especie foreign key (id_especie_animal) references tb_especie(id_especie)

)auto_increment=1;

```

## db_loja_quadrinhos

```sql

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

```

## db_restaurante

```sql

create database if not exists db_restaurante
charset utf8mb4 collate utf8mb4_general_ci;

use db_restaurante;

create table if not exists tb_pratos (
	id_prato int primary key auto_increment,
    descricao varchar(255) not null, 
    
)auto_increment=1;

create table if not exists tb_cliente(
	id_cliente int primary key auto_increment,
    nome varchar(255) not null,
    
)auto_increment=1;


create table if not exists tb_pedido (
	id_pedido int primary key auto_increment,
	preco float(5,2) not null,
    id_cliente_pedido int not null,
    
    constraint fk_tb_cliente foreign key (id_cliente_pedido) references tb_cliente(id_cliente)
)auto_increment=1;


create table if not exists tb_prato_pedido(
	id_prato_pedido int primary key auto_increment,
    id_pedido_pp int not null,
    id_prato_pp int not null,
    
constraint fk_tb_pedido foreign key (id_pedido_pp) references tb_pedido(id_pedido),
constraint fk_tb_prato foreign key (id_prato_pp) references tb_prato(id_prato)
)auto_increment=1;

```

## db_filme

```sql

create database if not exists db_filme
charset utf8mb4 collate utf8mb4_general_ci;

use db_filme;

create table if not exists tb_ator (
	id_ator int primary key auto_increment,
    nome varchar(255) not null
    
)auto_increment=1;

create table if not exists tb_diretor(
	id_diretor int primary key auto_increment,
    nome varchar(255) not null,
    nacionalidade varchar(255) not null
)auto_increment=1;


create table if not exists tb_filme (
	id_filme int primary key auto_increment,
	titulo varchar(255) not null,
    ano year,
    id_diretor_filme int not null,
    
    constraint fk_tb_diretor foreign key (id_diretor_filme) references tb_diretor(id_diretor)
)auto_increment=1;


create table if not exists tb_ator_filme(
	id_ator_filme int primary key auto_increment,
    id_filme_af int not null,
    id_ator_af int not null,
    
constraint fk_tb_filme foreign key (id_filme_af) references tb_filme(id_filme),
constraint fk_tb_ator foreign key (id_ator_af) references tb_ator(id_ator)
)auto_increment=1;

```

## db_barbearia

``` sql

create database if not exists db_barbearia
charset utf8mb4 collate utf8mb4_general_ci; -- DDL

use db_barbearia; -- DQL

create table if not exists tb_cliente (
	id int primary key auto_increment,
    nome varchar(60) not null,
    whatsapp char(13) not null,
    email varchar(80) unique
)auto_increment=1; -- DDL

show tables; -- DQL

describe tb_cliente; -- DQL
 
insert into tb_cliente(nome,whatsapp,email) values('Joao','6188445533','joao@gmail.com'); -- DML

select * from tb_cliente; -- DQL

create table if not exists tb_servicos(
	id int primary key auto_increment,
    nome varchar(255) not null,
    valor float(5,2) not null
)auto_increment=1;
-- populando
insert into tb_servicos(nome,valor) 
values('Corte', 37.00),
('Barba', 29.00),
('Acabamento', 17.00),
('Maquina', 28.00),
('Hidratacao', 45.00),
('Escova Progressiva', 42.00),
('Sobrancelha', 37.00),
('Pigmentação Barba', 38.00),
('Depilação com Cera', 32.00);

select * from tb_servicos;

```