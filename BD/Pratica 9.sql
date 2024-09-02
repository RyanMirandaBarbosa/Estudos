CREATE DATABASE pratica9;
USE pratica9;

CREATE TABLE Aluno (
RA INT PRIMARY KEY,
nome VARCHAR(45),
email VARCHAR(45),
fkGrupo int
);

CREATE TABLE Grupo (
idGrupo INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(45),
descricao VARCHAR(45)) AUTO_INCREMENT = 1;

ALTER TABLE Aluno ADD CONSTRAINT fkGrupo FOREIGN KEY (fkGrupo) REFERENCES Grupo (idGrupo);

CREATE TABLE Professor (
idProfessor INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(45),
disciplina VARCHAR(45)
) AUTO_INCREMENT = 10000;

CREATE TABLE Avaliação (
idAvaliacao INT,
fkGrupo INT,
fkProfessor INT,
dtHdAvaliacao DATETIME,
nota FLOAT,
PRIMARY KEY (idAvaliacao, fkGrupo, fkProfessor),
CONSTRAINT fkGrupoAvaliacao FOREIGN KEY (fkGrupo) REFERENCES Grupo (idGrupo),
CONSTRAINT fkProfessor FOREIGN KEY (fkProfessor) REFERENCES Professor (idProfessor) 
);

select * from Aluno;
select * from Grupo;
select * from Professor;
describe Professor;
select * from Avaliação;

INSERT INTO Aluno values
(1, 'Ryan', 'Ryan@emeil.com', null);

ALTER TABLE Grupo MODIFY COLUMN descricao VARCHAR(100);

INSERT INTO Grupo VALUES
(NULL, 'Grupo 1', 'Controle de umidade em platação de cogumelo'),
(NULL, 'Grupo 11', 'Controle de umidade em armazéns de tabuas de eucalipto');

INSERT INTO Aluno Values
('01232001', 'Medina', null, 2),
('01232002', 'Iguchi', null, 2),
('01232003', 'Luca', null, 1),
('01232004', 'Yuri', null, 1);

INSERT INTO Professor VALUES
(null, 'Frizza', 'PI'),
(null, 'JP', 'Algoritimo'),
(null, 'Viviam', 'BD'),
(null, 'Marise', 'ArqComp');

INSERT INTO Avaliação VALUES
(1, 1, 10000, current_timestamp(), '10'),
(1, 1, 10001, current_timestamp(), '9'),
(2, 1, 10000, current_timestamp(), '10'),
(2, 1, 10002, current_timestamp(), '8'),
(1, 2, 10002, current_timestamp(), '9'),
(1, 2, 10003, current_timestamp(), '7'),
(2, 2, 10000, current_timestamp(), '9'),
(2, 2, 10002, current_timestamp(), '6');

select * from Aluno;
select * from Professor;
select * from Grupo;
select * from Avaliação;

select * from Grupo join Aluno on Aluno.fkGrupo = Grupo.idGrupo;

select * from Grupo join Aluno on Aluno.fkGrupo = Grupo.idGrupo where Grupo.idGrupo = 1;

select truncate (avg(nota),2) as 'média de notas' from Avaliação;

select min(nota) as 'nota min' from Avaliação;

select max(nota) as 'nota max' from Avaliação;

select sum(nota) as 'soma das notas' from Avaliação;

select Professor.*, Grupo.*, Avaliação.dtHdAvaliacao 
from Professor join Avaliação 
on Avaliação.fkProfessor = Professor.idProfessor 
join Grupo on Avaliação.fkGrupo = Grupo.idGrupo;

select Professor.*, Grupo.*, Avaliação.dtHdAvaliacao 
from Professor join Avaliação 
on Avaliação.fkProfessor = Professor.idProfessor 
join Grupo on Avaliação.fkGrupo = Grupo.idGrupo 
where Grupo.idGrupo = 1;

select Grupo.nome, Avaliação.nota, Professor.* 
from Grupo join Avaliação 
on Avaliação.fkGrupo = Grupo.idGrupo 
join Professor on Avaliação.fkProfessor = Professor.idProfessor
where Professor.nome = 'Frizza';

select Aluno.nome, Grupo.nome, Avaliação.dtHdAvaliacao, Professor.nome from 
Aluno join Grupo 
on Aluno.fkGrupo = Grupo.idGrupo
join Avaliação on Avaliação.fkGrupo = Grupo.idGrupo
join Professor on Avaliação.fkProfessor = Professor.idProfessor;

SELECT COUNT(DISTINCT(nota)) AS 'Notas distintas' FROM Avaliação;

SELECT DISTINCT(nota) AS 'Notas distintas' FROM Avaliação;

SELECT professor.nome AS 'Nome do professor', 
TRUNCATE(AVG(Avaliação.nota),2) AS 'Média de notas',
SUM(Avaliação.nota) AS 'Soma das notas'
FROM Avaliação INNER JOIN professor
ON idprofessor=fkprofessor
GROUP BY nome;
 
SELECT Professor.nome AS 'Nome do professor',  
TRUNCATE(AVG(Avaliação.nota),2) AS 'Média de notas',
SUM(Avaliação.nota) AS 'Soma das notas'
FROM Avaliação INNER JOIN Professor 
ON idProfessor = fkProfessor
GROUP BY nome;
 
SELECT Grupo.nome AS 'Nome do grupo', 
TRUNCATE(AVG(Avaliação.nota),2) AS 'Nota média',
SUM(Avaliação.nota) AS 'Soma das notas'
FROM Avaliação INNER JOIN Grupo
ON fkGrupo = idGrupo
GROUP BY nome;

select Professor.nome as 'Nome Professor',
max(Avaliação.nota) as 'nota Max',
min(Avaliação.nota) as 'nota min'
from Avaliação inner join Professor
on Avaliação.fkProfessor = Professor.idProfessor group by professor.nome;

select Grupo.nome as 'nome do Grupo',
max(Avaliação.nota) as 'nota max',
min(Avaliação.nota) as 'nota min'
from Grupo join Avaliação
on Avaliação.fkGrupo = Grupo.idGrupo
group by nome;