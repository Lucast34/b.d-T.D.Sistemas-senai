# Codigos

Os arquivos caso queira baixa-los.

|Prova|Link|
|:-:|:-:|
|DDL|[Aqui](./prova_final.sql)|
|DML|[Aqui](./prova_final_dml.sql)|
|planilha|[Aqui](planilha_202504131200.csv)|

## DDL

```sql
create database if not exists db_lanchonete
charset utf8mb4 collate utf8mb4_general_ci;

use db_lanchonete;

CREATE TABLE if not exists tb_produto (
    id INTEGER primary key auto_increment,
    nome VARCHAR(255) not null,
    preco_venda FLOAT(5,2) not null,
    preco_custo FLOAT(5,2) not null,
    magem_lucro int
    
)auto_increment=1;

create table if not exists tb_combo(
	id int primary key auto_increment,
    preco_combo float(5,2),
	custo_combo float(5,2), 
	preco_venda_combo float(5,2)
);


CREATE TABLE if not exists tb_entrega (
    id INTEGER primary key auto_increment,
    vl_ifood FLOAT(5,2),
    porc_ifood FLOAT(5,2),
    vl_entrega FLOAT(5,2)
)auto_increment=1;

CREATE TABLE if not exists tb_pedido (
    id INTEGER primary key auto_increment,
    cliente VARCHAR(255),
    id_combo int,
    
    constraint fk_tb_conmbo foreign key (id_combo) references tb_combo(id)
)auto_increment=1;

CREATE TABLE if not exists tb_pedido_entrega (
    id INTEGER PRIMARY KEY auto_increment,
    id_pedido_pe INTEGER not null,
    id_entrega_pe INTEGER not null,
    
    constraint fk_tb_pedido_pe foreign key (id_pedido_pe) references tb_pedido(id),
    constraint fk_tb_entrega_pe foreign key (id_entrega_pe) references tb_entrega(id)
    
)auto_increment=1;

CREATE TABLE if not exists tb_produto_pedido (
    id INTEGER PRIMARY KEY auto_increment,
    id_produto_pp INTEGER not null,
    id_pedido_pp INTEGER not null,
    
	constraint fk_tb_pedido_pp foreign key (id_pedido_pp) references tb_pedido(id),
    constraint fk_tb_produto_pp  foreign key (id_produto_pp) references tb_produto(id)
    
)auto_increment=1;

```

## DML

```sql

use db_lanchonete;

insert into tb_produto(nome,preco_venda,preco_custo,magem_lucro) 
values("sanduíche de frango",14.29,10,30),("lanche de carne",17.14,12,30),("suco natural",5.71,4,30);

SELECT * FROM tb_produto;

insert into tb_entrega(vl_ifood,porc_ifood,vl_entrega) 
values (2.14,15.00,5.00),(3.43,20.00,5.00),(0.57,10.00,5.00);

select * from tb_entrega;

insert into tb_combo(preco_combo,custo_combo,preco_venda_combo)
values(22.00,30.00,42.85);

select * from tb_combo;
```
