use db_situacaoProblema1;

select max(valor) as valor_max from tb_acoes;

select min(valor) as valor_min from tb_acoes;

select sum(valor) as soma_valor from tb_acoes;

select avg(valor) as media_valor from tb_acoes;

create view vw_estaticas_acoes as
select
	(select max(valor) as valor_max from tb_acoes) as max_valor,
	(select min(valor) as valor_min from tb_acoes) as min_valor,
	(select sum(valor) as soma_valor from tb_acoes)as sum_valor,
	(select avg(valor) as media_valor from tb_acoes)as avg_valor;

select * from vw_estaticas_acoes;

select id, valor, 
case
	when valor > 1.30 then 'Acima de 1.30'
    else 'Abaixo de 1.30'
end as indicador_valor
from tb_acoes;

create view vw_acoes_formatadas as
select
	id,
    concat('R$' , format(valor,2,'pt_BR')) as valor_formatado
from
	tb_acoes;
    
select * from vw_acoes_formatadas;

create view vw_acoes as
select a_atual.id, -- seleciona o id da ação atual
	format (
		case
			when a_anterior.valor is null or a_anterior.valor = 0 then null -- se não houver ação anterior ou se valor da ação anterior for zero, reotona null 
            else(a_atual.valor - a_anterior.valor)/ a_anterior.valor -- faz a subtração dos valores e divide pelo valor da ação anterior
		end,
        8 -- formata o resultado o resultado para ter oito casas decimais 
	)as retorno_oito_casas -- nomeia a coluna resultante
from tb_acoes a_atual -- seleciona a tabela de ações e a apelida de 'a_atual'
left join
	tb_acoes a_anterior on a_atual.id = a_anterior.id = 1 -- junta com a mesma tablea  pra obter a ação anterior, assumindo que a "id" é sequencial
order by
a_atual.id; -- ordena o id