create database sprint2;
use sprint2;

create table cliente (
idCliente int primary key auto_increment,
nome varchar(45),
sobreNome varchar(45),
telefoneFixo char(10),
telefoneCelular char(11),
fkEnde int) auto_increment 101;

create table endereço (
idEnde int primary key auto_increment,
CEP char(8),
bairro varchar(45),
numero float,
complemento varchar(100)) auto_increment 1;

alter table cliente add constraint fkEndereco foreign key (fkEnde) references endereço(idEnde);

create table pet (
idPet int primary key auto_increment,
tipo varchar(45),
nome varchar(45),
raca varchar(45),
dtNasc date,
fkClient int,
constraint fkCliente foreign key (fkCLient) references cliente(idCLiente)) auto_increment 1;

insert into endereço values
(null, '09913140', 'centro', '386', 'casa do final da rua'),
(null, '09973220', 'eldorado', '97', 'casa laranja');

insert into cliente values
(null, 'Fabiano', 'Barbosa da Silva', null, null, '1');
select * from cliente;
insert into cliente values
(null, 'Ryan', 'Miranda Barbosa', null, null, '1'),
(null, 'Renata', 'Miranda Dantas de Souza', null, null, '2');

insert into pet values
(null, 'cobra', 'Venusta', 'corn snake', '2019-01-08', '102'),
(null, 'cachorro', 'Bullma', 'Pit Monster', '2021-08-06', '101'),
(null, 'cachorro', 'Baruk', 'Pit Monster', '2023-02-23', '101'),
(null, 'cachorro', 'Luna', 'sem raça', '2019-07-13', '103');

select * from pet;
select * from cliente;
select * from endereço;

alter table cliente change nome nomeCliente varchar(45);
select * from cliente;

select * from pet
	where tipo = 'cachorro';
    
select nome, dtNasc from pet;

select * from pet order by nome asc;

select * from cliente join endereço on fkEnde = idEnde order by bairro desc;

select * from pet
	where nome like 'B%';
    
select * from cliente
	where sobrenome like '%Miranda%';

update cliente set telefoneCelular = '11942290258'
	where idCliente = 102;
    
select * from cliente;

select * from pet join cliente on fkClient = idCliente;

select * from pet join cliente on fkClient = idCliente
	where idCliente = 101;

delete from pet where idPet = 1;

select * from pet;

drop table pet;
drop table cliente;
drop table endereço;

create table pessoa (
idPessoa int primary key auto_increment,
nome varchar(45),
dtNasc date,
profissao varchar(45));

create table gastos (
idGastos int primary key auto_increment,
valor float (10,2),
descricao varchar(100),
fkPessoa int,
constraint fkP foreign key (fkPessoa) references pessoa(idPessoa));

insert into pessoa values 
(null, 'Ryan', '2003-08-11', 'Garoto de programa');
insert into pessoa values
(null, 'Fabiano', '1981-08-08', 'Marceneiro'),
(null, 'Renata', '1984-03-17', 'segurança');

insert into gastos values
(null, '10000', 'internet', '1');
select * from gastos;
update gastos set valor = 100
	where idGastos = 1;

insert into gastos values
(null, '125', 'luz', '1'),
(null, '85', 'luz', '2');

insert into gastos values 
(null, '67', 'agua', '3');

select * from gastos;
select * from pessoa;

select nome from pessoa
	where profissao = 'segurança';
    
select * from gastos join pessoa on idPessoa = fkPessoa;

select * from gastos join pessoa on idPessoa = fkPessoa
	where pessoa.nome = 'Ryan';
    
update gastos set valor = '145'
	where idGastos = 1;
    
select * from gastos;

delete from gastos where idGastos = 1;

select * from gastos; 

drop table gastos;
drop table pessoa;

create database PraticaFuncionario;
use PraticaFuncionario;

create table setor (
idSetor int primary key auto_increment,
nome varchar(45),
andar float);

create table funcionario (
idFunc int primary key auto_increment,
nome varchar(45),
telefone char(11),
salario float(10,2),
fkSetor int,
constraint fkS foreign key (fkSetor) references setor(idSetor));

create table acompanhante (
idAcom int,
fkFunc int,
constraint fkF foreign key (fkFunc) references funcionario(idFunc),
nome varchar(45),
tipo varchar(45));

insert into setor values 
(null, 'TI', '1'),
(null, 'Financeiro', '2');

insert into funcionario values
(null, 'Ryan', null, '5000', 1),
(null, 'Pedro', null, '5000', 1),
(null, 'Diana', null, '5200', '2'),
(null, 'Rebecca', null, '7200', '2');

insert into acompanhante values
('1', '1', 'Livia', 'irmã');

select * from setor;
select * from funcionario;
select * from acompanhante;

select * from setor join funcionario on fkSetor = idSetor;

select setor.nome, funcionario.nome from funcionario join setor on fkSetor = idSetor;

select * from funcionario join acompanhante on fkFunc = idFunc;

select funcionario.nome, acompanhante.* from funcionario join acompanhante on fkFunc = idFunc;

select * from setor join funcionario on FkSetor = idSetor join acompanhante on fkFunc = idFunc;

drop database praticafuncionario;

use sprint2;

create database treinador;
use treinador;

create table treinador (
idTreinador int primary key auto_increment,
nome varchar(45),
telefone char(11),
email varchar(45),
fkTreinadorExp int,
constraint fkTEX foreign key (fkTreinadorExp) references treinador(idTreinador)) auto_increment 10;

create table nadador (
idNadador int primary key auto_increment,
nome varchar(45),
estado varchar(45),
dtNasc date,
fkTreinador int,
constraint fkT foreign key (fkTreinador) references treinador(idTreinador)) auto_increment 100;

insert into treinador values
(null, 'TreinadorA', '12345678912', 'TreinadorA@gmail.com', null),
(null, 'TreinadorB', '11223344556', 'TreinadorB@gmail.com', '12');
    
select * from treinador;

insert into nadador values 
(null, 'NadadorA', 'SP', '1999-12-02', '12'),
(null, 'NadadorB', 'BH', '1979-10-23', '13'),
(null, 'NadadorC', 'MG', '1989-07-12', '13');

select * from treinador;
select * from nadador;

select * from nadador join treinador on fkTreinador = IdTreinador;

select treinador.nome, nadador.* from treinador join nadador on fkTreinador = IdTreinador
	where idTreinador = 13;
    
select * from treinador as treinadorExp join treinador as treiner on treiner.FkTreinadorExp = treinadorExp.idTreinador;

select treinadorExp.nome, treiner.* from treinador as treinadorExp join treinador as treiner on treiner.FkTreinadorExp = treinadorExp.idTreinador
	where treinadorExp.idTreinador = 12;
    
select * from treinador as Exp join treinador as noExp on noExp.fkTreinadorExp = Exp.idTreinador 
join nadador on nadador.fkTreinador = noExp.idTreinador;

select noExp.nome, Exp.*, nadador.* from treinador as Exp join treinador as noExp on noExp.fkTreinadorExp = Exp.idTreinador
join nadador on nadador.fkTreinador = noExp.idTreinador
	where noExp.idTreinador = 13;
    
drop database treinador;

