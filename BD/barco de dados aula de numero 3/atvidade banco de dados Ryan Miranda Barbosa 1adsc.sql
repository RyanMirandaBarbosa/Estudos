-- 1. No MySQL Workbench, utilizando o banco de dados ‘sprint1’
create database sprint1;
use sprint1;
-- • Criar a tabela chamada Atleta para conter os dados: idAtleta (int e chave primária da 
-- tabela), nome (varchar, tamanho 40), modalidade (varchar, tamanho 40), qtdMedalha 
-- (int, representando a quantidade de medalhas que o atleta possui)
create table Atleta (
idAtleta int primary key,
nome varchar(40),
modalidade varchar(40),
qtdMedalha int
);
-- Inserir dados na tabela, procurando colocar mais de um atleta para cada modalidade
describe Atleta;
insert into Atleta values 
(1, 'medina', 'surfe', 3), 
(2, 'tobias', 'box', 2),
(3, 'ana', 'ginastica', 5);
-- Exibir todos os dados da tabela.
select * from atleta;
-- Exibir apenas os nomes e quantidade de medalhas dos atletas
select nome, qtdmedalha from atleta;
-- Exibir apenas os dados dos atletas de uma determinada modalidade
select * from Atleta
  where modalidade like 'B%';
-- Exibir os dados da tabela ordenados pela modalidade
select * from atleta order by modalidade;
-- Exibir os dados da tabela, ordenados pela quantidade de medalhas, em ordem 
-- decrescente
select * from atleta order by qtdMedalha desc;
-- Exibir os dados da tabela, dos atletas cujo nome contenha a letra s
insert into atleta values
(4, 'samuel', 'salto', 1);
select nome from atleta
  where nome like 's%';
-- Exibir os dados da tabela, dos atletas cujo nome comece com uma determinada letra
insert into atleta values
(5, 'maria', 'salto', 7);
select * from atleta
  where nome like 'm%';
-- Exibir os dados da tabela, dos atletas cujo nome termine com a letra o (alterei para letra a)
select * from atleta
  where nome like '%a';
-- Exibir os dados da tabela, dos atletas cujo nome tenha a penúltima letra r (alterei para letra n)
select * from atleta
  where nome like '%n_';
-- Eliminar a tabela.
drop table Atleta;

-- Criar a tabela chamada Musica para conter os dados: idMusica, titulo (tamanho 40), artista 
-- (tamanho 40), genero (tamanho 40), sendo que idMusica é a chave primária da tabela.
create table musica (
idmusica int primary key,
titulo varchar(40),
artista varchar(40),
genero varchar(40));
describe table musica;
select * from musica;
-- Inserir dados na tabela, procurando colocar um gênero de música que tenha mais de uma 
-- música, e um artista, que tenha mais de uma música cadastrada. Procure inserir pelo 
-- menos umas 7 músicas.
insert into musica values
(1, 'enough', 'hippie sabotage', 'indie'),
(2, 'trust nobory', 'hippie sabotage', 'indie'),
(3, 'black', 'per jean', 'rock'),
(4, 'even flow', 'per jean', 'rock'),
(5, 'vampira', 'matuê', 'pop'),
(6, 'confessionario', 'lw', 'indie'),
(7, 'sakura', 'lil lixo', 'lofy'),
(8, 'bankai', 'dxnt l13', 'phonk');
-- a) Exibir todos os dados da tabela
select * from musica;
-- b) Exibir apenas os títulos e os artistas das músicas.
select titulo, artista from musica;
-- c) Exibir apenas os dados das músicas de um determinado gênero
select * from musica
  where genero = 'indie';
-- d) Exibir apenas os dados das músicas de um determinado artista
select * from musica
  where artista = 'hippie sabotage';
-- e) Exibir os dados da tabela ordenados pelo título da música
select * from musica order by titulo;
-- f) Exibir os dados da tabela ordenados pelo artista em ordem decrescente.
select * from musica order by artista desc;
-- g) Exibir os dados da tabela, das músicas cujo título comece com uma determinada letra
select * from musica 
  where titulo like 'e%';
-- h) Exibir os dados da tabela, das músicas cujo artista termine com uma determinada letra
select * from musica
  where artista like '%e';
-- i) Exibir os dados da tabela, das músicas cujo gênero tenha como segunda letra uma 
-- determinada letra
select * from musica
  where genero like '_o%';
-- j) Exibir os dados da tabela, das músicas cujo título tenha como penúltima letra uma 
-- determinada letra.
select * from musica
  where titulo like '%c_';
-- ) Elimine a tabela
drop table musica;

-- Criar a tabela chamada Filme para conter os dados: idFilme, título (tamanho 50), genero
-- (tamanho 40), diretor (tamanho 40), sendo que idFilme é a chave primária da tabela
create table filme (
idfilme int primary key,
titulo varchar(50),
genero varchar(40),
diretor varchar(40));
select * from filme;
-- Inserir dados na tabela, procurando colocar um gênero de filme que tenha mais de um
-- filme, e um diretor, que tenha mais de um filme cadastrado. Procure inserir pelo menos 
-- uns 7 filmes
insert into filme values
(1, 'jurassic park', 'ficção cientifica', 'ryan'),
(2, 'jurassic park 2', 'ficção cientifica', 'ryan'),
(3, 'casa monstro', 'terror', 'yuri'),
(4, 'titanic', 'romance', 'carmona'),
(5, 'velozes e furiosos', 'ação', 'pablo'),
(6, 'a guerra do amanhã', 'ficção cientifica', 'arthur'),
(7, 'o ultimo homem', 'luta', 'rubens');
-- • Exibir todos os dados da tabela
select * from filme;
-- Exibir apenas os títulos e os diretores dos filmes
select titulo, diretor from filme;
-- Exibir apenas os dados dos filmes de um determinado gênero
select * from filme
  where genero = 'ficção cientifica';
-- Exibir apenas os dados dos filmes de um determinado diretor
select * from filme 
  where diretor = 'ryan';
-- Exibir os dados da tabela ordenados pelo título do filme
select * from filme order by titulo;
-- Exibir os dados da tabela ordenados pelo diretor em ordem decrescente
select * from filme order by diretor desc;
-- Exibir os dados da tabela, dos filmes cujo título comece com uma determinada letra
select* from filme
  where titulo like 'j%';
-- Exibir os dados da tabela, dos filmes cujo diretor termine com uma determinada letra
select * from filme 
  where diretor like '%n';
-- Exibir os dados da tabela, dos filmes cujo gênero tenha como segunda letra uma 
-- determinada letra.
select * from filme 
  where genero like '_o%';
--  Exibir os dados da tabela, dos filmes cujo título tenha como penúltima letra uma 
-- determinada letra
select * from filme
  where titulo like '%r_';
-- Elimine a tabela
drop table filme;

-- Criar a tabela chamada Professor para conter os dados: idProfessor, nome (tamanho 50), 
-- especialidade (tamanho 40), dtNasc (date), sendo que idProfessor é a chave primária da 
-- tabela.
create table professor (
idprofessor int primary key,
nome varchar(50),
especialidade varchar(40),
dtnasc date);
describe professor;
-- Inserir dados na tabela, procurando colocar uma especialista para mais de um professor. 
-- Procure inserir pelo menos uns 6 professores
insert into professor value 
(1, 'vivian', 'banco de dados', 19831013);
select * from professor;
insert into professor value
(2, 'joão pedro', 'algoritimo', 19931108),
(3, 'marcela', 'socio emocional', 19870923),
(4, 'graciele', 'português', 19890713),
(5, 'marcio', 'geografa', 19781222),
(6, 'cleber', 'inglês', 19830507);
-- Exibir todos os dados da tabela
select * from professor;
-- Exibir apenas as especialidades dos professores
select especialidade from professor;
-- Exibir apenas os dados dos professores de uma determinada especialidade
select * from professor
  where especialidade = 'algoritimo';
-- Exibir os dados da tabela ordenados pelo nome do professor
select * from professor order by nome;
-- Exibir os dados da tabela ordenados pela data de nascimento do professor em ordem decrescente
select * from professor order by dtnasc desc;
-- Exibir os dados da tabela, dos professores cujo nome comece com uma determinada letra.
select * from professor 
  where nome like 'v%';
--  Exibir os dados da tabela, dos professores cujo nome termine com uma determinada letra
select * from professor
  where nome like '%e';
-- ) Exibir os dados da tabela, dos professores cujo nome tenha como segunda letra uma determinada letra.
select * from professor
  where nome like '_i%';
-- Exibir os dados da tabela, dos professores cujo nome tenha como penúltima letra uma determinada letra.
select * from professor
  where nome like '%l_';
-- Elimine a tabela
drop table professor;

-- Criar a tabela chamada Curso para conter os dados: idCurso, nome (tamanho 50), sigla 
-- (tamanho 3), coordenador, sendo que idCurso é a chave primária da tabela.

create table curso (
idcurso int primary key,
nome varchar(50),
sigla varchar(3),
coordenador varchar(40));
-- Inserir dados na tabela, procure inserir pelo menos 3 cursos.
insert into curso value 
(1, 'Sistemas de Informação', 'SI', 'Marcos'),
(2, 'Ciência da Computação', 'CC', 'Marcela'),
(3, 'Análise e Desenvolvimento de Sistemas', 'ADS', 'Vinicius');
-- a) Exibir todos os dados da tabela.
select * from curso;
-- b) Exibir apenas os coordenadores dos cursos
select coordenador from curso;
-- c) Exibir apenas os dados dos cursos de uma determinada sigla
select * from curso 
    where sigla = 'ADS';
-- d) Exibir os dados da tabela ordenados pelo nome do curso.
select * from curso order by nome;
-- e) Exibir os dados da tabela ordenados pelo nome do coordenador em ordem decrescente.
select * from curso order by coordenador desc;
-- f) Exibir os dados da tabela, dos cursos cujo nome comece com uma determinada letra.
select * from curso
    where nome like 'A%';
-- g) Exibir os dados da tabela, dos cursos cujo nome termine com uma determinada letra.
select * from curso 
    where nome like '%s';
-- h) Exibir os dados da tabela, dos cursos cujo nome tenha como segunda letra uma
-- determinada letra.
select * from curso 
    where nome like '_i%';
-- i) Exibir os dados da tabela, dos cursos cujo nome tenha como penúltima letra uma
-- determinada letra.
select * from curso 
    where nome like '%a_';
-- j) Elimine a tabela.
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
-- Exibir todos os dados da tabela.
select * from revista;
-- • Atualize os dados das categorias das 3 revistas inseridas. Exibir os dados da tabela 
-- novamente para verificar se atualizou corretamente.
update revista set categoria = 'ciência'
    where idrevista = 1;
update revista set categoria = 'jornal'
    where idrevista = 2;
update revista set categoria = 'historia'
    where idrevista = 3;
update revista set categoria = 'data'
    where idrevista = 4;
-- Insira mais 3 registros completos
insert into revista (nome, categoria) values
('março', 'data'),
('agosto', 'data'),
('janeiro', 'data');
-- Exibir novamente os dados da tabela
select * from revista;
-- Exibir a descrição da estrutura da tabela
describe revista;
-- Alterar a tabela para que a coluna categoria possa ter no máximo 40 caracteres
alter table revista modify column categoria varchar(40);
-- Exibir novamente a descrição da estrutura da tabela, para verificar se alterou o
-- tamanho da coluna categoria
describe revista;
-- Acrescentar a coluna periodicidade à tabela, que é varchar(15).
alter table revista add column periodicidade varchar(15);
-- Exibir os dados da tabela.
select * from revista;
-- Excluir a coluna periodicidade da tabela.
alter table revista drop column periodicidade;
-- EXCLUIR O BANCO DE DADOS SPRINT1
drop database sprint1;










-- 
-- 


