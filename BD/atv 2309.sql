create database sprint2;
use sprint2;

create table Professor (
idPofessor int primary key auto_increment,
nome varchar(50),
sobreNome varchar(30),
especialidade1 varchar(40),
especialidade2 varchar(40));

insert into Professor values
(null, 'Ryan', 'Miranda Barbosa', 'Matemática', 'Algoritomo'),
(null, 'Gustavo', 'Iguchi', 'Design', 'Banco de Dados'),
(null, 'Julieta', 'Vargas', 'Ingês', 'Socioemocional'),
(null, 'Roberto', 'Susan', 'Socioemocional', 'Matemática'),
(null, 'Chaves', 'Chavoso', 'Matemática', 'Arquitetura computacional'),
(null, 'Aki', 'Hayakawa', 'Matemática', 'algoritomo');

create table Disciplina (
IdDisc int primary key auto_increment,
nome varchar(45));

insert into Disciplina values
(null, 'Matemática'),
(null, 'algoritomo'),
(null, 'Banco de Dados'),
(null, 'Socioemocinal');

alter table Disciplina add column fkProfessor int;
select * from Disciplina;

alter table Professor rename column idPofessor to idProfessor;

alter table Disciplina add constraint fkProf 
	foreign key (fkProfessor) references Professor(idProfessor);

describe professor;
describe disciplina;
    
select * from Disciplina;

update Disciplina set fkProfessor = 1
	where idDisc in (1, 2);
    
update Disciplina set fkProfessor = 2
	where idDisc = 3;
    
update Disciplina set fkProfessor = 4
	where idDisc = 4;
    
select * from Professor join Disciplina -- Disciplina join Professor
	on idProfessor = fkProfessor;
    
select Disciplina.nome, Professor.nome from Professor join Disciplina
	on idProfessor = fkProfessor;
    
select * from Professor join Disciplina
	on idProfessor = fkProfessor
		where Professor.sobreNome like '%Miranda%';
        
select Professor.especialidade1, Disciplina.nome from Professor join Disciplina
	on idProfessor = fkProfessor
		where idProfessor = 1
			order by especialidade1;
        
create table Curso (
idCurso int primary key auto_increment,
nome varchar(50),
sigla char(3),
coordenador varchar(30));

insert into Curso values
(null, 'Análise e Desenvolvimento de Sistemas', 'ADS', 'Ryan'),
(null, 'Ciência da Computação', 'CCO', 'Thomaz'), 
(null, 'Sistemas de Informação', 'SIS', 'Laupe');

create table Aluno (
idAluno int	primary key auto_increment,
RA char(8),
nome varchar(30),
sobreNome varchar(50),
dtNasc date,
fkCurso int);

alter table Aluno add constraint fkC foreign key (fkCurso) references Curso (idCurso);

insert into Aluno values
(null, '01232061', 'Ryan', 'Miranda Barbosa', '2003-08-11', 1),
(null, '01232999', 'Thomas', 'Chavoso', '2004-07-29', 3),
(null, '01232998', 'Legochi', 'Bestars', '2002-01-19', 2);

select * from Aluno join Curso on fkCurso = idCurso;

select * from Aluno join Curso on fkCurso = idCurso
	where Aluno.nome like 'R%';

alter table Aluno add column statusCivil varchar(40);
alter table Aluno add constraint chkS check (statusCivil in('Solteiro', 'Viúvo', 'Casado'));

update Aluno set statusCivil = 'Solteiro'
	where idAluno in (1, 2, 3);
    
select * from Aluno;






