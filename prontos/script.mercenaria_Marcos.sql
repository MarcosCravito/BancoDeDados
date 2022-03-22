drop database dbMercearia;
create database dbMercearia;
use dbMercearia


-- Cliente

create table tbClientes(
id int,
nome varchar(45),
telefone varchar(45),
email varchar(45)
);

desc tbClientes;

--VENDA

create table tbVenda(
id int,
valor_total decimal(10,2),
data datetime,
cliente_id int,
vendedor_id int,
pagamento_id int
);
desc tbVenda;

-- VENDEDOR

create table tbVendedor(
id int,
nome varchar(45)
);
desc tbVendedor;

-- PAGAMENTO

create table tbPagamento(
id int,
forma_pagamento varchar(45)
);
desc tbPagamento;

-- venda_has_produto

create table tbVenda_has_produto(
venda_id int,
produto_id int
);
desc tbVenda_has_produto;

-- PRODUTO

create table tbProduto(
id int,
nome varchar(45),
preco decimal(10,2),
qtd_estoque varchar(45),
categoria_id int,
fornecedores_id int
);
desc tbProduto;

-- CATEGORIA

create table tbCategoria(
id int,
nome varchar(45)
);
desc tbCategoria;

-- FORNECEDORES

create table tbFornecedores(
id int,
cnpj varchar(45),
nome varchar(45)
);
desc tbFornecedores;