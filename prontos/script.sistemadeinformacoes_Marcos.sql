drop database bdSistemadeinformacoes;
create database bdSistemadeinformacoes;
	use bdSistemadeinformacoes;

--demanda mensal

create table tbTb_demanda_mensal(
mes int(11),
ano int(11),
demanda int(11),
previsao double,
tb_tipo_sanguineo_cod_tipo_sanguineo int(11),
tb_produto_cod_produto int(11)
);
desc tbTb_demanda_mensal;

--Tipo Sanguineo

create table tbTb_tipo_sanguineo(
cod_tipo_sanguineo int(11),
descricao_tipo varchar(45)
);
desc tbTb_tipo_sanguineo;

--TB Produto

create table tbProduto(
cod_produto int(11),
descricao_produto varchar(45),
sigla char,
validade int (11),
lead_time_horas double
);
desc tbProduto;


-- TB Entradas

create table tbEntradas(
data_entrada date,
volume int(11),
tb_produto_cod_produto int(11),
tb_tipo_sanguineo_cod_tipo_sanguineo int(11),
validade date,
cod_bolsa int(11)
);
desc tbEntradas;

-- Doadores

create table tbDoadores(
identidade int(11),
nome varchar(45),
endereco varchar(45),
tb_tipo_sanguineo_cod_tipo_sanguineo int(11),
data_nascimento varchar(8),
cidade varchar(45),
uf char(2),
estado_civil varchar(45),
email varchar(45),
telefone varchar(45)
);
desc tbDoadores;

--Saida

create table tbSaida(
nome_paciente varchar(100),
nome_hospital varchar(100),
data_saida date,
rt int(11),
tb_produto_cod_produto int(11),
tb_tipo_sanguineo_cod_tipo_sanguineo int(11),
tb_entrada_cod_bolsa int(11)
);
desc tbSaida;
