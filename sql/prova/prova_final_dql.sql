show tables;

use db_lanchonete;

select p.nome as nome_produto, p.preco_venda as valor, p.preco_custo as custo, p.magem_lucro as lucro,
e.vl_ifood as valor_ifood , e.porc_ifood as porcetagem_ifood, e.vl_entrega as valor_entrega,
co.preco_combo as preco_combo, co.custo_combo, co.preco_venda_combo
from tb_produto as p
inner join tb_pedido_entrega as pe
on p.id = pe.id
inner join tb_pedido ped
on pe.id = ped.id
inner join tb_combo co
on ped.id= co.id
inner join tb_entrega e
on pe.id = e.id;


SELECT 
    p.nome AS nome_produto, 
    p.preco_venda AS valor, 
    p.preco_custo AS custo, 
    p.magem_lucro AS lucro,
    e.vl_ifood AS valor_ifood, 
    e.porc_ifood AS porcentagem_ifood, 
    e.vl_entrega AS valor_entrega,
    co.preco_combo AS preco_combo, 
    co.custo_combo, 
    co.preco_venda_combo
FROM 
    tb_produto AS p
INNER JOIN 
    tb_produto_pedido AS pp ON p.id = pp.id_produto_pp
INNER JOIN 
    tb_pedido AS ped ON pp.id_pedido_pp = ped.id
INNER JOIN 
    tb_combo AS co ON ped.id_combo = co.id
INNER JOIN 
    tb_pedido_entrega AS pe ON ped.id = pe.id_pedido_pe
INNER JOIN 
    tb_entrega AS e ON pe.id_entrega_pe = e.id;

SELECT p.id, pp.id_produto_pp 
FROM tb_produto AS p
LEFT JOIN tb_produto_pedido AS pp ON p.id = pp.id_produto_pp;

SELECT ped.id, pe.id_pedido_pe 
FROM tb_pedido AS ped
LEFT JOIN tb_pedido_entrega AS pe ON ped.id = pe.id_pedido_pe;

