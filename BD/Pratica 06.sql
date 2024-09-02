create database AlunoProjeto;
use AlunoProjeto;

create table Aluno (
RA int primary key auto_increment,
nome varchar(45),
sobreNome varchar(45),
telefone float(11),
dtNasc date,
sexo varchar(45),
fkProjeto int,
fkAluno int,
constraint fkAlunoResponsavel foreign key (fkAluno) references Aluno (RA));

create table Projeto (
idProjeto int primary key auto_increment,
nome varchar(45),
descricao varchar(100));

alter table Aluno add constraint fkProjeto foreign key (fkProjeto) references Projeto (idProjeto);

create table Acompanhante (
idAcomp int auto_increment,
fkAluno int,
constraint fkAluno foreign key (fkAluno) references Aluno (RA),
primary key (idAcomp, fkAluno),
nome varchar(45),
tipo varchar(45));
alter table Acompanhante change fkAluno fkAlunoAcomp int;
insert into Projeto values
(null, 'woods control', 'controle de umidade em galpões de tabuas de elcalipto');

insert into Aluno values
(null, 'Ryan', 'Miranda', 11942290258, '2003-08-11', 'Masculino', 1, null);
insert into Aluno values
(null, 'Ketellyn', 'Medina', null, null, 'Feminino', 1, 1),
(null, 'Gustavo', 'Iguchi', null, null, 'Masculino', 1, 1);

insert into Acompanhante values 
(null, 1, 'Livia', 'Irmã'),
(null, 3, 'Carlão', 'Pai');

select * from Aluno;
select * from Projeto;
select * from Acompanhante;

select * from Aluno join Projeto on fkProjeto = IdProjeto;

select * from Aluno join Acompanhante on fkAlunoAcomp = RA;

select * from Aluno as Aluno join Aluno as Representante on Aluno.fkAluno = Representante.RA;

select * from Aluno join Projeto on fkProjeto = idProjeto where Projeto.nome = 'woods control';

select * from Aluno join Projeto on fkProjeto = idProjeto join Acompanhante on fkAlunoAcomp = RA;

drop database alunoprojeto;

create database Campanha;
use Campanha;

create table Organizador (
idOrganizador int primary key auto_increment,
nome varchar(45),
rua varchar(45),
bairro varchar(45),
email varchar(45),
fkOrgaExp int,
constraint fkOrgaExp foreign key(fkOrgaExp) references Organizador (idOrganizador)) auto_increment = 30;

create table Campanha (
idCampanha int primary key auto_increment,
categoria varchar(45),
instituicao1 varchar(45),
instituicao2 varchar(45),
dtFinal date,
fkOrganizador int, 
constraint fkOrganizador foreign key (fkOrganizador) references Organizador (idOrganizador)) auto_increment = 500;

insert into Organizador values
(null, 'Mr. Bins', null, null, null, null);
insert into Organizador values 
(null, 'Sapo69', null, null, null, 30),
(null, 'Kiki', null, null, null, 30);

select * from Organizador;

insert into Campanha values 
(null, 'alimento', 'EscolaXPTO1', 'EscolaXPTO2', '2024-01-23', 30);
insert into Campanha values 
(null, 'produto de higiene', 'EscolaXPTO1', 'EscolaXPTO2', '2024-01-23', 30),
(null, 'máscaras de proteção', 'HospitalXPTO1', null, '2024-01-23', 31),
(null, 'alimento', 'ComunidadeXPTO', null, '2024-01-23', 32);

Select * from Organizador;
select * from Campanha;

select * from Organizador join Campanha on fkOrganizador = idOrganizador;

select * from Organizador join Campanha on fkOrganizador = idOrganizador where Organizador.nome = 'Mr. Bins';

select * from Organizador as Orientado join Organizador as Exp on Orientado.fkOrgaExp = Exp.idOrganizador;

select * from Organizador as Orientado join Organizador as Exp on Orientado.fkOrgaExp = Exp.idOrganizador where Exp.nome = 'Mr. Bins';

select * from Organizador as Orientado join Campanha on fkOrganizador = Orientado.idOrganizador join Organizador as Exp on Orientado.fkOrgaExp = Exp.idOrganizador;

select * from Organizador as Orientado join Campanha on fkOrganizador = Orientado.idOrganizador join Organizador as Exp on Orientado.fkOrgaExp = Exp.idOrganizador where Orientado.nome = 'Kiki';

drop database Campanha;