drop database db_minhadb;

create database db_minhadb;
use db_minhadb;

create table tbTelefone(
codigo int,
nome varchar(50),
telefone char(15),
data char(15),
hora char(15)
);

-- inserindo registros na tabela tbtelefones

insert into tbTelefone(codigo,nome,telefone,data,hora)
values(1,'Maik Teixeira','(11)5555-555','2022/02/24','16:15:01');

insert into tbTelefone(codigo,nome,telefone,data,hora)
values(2,'Magreco Teixeira','(11)5555-555','2022/02/24','16:15:21');
);


desc tbTelefone;

--visualizar os registros das tabelas

--select * from tbTelefone;

-- para apagar um registro bando de dados
--delete from (tabela) where (nomeatributo) = (localidade)
-- exemplos - delete from tbTelefone where codigo = 1

-- hora - hh:mm:ss :-> ("16:15:00")
--data - aaa/MM/dd :-> ("2022/02/24")


-- PARA ALTERAR ( ATUALIZAR O BD) BASTA 
--update tbtelefones set nome = "Maria da Silva" where codigo = 3;
--	where codigo = 3

--	update tbtelefones set nome = "José Miranda",
--		telefone = '(11)2584-368' where codigo = 2