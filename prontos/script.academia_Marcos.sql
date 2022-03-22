drop database dbAcademia;

create database dbAcademia;
	use dbAcademia;

--Atividade

create table tbAtividade(
id int,
atividade varchar(45)
);
desc tbAtividade;

--TURMA

create table tbTurma(
id int,
quant_alunos int,
horario_aula datetime,
duracao_aula datetime,
data_inicio date,
data_fim date,
ativiade int,
id_instrutor int,
id_monitor int
);
desc tbTurma;

--REGISTRO

create table tbRegistro(
id_aluno int,
id_turma int,
ausencia int,
id_registro int
);
desc tbRegistro;

--Alunos

create table tbAluno(
matricula int,
data_matricula date,
nome varchar(45),
endereco varchar(45),
telefone varchar(45),
nascimento date,
altura float,
peso float,
id_turma int
);
desc tbAluno;

--Instrutor

create table tbInstrutor(
rg int,
nome varchar(45),
nascimento date,
titulacao varchar(45),
tlefone varchar(45)
);
desc tbInstrutor;

--Monitor

create table tbMonitor(
id_aluno int
);
