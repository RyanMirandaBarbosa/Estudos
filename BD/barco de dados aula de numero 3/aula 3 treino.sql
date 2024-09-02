use sprint1;
-- 22/08/2023 comandos que definem a estrutura
-- alter table: add column, drop column, modify column, rename column.

-- dml: comandos que manipulam os dados
-- update
-- insert
-- delete
-- select

-- float 7 dígitos
-- double 15 dígitos
-- decimal() 32 dígitos
   -- decimal(5,2) 123,45
   -- decimal (7,4) 123,4567
   -- decimal (6,3) 123,456
   -- decimal (9,7) 12,3456789
-- adicionar a coluna preço 
alter table revista add column preço float;

select * from revista;

update revista set preço = 1.99
  where idrevista in (2,4);
  
update revista set preço = 21.978
  where idrevista = 3;

select * from revista;

-- alterar o auto-increment
alter table revista auto_increment = 200;

insert into revista (nome) values
('mad');

select * from revista;

-- trucate 
-- limpa os dados da tabela 
truncate table revista;



delete from revista where idrevista = 200;

insert into revista (nome) values
('sptech');
-- ------------------------------------------------------------------- --
create database sprint1;
use sprint1;
create table Atleta (
idAtleta int primary key,
nome varchar(40),
modalidade varchar(40),
qtdMedalha int
);
describe Atleta;
insert into Atleta values 
(1, 'medina', 'surfe', 3), 
(2, 'tobias', 'box', 2),
(3, 'ana', 'ginastica', 5),
(4, 'samuel', 'salto', 1),
(5, 'maria', 'salto', 7);
select * from atleta;
update atleta set qtdMedalha = 4
 where idatleta = 1;
select * from atleta;
update atleta set qtdMedalha = 6
 where idatleta in (2,3);
update atleta set nome = 'Braian'
 where idatleta = 4;
alter table atleta add column dtnasc date;
update atleta set dtnasc = '1983-11-08'
 where idatleta in (1,2,3,4,5);
select * from atleta where modalidade <> 'box';
select * from atleta where qtdMedalha >= 3;
alter table atleta modify column modalidade varchar(60);
describe atleta;
truncate table atleta;

create table musica (
idmusica int primary key,
titulo varchar(40),
artista varchar(40),
genero varchar(40));
describe musica;
select * from musica;
insert into musica values
(1, 'enough', 'hippie sabotage', 'indie'),
(2, 'trust nobory', 'hippie sabotage', 'indie'),
(3, 'black', 'per jean', 'rock'),
(4, 'even flow', 'per jean', 'rock'),
(5, 'vampira', 'matuê', 'pop'),
(6, 'confessionario', 'lw', 'indie'),
(7, 'sakura', 'lil lixo', 'lofy'),
(8, 'bankai', 'dxnt l13', 'phonk');
select * from musica;
alter table musica add column curtidas int;
update musica set curtidas = 55
  where idmusica in (1,2,3,4,5,6,7,8);
select * from musica;
alter table musica modify column artista varchar(80);
update musica set curtidas = 60
  where idmusica = 1;
update musica set curtidas = 99
  where idmusica in (2,3);
update musica set titulo = 'quer voar'
  where idmusica = 5;
delete from musica where idmusica = 4;
select * from musica;
select * from musica where genero <> 'indie';
select * from musica where curtidas >= 60;
describe musica;
truncate musica;
select * from musica;

create table filme (
idfilme int primary key,
titulo varchar(50),
genero varchar(40),
diretor varchar(40));
select * from filme;
insert into filme values
(1, 'jurassic park', 'ficção cientifica', 'ryan'),
(2, 'jurassic park 2', 'ficção cientifica', 'ryan'),
(3, 'casa monstro', 'terror', 'yuri'),
(4, 'titanic', 'romance', 'carmona'),
(5, 'velozes e furiosos', 'ação', 'pablo'),
(6, 'a guerra do amanhã', 'ficção cientifica', 'arthur'),
(7, 'o ultimo homem', 'luta', 'rubens');
select * from filme;
alter table filme add column prota varchar(50);
update filme set prota = 'Ryan'
  where idfilme in (1,2,3,4,5,6,7);
alter table filme modify column diretor varchar(150);
update filme set diretor = 'Sr'
  where idfilme = 5;
update filme set diretor = 'Mr'
  where idfilme in (2,7);
update filme set titulo = 'alien isolation'
  where idfilme = 6;
delete from filme where idfilme = 3;
select * from filme where genero <> 'romance';
select * from filme where genero = 'ficção cientifica';
describe filme;
truncate filme;
select * from filme;

create table professor (
idprofessor int primary key,
nome varchar(50),
especialidade varchar(40),
dtnasc date);
describe professor;
insert into professor value 
(1, 'vivian', 'banco de dados', '1983-10-13');
select * from professor;
insert into professor value
(2, 'joão pedro', 'algoritimo', '1993-11-08'),
(3, 'marcela', 'socio emocional', '1987-09-23'),
(4, 'graciele', 'português', '1989-07-13'),
(5, 'marcio', 'geografa', '1978-12-22'),
(6, 'cleber', 'inglês', '1983-05-07');
select * from professor;
alter table professor add column função varchar(50);
alter table professor add constraint chkfunção
  check (função in ('monitor', 'assistente', 'titular'));
update professor set função = 'titular'
  where idprofessor in (1,2,3,4,5,6);
insert into professor values 
(7, 'Ryan Miranda', 'matematica', '2003-11-08', 'assistente');
delete from professor where idprofessor = 5;
update professor set função = 'monitor'
  where idprofessor in (3,5,1);
select nome from professor 
  where função = 'titular';
select especialidade, dtnasc from professor
  where função = 'monitor';
update professor set dtnasc = '1960-12-07'
  where idprofessor = 3;
truncate professor;

create table curso (
idcurso int primary key auto_increment,
nome varchar(50),
sigla varchar(3),
coordenador varchar(40));
insert into curso value 
(null, 'Sistemas de Informação', 'SI', 'Marcos'),
(null, 'Ciência da Computação', 'CC', 'Marcela'),
(null, 'Análise e Desenvolvimento de Sistemas', 'ADS', 'Vinicius');
select * from curso;
select coordenador from curso;
select * from curso 
    where sigla = 'ADS';
select * from curso order by nome;
select * from curso order by coordenador desc;
select * from curso
  where nome like 'a%';
select * from curso
  where nome like '%s';
select * from curso
  where nome like '_i%';
select * from curso 
  where nome like '%a_';
drop table curso;

-- Você vai criar uma tabela para armazenar os dados de revistas (como por ex: Veja, Isto é,
-- Epoca, Quatro Rodas, Claudia, etc).
-- Criar a tabela chamada Revista para conter os campos: idRevista (int e chave
-- primária da tabela), nome (varchar, tamanho 40), categoria (varchar, tamanho 30). Os
-- valores de idRevista devem iniciar com o valor 1 e ser incrementado automaticamente
-- pelo sistema.
-- • Inserir 4 registros na tabela, mas sem informar a categoria.
create table revista (
idrevista int primary key auto_increment,
nome varchar(40),
categoria varchar(30));
select * from revista;
insert into revista (nome) values
('recreio'),
('veja sp'),
('guerras'),
('abril');
select * from revista;
update revista set categoria = 'ciência'
    where idrevista = 1;
update revista set categoria = 'jornal'
    where idrevista = 2;
update revista set categoria = 'historia'
    where idrevista = 3;
update revista set categoria = 'data'
    where idrevista = 4;
insert into revista (nome, categoria) values
('março', 'data'),
('agosto', 'data'),
('janeiro', 'data');
select * from revista;
describe revista;
alter table revista modify column categoria varchar(40);
describe revista;
alter table revista add column periodicidade varchar(15);
select * from revista;
alter table revista drop column periodicidade;