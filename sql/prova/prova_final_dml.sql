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