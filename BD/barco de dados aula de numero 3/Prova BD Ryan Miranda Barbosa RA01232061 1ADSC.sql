CREATE DATABASE continuada1;

USE continuada1;

CREATE TABLE historico (
id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(200) NOT NULL,
dataHora DATETIME DEFAULT current_timestamp,
url VARCHAR(250) NOT NULL,
navegador VARCHAR(100)
);

INSERT INTO historico (nome, url, navegador) VALUES
	('São Paulo Tech School', 'https://moodle.sptech.school/', 'Microsoft Edge'),
	('Página Inicial - Microsoft Azure', 'https://portal.azure.com/#home', 'Microsoft Edge'),
	('Ofertas e Promoções | Amazon.com.br', 'https://www.amazon.com.br/deals?ref_=nav_cs_gb', 'Firefox Developer Edition'),
	('404 Not Found', 'http://moodletech.azurewebsites.net/', 'Firefox Developer Edition'),
	('Working...', 'https://login.microsoftonline.com/kmsi', 'Firefox Developer Edition'),
	('Email - Usuario Aluno - Outlook', 'https://outlook.office.com/mail/', 'Firefox Developer Edition'),
	('Solicitações - Suporte - Digital Building', 'https://bandtec.sdpondemand.manageengine.com/app/itdesk/ui/requests', 'Firefox Developer Edition'),
	('Carrinho de compras da Amazon.com', 'https://www.amazon.com.br/gp/cart/view.html?ref_=nav_cart', 'Firefox Developer Edition'),
	('MySQL | Begin Your Download', 'https://dev.mysql.com/downloads/file/?id=516926', 'Firefox Developer Edition'),
	('MySQL | Download MySQL Installer', 'https://dev.mysql.com/downloads/installer/', 'Firefox Developer Edition');
    
select * from historico;

-- 1 - EXCLUIR A TUPLA DA TABELA historico CUJO O nome CONTÉM A PALAVRA Download;
DELETE FROM historico WHERE id in (9,10);
    
-- 2 - RENOMEAR O CAMPO nome PARA titulo DA TABELA historico;
ALTER TABLE historico RENAME COLUMN nome TO titulo;

-- 3 - ADICIONAR UM CAMPO NA TABELA historico CHAMADO sistOp (30 caracteres), ONDE GUARDARÁ O SISTEMA OPERACIONAL DO HISTÓRICO DE NAVEGAÇÃO;
-- Exemplo 1: Windows 10 Edu; Exemplo 2: Linux 20.04;
ALTER TABLE historico ADD COLUMN sistOp VARCHAR(30);

-- 4 - INSERIR OS DADOS NA TABELA historico CONFORME ABAIXO:
-- * nome = '404 Not Found';
-- * url = 'http://moodletech.azurewebsites.net/';
-- * navegador = 'Google Chrome';
-- E EXIBIR OS DADOS DA TABELA historico ONDE O nome É '404 Not Found' E O navegador É 'Google Chrome';
ALTER TABLE historico RENAME COLUMN titulo TO nome;
insert into historico (nome, url, navegador) values
('404 Not Found', 'http://moodletech.azurewebsites.net/', 'Google Chrome');
SELECT * FROM historico WHERE nome = '404 Not Found' AND navegador = 'Google Chrome';

-- 5 - EXIBIR OS DADOS DA TABELA historico CUJO A url TEM COMO PENÚLTIMA LETRA, A LETRA T;
SELECT * FROM historico WHERE url LIKE '%t_';

-- 6 - EXIBIR OS DADOS DA TABELA historico CUJO A url TERMINA COM O CARACTER /;
SELECT * FROM historico WHERE url LIKE '%/';

-- 7 SALVAR O SCRIPT COM OS COMANDOS REALIZADOS E REALIZAR O UPLOAD OU COPIAR O TEXTO NO QUADRO ABAIXO
-- upload do code

-- 8 - INSERIR UM REGISTRO NA TABELA HISTÓRICO CONFORME DADOS ABAIXO:
-- nome = 'Fazer login no Canvas (instructure.com)' url = 'https://awsacademy.instructure.com/login/canvas' dataHora = '2023-02-16 10:36:00'
INSERT INTO historico (nome, url, dataHora) VALUES
	('Fazer login no Canvas (instructure.com)', 'https://awsacademy.instructure.com/login/canvas', '2023-02-16 10:36:00');

-- 9 - AUMENTAR A QUANTIDADE DE CARACTERES DO CAMPO url NA TABELA historico PARA 500 caracteres;
ALTER TABLE historico MODIFY COLUMN url VARCHAR(500);
describe historico;

-- 10 - EXIBIR OS DADOS DA TABELA historico CUJO O nome COMEÇA COM A LETRA M;
SELECT * from historico 
	where nome like 'M%';

-- 11 Ao realizar o comando abaixo, é correto o que se afirma em:
SELECT * FROM historico;
TRUNCATE TABLE historico;
-- I - O comando TRUNCATE TABLE serve para excluir a tabela;
-- II - O comando TRUNCATE TABLE é um comando DDL;
-- III - Este comando dará erro;
-- b

-- 12 - ATUALIZAR O DADO DO CAMPO navegador DA TABELA historico PARA 'Google Chrome' ONDE O nome É IGUAL A  'Working...';
SELECT id FROM historico WHERE nome = 'Working...';
UPDATE historico SET navegador = 'Google Chrome' WHERE id = 5;

-- 13 - EXCLUIR A TABELA historico DO BANCO DE DADOS continuada1;
DROP TABLE historico;

-- 14 Ao realizar o comando acima, o usuário recebeu o seguinte erro no output:
-- Error Code: 1064. You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'CREATE TABLE professor ( idProfessor int primary key, nome varchar(45), dtNasc D' at line 3
create database sprint1;
use sprint1;
create table professor (
idProfessor int primary key,
nome varchar(45),
dtNasc date 
);

-- 15 - EXIBIR APENAS O CAMPO navegador DA TABELA historico ONDE O navegador É DIFERENTE DE 'Microsoft Edge';
SELECT navegador FROM historico WHERE navegador != 'Microsoft Edge';

-- 16 - ATUALIZAR O DADO DO CAMPO dataHora DA TABELA historico PARA '2023-02-31 08:00:00' ONDE O nome É IGUAL A  'Página Inicial - Microsoft Azure';
SELECT id FROM historico WHERE nome = 'Página Inicial - Microsoft Azure';
UPDATE historico SET dataHora = '2023-02-31 08:00:00' WHERE id = 2;

-- 17 - NO CAMPO navegador DA TABELA historico, ADICIONAR A CONSTRAINT CHECK PARA INSERIR NO CAMPO APENAS OS SEGUINTES DADOS: 'Microsoft Edge', 'Firefox Developer Edition', 'Google Chrome';
ALTER TABLE historico ADD CONSTRAINT
	CHECK (navegador IN ('Microsoft Edge', 'Firefox Developer Edition', 'Google Chrome'));

-- 18 - EXCLUIR O CAMPO NA TABELA historico CHAMADO navegador;
ALTER TABLE historico DROP COLUMN navegador;

-- 19 - EXIBIR OS DADOS DA TABELA historico CUJO A url CONTEM A PALAVRA 'AMAZON';
SELECT * FROM historico WHERE url LIKE '%amazon%';

-- 20 - EXIBIR APENAS OS NOMES DA TABELA historico CUJO O navegador É 'Microsoft Edge';
SELECT * FROM historico WHERE navegador = 'Microsoft Edge';



