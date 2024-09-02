-- CRIAR O BANCO DE DADOS
-- TODO COMANDO TERMINA COM ;
CREATE DATABASE bd1adsc;

-- USAR O BANCO DE DADOS
USE bd1adsc;

-- CRIANDO A NOSSA TABELA empresa
CREATE TABLE empresa (
id int primary key,
nome varchar(50),
responsavel varchar(40)
);

-- DESCREVER A TABELA
DESCRIBE empresa;

-- EXIBIR OS DADOS DA TABELA
SELECT * FROM empresa;

-- INSERIR DADOS
INSERT INTO empresa VALUES
	(1, 'STEFANINI', 'RAFAEL');
    
SELECT * FROM empresa;

-- EXIBIR APENAS O CAMPO NOME
SELECT nome FROM empresa;

-- EXIBIR APENAS O ID E RESPONSAVEL
SELECT id, responsavel FROM empresa;

INSERT INTO empresa VALUES
	(2, 'ACCENTURE', 'DÉBORA'),
    (3, 'C6', 'VANESSA');
    
SELECT * FROM empresa;

-- EXIBIR APENAS A EMPRESA CUJO O NOME É C6
SELECT * FROM empresa WHERE nome = 'C6';

-- EXIBIR APENAS O RESPONSAVEL DA EMPRESA STEFANINI
SELECT responsavel FROM empresa WHERE nome = 'STEFANINI';

-- BONS ESTUDOS! 
-- Aula 2
-- Se não existir o banco de dados
-- CREATE DATABASE nomeBD;

-- Já existe o banco de dados?
-- Sim
-- Então utilize o bd
USE bd1adsc;

-- VARCHAR (CARACTER QUE VARIA) NOME
-- CHAR (ELE NÃO VARIA) RA

CREATE TABLE aluno (
ra char(8) primary key,
nome VARCHAR(50),
bairro VARCHAR(50));

DESCRIBE aluno;

INSERT INTO aluno VALUES 
	('01232999', 'Vivian Silva', 'Sacomã'),
    ('01232998', 'Murilo', 'Paraíso'),
    ('01232997', 'Marcelo', 'Consolação');
    
SELECT * FROM aluno;

-- COMANDOS DDL - DEFINIÇÃO DA ESTRUTURA DA TABELA
-- CREATE TABLE
-- ALTER TABLE 
	-- ADICIONAR COLUNA 
    -- EXCLUIR UMA COLUNA
    -- MODIFICAR UMA COLUNA
    -- RENOMEAR UMA COLUNA

-- ADICIONAR UMA COLUNA
ALTER TABLE aluno ADD COLUMN email VARCHAR(100);

DESCRIBE aluno;

SELECT * FROM aluno;

-- atualizar o dado
-- update
UPDATE aluno SET email = 'marcelo@sptech.school'
	WHERE ra = '01232997';
    
-- voltando aos comandos ddl
-- EXCLUIR UMA COLUNA
ALTER TABLE aluno DROP COLUMN email;

DESCRIBE aluno;

-- modificar uma coluna
ALTER TABLE aluno MODIFY COLUMN nome varchar(75);

-- renomear uma coluna
ALTER TABLE aluno RENAME COLUMN nome TO nomeCompleto;

-- EXCLUIR UMA TABELA
-- DROP TABLE nomeTabela;

SELECT * FROM aluno;
-- brincar com os selects
-- EXIBIR OS NOMES QUE COMEÇAM COM M
SELECT nomeCompleto FROM aluno 
	WHERE nomeCompleto LIKE 'M%';
    
-- EXIBIR OS NOMES QUE TERMINAM COM O
SELECT * FROM aluno
	WHERE nomeCompleto LIKE '%O';
    
-- EXIBIR OS NOMES QUE CONTEM A
SELECT * FROM aluno
	WHERE nomeCompleto LIKE '%A%';
    
-- EXIBIR O SOBRENOME QUE COMEÇA COM S
SELECT * FROM aluno
	WHERE nomeCompleto LIKE '% S%';
    
-- EXIBIR O NOME ONDE A TERCEIRA LETRA É R
SELECT * FROM aluno
	WHERE nomeCompleto LIKE '__R%';
    
-- EXIBIR O NOME ONDE A PENULTIMA LETRA É L
SELECT * FROM aluno
	WHERE nomeCompleto LIKE '%L_';
    
SELECT * FROM aluno;

-- ordenar decrescente pelo bairro
SELECT * FROM aluno ORDER BY bairro DESC;

INSERT INTO aluno VALUES
	('01232996', 'Pedro', 'Centro');
    
SELECT * FROM aluno ORDER BY nomeCompleto;
SELECT * FROM aluno ORDER BY nomeCompleto DESC;

-- EXCLUIR UMA LINHA/TUPLA
-- NÃO EXISTE UPDATE NEM DELETE SEM WHERE
DELETE FROM aluno WHERE ra = '01232999';
SELECT * FROM aluno;
-- Aula 3
-- DDL: comandos que definem a estrutura da tabela
	-- ALTER TABLE: ADD COLUMN, DROP COLUMN, 
			-- MODIFY COLUMN, RENAME COLUMN
    -- CREATE TABLE
    -- DESCRIBE
    -- TRUNCATE TABLE
    -- DROP TABLE

-- DML: comandos que manipulam os dados
	-- UPDATE
    -- INSERT
    -- DELETE
	-- SELECT

-- CRIAR O BANCO DE DADOS
CREATE DATABASE sprint1;

USE sprint1;

DROP TABLE revista;    

-- CRIAR A TABELA REVISTA
CREATE TABLE revista (
idRevista int primary key auto_increment,
nome varchar(40),
categoria varchar(30));

-- INSERIR DADOS SEM A CATEGORIA
INSERT INTO revista VALUES
	(null, 'Capricho', ''), -- valor branco
    (null, 'Veja', null); -- valor é nulo
    
INSERT INTO revista (nome) VALUES
	('Quatro Rodas'),
    ('Recreio');
    
SELECT * FROM revista;

UPDATE revista SET categoria = 'Infanto-juvenil'
	WHERE idRevista = 1;
    
-- REALIZAR UMA ATUALIZAÇÃO DA MESMA CATEGORIA EM MAIS DE UM REGISTRO
UPDATE revista SET categoria = 'Diversos'
	WHERE idRevista = 2 OR idRevista = 3;
UPDATE revista SET categoria = 'Notícias'
	WHERE idRevista IN (2,3);

SELECT * FROM revista;

UPDATE revista SET categoria = 'Infantil'
	WHERE idRevista = 4;
    
-- diferente de ...
SELECT * FROM revista WHERE idRevista <> 4;
SELECT * FROM revista WHERE idRevista != 4;

SELECT * FROM revista;

-- criar uma coluna chamada preço
-- tipagem de números
-- inteiros INT
-- DECIMAIS
	-- FLOAT 7 DÍGITOS 12345,67
    -- DOUBLE 15 DÍGITOS 
    -- DECIMAL() 32 DÍGITOS
		-- DECIMAL(5,2) 123,45
        -- DECIMAL(7,4) 123,4567
        -- DECIMAL (6,3) 987,654
        
-- ADICIONAR A COLUNA PREÇO
ALTER TABLE revista ADD COLUMN preco FLOAT;

SELECT * FROM revista;

UPDATE revista SET preco = 1.99
	WHERE idRevista IN (2,4);
    
UPDATE revista SET preco = 21.978
	WHERE idRevista = 3;
    
-- alterar o auto-increment
ALTER TABLE revista auto_increment = 200;

INSERT INTO revista (nome) VALUES
	('Mad');
    
SELECT * FROM revista;

DELETE FROM revista WHERE idRevista = 200;

INSERT INTO revista (nome) VALUES
	('Sptech');
    
-- truncate
-- limpa os dados da tabela
TRUNCATE TABLE revista;

SELECT * FROM revista;

INSERT INTO revista (nome) VALUES
	('Dance');
-- AULA 4    
USE sptechc;
SHOW TABLES;

-- AULA 4
CREATE TABLE professor (
id int primary key auto_increment,
nome varchar(50) NOT NULL, 
cpf char(11) UNIQUE, -- ÚNICO.
email varchar(40) DEFAULT 'Sem e-mail',
dtAtual DATETIME default current_timestamp
);

DESCRIBE professor;

INSERT INTO professor (nome) VALUES
	('Frizza'),
    ('Vivian'),
    ('Marise');
    
SELECT * FROM professor;

ALTER TABLE professor ADD COLUMN funcao varchar(40);

ALTER TABLE professor ADD constraint chkFuncao
	CHECK (funcao IN ('Monitor', 'Titular'));
    
SELECT * FROM professor;

UPDATE professor SET email = 'vivian@sptech',
	funcao = 'Titular' 
		WHERE id = 2;
        
SELECT funcao FROM professor
	WHERE nome = 'Vivian';
    
-- apelidos - apelidar um campo - ALIAS
SELECT funcao AS Função FROM professor;

SELECT nome, funcao AS 'Função marota'
	FROM professor
		WHERE nome = 'Vivian';
        
SELECT nome AS nomeCompleto, funcao AS 'Função marota'
	FROM professor
		WHERE nome = 'Vivian';
        
SELECT nome, funcao FROM professor;

-- concatenar CONCAT()
SELECT concat(nome, funcao) FROM professor;
SELECT concat(nome,' ', funcao) FROM professor;
SELECT concat('O nome do professor é ',
	nome,' ', funcao) FROM professor;
    
SELECT concat('O nome do professor é ',
	nome,' ', 'e sua função é ', funcao) AS FRASE 
		FROM professor;