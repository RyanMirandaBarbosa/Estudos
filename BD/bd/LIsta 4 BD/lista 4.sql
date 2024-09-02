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

create table Música (
idMusica int primary key auto_increment,
titulo varchar (40),
artista varchar (40),
genero varchar(40));

insert into Música values
(null, 'Imaterial', 'Rodrigo Zin', 'Pop'),
(null, 'Juvia II', 'Rodrigo Zin', 'Pop'),
(null, 'Trust Nobody', 'Hippie Sabotage', 'Indie'); 

create table Álbum (
idAlbum int primary key auto_increment,
nome varchar (40),
tipo varchar (7),
dtLancamento date);

alter table Álbum add constraint chkTipo check (tipo in('digital', 'físico'));

insert into Álbum values
(null, 'Fazendo Grana pro Meu Filme', 'digital', '2018-07-25'),
(null, 'Juvia II', 'digital', '2019-02-01'),
(null, 'Trust Nobody', 'digital', '2019-06-27');

select * from Álbum;
select * from Música;

alter table Música add column fkMusica int;
alter table Música add constraint fkMusica foreign key (fkMusica)
	references Álbum(idAlbum);
    
update Música set fkMusica = '1'
	where idMusica = 1;
    
update Música set fkMusica = 2
	where idMusica = 2;
    
update Música set fkMusica = 3
	where idMusica = 3;
    
select * from Música join Álbum
	on fkMusica = idAlbum;

select Música.titulo, Álbum.nome from Música join Álbum
	on fkMusica = idAlbum;
    
select * from Música join Álbum
	on fkMusica = idAlbum
		where tipo = 'digital';