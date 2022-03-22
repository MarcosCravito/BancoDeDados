drop database dbCerveja;
create database dbCerveja;
use dbCerveja

-- Cerveja

create table tbCerveja(
codigo bigint(20)
sku varchar(50),
nome varchar(80),
descricao text,
valor decimal(10,2),
teor_alcoolico decimal(10,2),
comissao decimal(10,2),
sabor varchar(50),
origem varchar(50),
codigo_estilo bigint(20),
quantidade_estoque int(11),
foto varchar(100),
content_type varchar(100)
);
desc tbCerveja;

--ESTILO

create table tbEstilo(
codigo bigint(20)
nome varchar(50)
);
desc tbEstilo;

-- Item Venda

create table tbItem_venda(
codigo bigint(20)
quantidade int(11),
valor_unitario decimal(10,2),
codigo_cerveja bigint(20),
codigo_venda bigint(20)
);
desc tbItem_venda;

-- VENDA

create table tbVenda(
codigo bigint(20)
data_criacao datetime,
valor_frete decimal(10,2),
valor_desconto decimal(10,2),
valor_total decimal(10,2),
status varchar(30),
observacao varchar(200),
data_hora_entrega datetime,
codigo_cliente bigint(20),
codigo)usuario bigint(20)
);
desc tbVenda;

-- Cliente

create table tbCliente(
coigo bigint(20)
nome varchar(80),
tipo_pessoa varchar(15),
cpf_cnpj varchar(30),
telefone varchar(20),
email varchar(50),
logradouro varchar(50),
numero varchar(15),
compelemento varchar(20),
cep varchar(15),
codigo_cidade bigint(20)
);
desc tbCliente;

-- Usuario

create table tbUsuario(
codigo bigint(20)
nome varchar(50),
email varchar(50),
senha varchar(120),
ativo tinyin(1),
data_nascimento date
);
desc tbUsuario;

-- Cidade

create table tbCidade(
codigo bigint(20)
nome varchar(50),
codigo_estado bigint(20)
);
desc tbCidade;

--Estado

create table tbEstado(
codigo bigint(20)
nome varchar(50),
sigla varchar(2)
);
desc tbEstado;

-- Usuario grupo

create table tbUsuario_Grupo(
codigo_usuario bigint(20)
codigo_grupo bigint(20)
);
desc tbUsuario_Grupo

--Permissao

create table tbPermissao(
codigo bigint(20)
nome varchar(50)
);
desc tbPermissao;

--Schema

create table tbSChema_version(
installed_rank int(11)
version varchar(50),
description varchar(200),
type varchar(20),
script varchar(100),
checksum int(11),
installed_by varchar(100),
installed_on timestamp,
execution_time int(11),
sucess tinyint(1)
);
desc tbSChema_version;

-- Grupo

create table tbGrupo(
codigo bigint(20)
nome varchar(50)
);
desc tbGrupo;

--grupo permissao

create table tbGrupo_Permissao(
codigo_grpo bigint(20)
codigo_permissao bigint(20)
);
desc tbGrupo_Permissao;
