-- apagar o banco de dados
drop database dbpets; 
-- criar o banco de dados dbpets
create database dbpets;
-- visualizar o banco de dados

show databases;

-- acessando o banco de dados dbpets

use dbpets;

-- criando 

create table tbClientes(
idCliente int,
nome varchar(100),
cpf char(14),
dataNasc date,
genero char(1),
logradouro varchar(100),
numero char(10),
cep char(9),
bairro varchar(100),
cidade varchar(100),
estado char(2),
telefone char(10),
email varchar(100)
);

-- Visualizar a estrutura das tabelas criadas no banco de dados

desc tbClientes;

-- servicos clientes

create table tbservicos_has_clientes(
servicos_idservico int,
clientes_idcliente int
);
desc tbservicos_has_clientes;

-- Tabela de fornecedores

create table tbFornecedores(
idFornecedor int,
RazaoSocial varchar(100),
NomeFantasia varchar(100),
CNPJ char(15),
Endereco varchar(100),
numero char(10),
cep char(9),
bairro varchar(100),
cidade varchar(100),
estado char(2),
telefone char(11)

);
desc tbFornecedores;

-- Tabela de produtos

create table tbProdutos(
idProduto int,
CodigoDeBarras varchar(13),
NomeProduto varchar(100),
Marcar varchar(100),
Tipo varchar(100),
Fornecedor varchar(100),
ValorDaCompra decimal(8,2),
ValorDaVenda decimal (8,2),
QuantidadeEmEstoque int(11),
fornecedores_idFornecedor int(11)
);
desc tbProdutos;

-- Compras ( has ) produtos

create table tbcompras_has_produtos(
#tbcompras
compras_idCompra int,
produtos_idproduto int
);

desc tbcompras_has_produtos;

-- Tabela de Compras

create table tbCompras(
idCompra int,
Produtos varchar(100),
CPF_Cliente char(15),
CPF_Funcionario varchar(100),
ValorTotal decimal(8,2),
DataAtual date,
funcionarios_idFunconario int,
clientes_idcliente int
);

desc tbCompras;



