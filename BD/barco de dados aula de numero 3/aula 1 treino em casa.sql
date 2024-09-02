use aula1;

create table empresa (
id int primary key,
nome varchar(50),
responsavel varchar(50)
);

select * from empresa;

insert into empresa values 
(1, "stefanini", "rafael"),
(2, "c6", "vanessa"),
(3, "accenture", "debora");

create table turma (
id int primary key,
nome char(5)
);

select * from turma;

insert into turma values
(1, "1adsa"),
(2, "1adsb"),
(3, "1adsc");

create table aluno (
id int primary key,
nome varchar(50),
bairro varchar(50)
);

select * from aluno;

insert into aluno values 
(1, "Ryan", "eldorado"),
(2, "joão", "itaquera"),
(3, "giulia", "campanario");

