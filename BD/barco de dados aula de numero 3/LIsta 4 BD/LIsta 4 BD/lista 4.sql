create database sprint2;
use sprint2;

create table País (
idPais int primary key auto_increment,
nome varchar(30),
capital varchar(40));

create table Atleta (
idAtleta int primary key auto_increment,
nome varchar(40),
modalidade varchar(40),
qtdMedalhas int);

insert into País values
(null, 'Brasil', 'Brasilia'),
(null, 'Alemanha', 'Berlim'),
(null, 'Russia', 'Moskow'),
(null, 'EUA', 'Washington D.C');

insert into Atleta values 
(null, 'Medina', 'Surfe', 3),
(null, 'Neymar', 'Fut', 2),
(null, 'Killjoy', 'Surfe', 1),
(null, 'Chambber', 'Box', 7),
(null, 'Vaiper', 'Ginastica', 4),
(null, 'Haru', 'Patinação no gelo', 10);

alter table Atleta add column fkPais int;
alter table Atleta add constraint fkP foreign key (fkPais)
		references País(idPais);

update Atleta set fkPais = '1'
	where idAtleta in (1, 2);
update Atleta set fkPais = '2'
	where idAtleta in (3, 6);
    update Atleta set fkPais = '3'
	where idAtleta = 4;
update Atleta set fkPais = '4'
	where idAtleta = 5;
    
select * from Atleta join País
	on fkPais = idPais;
    
select Atleta.nome,
	País.nome from Atleta join País
		on fkPais = idPais;
        
select * from Atleta join País
		on fkPais = idPais
			where capital = 'Brasilia';

        

    

		
    

    


