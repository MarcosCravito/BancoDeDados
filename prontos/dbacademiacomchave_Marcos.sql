#Sequencia criação de tabelas
#Instrutor - Atividade - Monitor- Turma - Aluno -  - Registro

drop database dbAcademia;
create database dbAcademia;
use dbAcademia;

#CAMPOS DO TIPO INTEIRO PODEM TER AUTO_INCREMENT LOGO OS QUE SÃO CAMPOS  DE TEXTO NÃO.
#CHAVES DO TIPO UNIQUE SÃO CHAVES QUE NÃO SE REPETEM AO LONGO DO CÓDIGO

create table tbInstrutor(
codIns int not null auto_increment,
Nome varchar(100) not null,
Nascimento DATE not null,
Titulacao varchar(45) not null,
Telefone varchar(45) not null,
primary key(codIns)
);

create table tbAtividade(
codAti int not null auto_increment,
Atividade varchar(45) not null,
primary key(codAti)
);

create table tbMonitor(
codMon int not null auto_increment,
nome varchar(45) not null,
primary key(codMon)
);


create table tbTurma(
codTur int not null auto_increment,
QuantAlunos int not null,
horarioaula DATETIME not null,
duracaoaula DATETIME not null,
datainicio DATE not null,
datafim DATE not null,
codAti int not null,
codIns int not null,
codMon int not null,
primary key(codTur),
foreign key(codAti)references tbAtividade(codAti),
foreign key(codIns)references tbInstrutor(codIns),
foreign key(codMon)references tbMonitor(codMon)
);

create table tbAluno(
codAlu int not null auto_increment,
datamatricula DATE not null,
Nome varchar(45) not null,
Endereco varchar(45) not null,
Telefone varchar(45) not null,
Nascimento DATE not null,
Altura decimal(9,2) not null,
Peso  decimal(9,2) not null,
codTur int not null,
primary key(codAlu),
foreign key(codTur)references tbTurma(codTur)
);

create table tbRegistro(
codReg int not null auto_increment,
Ausencia int not null,
codAlu int not null,
codTur int not null,
primary key(codReg),
foreign key(codAlu)references tbAluno(codAlu),
foreign key(codTur)references tbTurma(codTur)
);

insert into tbInstrutor(Nome,Nascimento,Titulacao,Telefone)
values ('Rodolfo','10/12/2000','5757','11938475643');

insert into tbAtividade(Atividade)
values ('Alunos reprovados');

insert into tbMonitor(nome)
	values('Jubiscleuton');

insert into tbTurma(QuantAlunos,horarioaula,duracaoaula,datainicio,datafim,codAti,codIns,codMon)
values (7,'10:00:00','10:00:00','09/02/02','03/02/01',1,1,1);

insert into tbAluno(datamatricula,Nome,Endereco,Telefone,Nascimento,Altura, Peso, codTur)
values ('10/02/22', 'Marcio', 'Rodolfinho Pires', '11938573840', '28/91/02',1.78,98.00, 1);

insert into tbRegistro(Ausencia,codAlu,codTur)
values(1,1,1);

select * from tbInstrutor;
select * from tbAtividade;
select * from tbTurma;


#ATIVIDADE PERGUNTANDO A TABELA DE INSTRUTOR QUANTOS ALUNOS O INSTRUTOR POSSUI UTILIZANDO O INNER JOIN

select ins.nome,ins.titulacao,
tur.horarioaula, tur.datainicio, tur.datafim,tur.QuantAlunos
from tbInstrutor as ins 
inner join tbTurma as tur
on tur.codTur = ins.codIns;

#NOME DO ALUNO E A TURMA QUE PARTICIPARÁ
#data de inicio da turma e qual instrutor irá ministrar o curso

