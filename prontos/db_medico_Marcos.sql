drop database dbMedico;
create database dbMedico;
use dbMedico;

#ORDEM DE TABELAS A SEREM CRIADAS -> Medico / Paciente / ReceitaMedica / Consulta

create table tbMedico(
codMedico int not null auto_increment,
nomeMedico varchar(45) not null,
telMedico varchar(9) not null,
primary key(codMedico)
);

insert into tbMedico(nomeMedico,telMedico) 
values('Alfredin','40028922');

select * from tbMedico;

create table tbPaciente(
codPaciente int not null auto_increment,
nomePaciente varchar(45) not null,
telefonePaciente varchar(9) not null,
convenio varchar(45) not null,
primary key(codPaciente)
);

insert into tbPaciente(nomePaciente,telefonePaciente,convenio)
values ('Claldolfredo','4004334','F paciente');
select * from tbPaciente;

create table tbReceitaMedica(
codReceita int not null auto_increment,
descricao varchar(500),
primary key(codReceita)
);


insert into tbReceitaMedica(descricao) 
values('Receita do Doutor Nefrario');

select * from tbReceitaMedica;

create table tbConsulta(
codConsulta int not null auto_increment,
dt_consulta DATETIME not null,
codReceita int not null,
codMedico int not null,
codPaciente int not null,
primary key(codConsulta),
foreign key(codReceita)references tbReceitaMedica(codReceita),
foreign key(codMedico)references tbMedico(codMedico),
foreign key(codPaciente)references tbPaciente(codPaciente)
);

insert into tbConsulta(dt_consulta,codReceita,codMedico,codPaciente)
	values('10/02/2010',1,1,1);

select * from tbConsulta;
