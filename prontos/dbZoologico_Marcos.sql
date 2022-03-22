#1 
drop database dbZoologico;
create database dbZoologico;
use dbZoologico;

#2 CRIAR TABELAS

create table tbAnimais(
codigo int,
tipo char(15),
nome char(30),
idade int,
valor decimal(10,2)
);

insert into tbAnimais(Codigo,Tipo,Nome,Idade,Valor)
values ('1','Cachorro','Djudi','3','300.00');

insert into tbAnimais(Codigo,Tipo,Nome,Idade,Valor)
values ('2','Cachorro','Sula','5','300.00');

insert into tbAnimais(Codigo,Tipo,Nome,Idade,Valor)
values ('3','Cachorro','Sarina','7','300.00');

insert into tbAnimais(Codigo,Tipo,Nome,Idade,Valor)
values ('4','Gato','Pipa','2','500.00');

insert into tbAnimais(Codigo,Tipo,Nome,Idade,Valor)
values ('5','Gato','Sarangue','2','500.00');

insert into tbAnimais(Codigo,Tipo,Nome,Idade,Valor)
values ('6','Gato','Clarences','1','500.00');

insert into tbAnimais(Codigo,Tipo,Nome,Idade,Valor)
values ('7','Coruja','Agnes','0','700.00');

insert into tbAnimais(Codigo,Tipo,Nome,Idade,Valor)
values ('8','Coruja','Arabela','1','700.00');

insert into tbAnimais(Codigo,Tipo,Nome,Idade,Valor)
values ('9','Sapo','Quash','1','100.00');

insert into tbAnimais(Codigo,Tipo,Nome,Idade,Valor)
values ('10','Peixe','Fish','0','100.00');

#3 Escreva um comando que exiba todas 
#as colunas e todas as linhas da tabela ANIMAIS.

select * from tbAnimais;

# 4  Escreva um comando que exiba apenas as colunas TIPO e NOME da tabela ANIMAIS, 
#apresentando todos os registros da tabela.

select  tipo,nome from tbAnimais;

#5. Escreva um comando que exiba apenas as colunas TIPO, NOME e IDADE da tabela 
#ANIMAIS, apresentado todos os registros.

select  tipo,nome,idade from tbAnimais;

#6. Escreva um comando que exiba apenas as colunas TIPO e NOME da tabela ANIMAIS
#apresentando todos os registros. Apresente a legenda da coluna TIPO com o alias 
#[Tipo de Animal] e a coluna nome com o alias [Nome do Animal].

select  tipo,nome from tbAnimais;
select  tipo as 'Tipo de Animal',nome as 'Nome do Animal' from tbAnimais;

#7. Escreva um comando que exiba apenas as colunas TIPO, NOME e IDADE da tabela 
#ANIMAIS apresentando todos os registros. Apresente a legenda da coluna TIPO com o 
#alias [Tipo de Animal], da coluna nome com o alias [Nome do Animal] e da coluna 
#IDADE com o alias [Tempo de Vida].

select  tipo as 'Tipo de Animal',nome as 'Nome do Animal',idade 'Tempo de vida' from tbAnimais;


#8 Apresentar tabela tipo virtual

select 'Animal Domestico' as Procedencias,tipo,nome,idade from tbAnimais;

#9 Representar tabela tipo :

select tipo,nome,idade,valor as 'Valor Original',(valor * 1.10) as 'Valor de Venda' from tbAnimais;


#10 

select distinct tipo,Valor Original,(valor * 1.10) as 'Valor de Venda' from tbAnimais;