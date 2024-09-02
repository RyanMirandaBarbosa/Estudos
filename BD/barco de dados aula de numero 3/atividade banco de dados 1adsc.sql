-- criar o banco de dados (create database)
-- todo comando termina em ;
CREATE DATABASE bd1adsc;

-- usar banco de dados
use bd1adsc;

-- criando a nossa tabela empresa
create table empresa (
id int primary key, 
nome varchar (50),
responsavel varchar (40)
);

-- descrever a tabela
describe empresa;

-- exibir os dados da tabela 
select * from empresa;

-- inserir dados 
insert into empresa values
   (1, "stefanini", "Rafael");
   
   select * from empresa;
   
-- exibir apenas o campo nome
select nome from empresa;

-- exibir apenas o id e responsavel 
select id, responsavel from empresa;

insert into empresa values 
  (2, "accenture", "Débora"),
  (3, "C6", "Vanessa");
  
select * from empresa;

insert into empresa values
  (4, "Barbo Design", "Fabiano");
  
  select * from empresa;
  
  -- exibir apenas a empresa cujo nome é c6
  
select * from empresa where nome = "C6" ;

-- exibir apenas o responsavel da empresa stefanini

select responsavel from empresa where nome = "stefanini" ;

select nome from empresa where nome = "Barbo Design" ; 