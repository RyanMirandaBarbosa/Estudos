create database Venda;

use Venda;

create table Endereço (
idEndereco int primary key auto_increment,
cep char(9),
rua varchar(45),
num char(9),
complemento varchar(100));

create table Cliente (
idCliente int primary key auto_increment,
nome varchar(45),
email varchar(45),
fkIndicacao int,
fkEndereco int,
constraint fkIndicacao foreign key (fkIndicacao) references Cliente (idCliente),
constraint fkEndereco foreign key (fkEndereco) references Endereço (idEndereco));

create table Venda (
idVenda int auto_increment,
totalVenda decimal(10,2),
valorDesconto decimal(10,2),
dtVenda datetime,
fkCliente int,
constraint fkCliente foreign key (fkCliente) references Cliente (idCliente),
primary key (idVenda, fkCliente));

create table Produto (
idProduto int primary key auto_increment,
nome varchar(45),
descricao varchar(300),
preco decimal(10,2));

create table Carrinho (
idCarrinho int auto_increment,
fkVenda int,
fkProduto int,
qtdProduto float,
constraint fkVenda foreign key (fkProduto) references Venda (idVenda),
constraint fkProduto foreign key (fkProduto) references Produto (idProduto),
primary key (idCarrinho, fkVenda, fkProduto));

insert into Endereço values
(null, '09913-240', 'Constituição', '386', null);

insert into Cliente values
(null, 'Ryan', 'Ryan@email.com', null, 1),
(null, 'Medina', 'Medina@email.com', 1, null),
(null, 'Iguchi', 'Iguchi@email.com', 1, null);

insert into Produto values
(null, 'x', null, 10.99),
(null, 'y', null, 100.20),
(null, 'z', null, 54.50),
(null, 'beta', null, 345.00);

insert into Venda values
(null, null, null, '2023-10-28 14:00:00', 1),
(null, null, null, current_timestamp(), 1),
(null, null, null, current_timestamp(), 2),
(null, null, null, current_timestamp(), 3);

select * from Venda;
select * from Produto;

insert into Carrinho values
(null, 1, 1, 3),
(1, 1, 2, 1),
(null, 2, 1, 2),
(2, 2, 3, 1),
(null, 3, 1, 5),
(3, 3, 2, 3),
(null, 4, 1, 6),
(4, 4, 3, 1);

update Venda set totalVenda = '133.17'
	where idVenda = 1;
    
update Venda set totalVenda = '76.48'
	where idVenda = 2;
    
update Venda set totalVenda = '355.55'
	where idVenda = 3;
    
update Venda set totalVenda = '120.44'
	where idVenda = 4;
    
select * from Endereço;
select * from Cliente;
select * from Venda;
select * from Produto;
select * from Carrinho;

select * from Cliente join Venda on Venda.fkCliente = Cliente.idCliente;

select Cliente.nome, Venda.* from Cliente join Venda on fkCliente = IdCliente where Cliente.nome = 'Ryan';

select * from Cliente as Cliente join Cliente as Indicador on Cliente.fkIndicacao = indicador.idCliente;

select * from Cliente as Cliente join Cliente as Indicador on Cliente.fkIndicacao = indicador.idCliente where indicador.nome = 'Ryan';

select * from Cliente as Cliente left join Cliente as Indicador on Cliente.fkIndicacao = indicador.idCliente 
join Venda on Venda.fkCliente = Cliente.idCliente join Carrinho on Carrinho.fkVenda = Venda.idVenda 
join Produto on Carrinho.fkProduto = Produto.idProduto;

select Venda.dtVenda, produto.nome, Carrinho.qtdProduto from Venda join Carrinho on Carrinho.fkVenda = Venda.idVenda
join Produto on Carrinho.fkProduto = Produto.idProduto where Venda.idVenda = 1;

select Produto.nome, Produto.valorProduto, total  from   ---;

insert into Cliente values
(null, 'abc', 'abc@email.com', null, 1);

select * from Cliente left join Venda on Venda.fkCliente = Cliente.idCliente;

-- soma
SELECT sum(salario) FROM medico;
SELECT sum(salario) FROM medico WHERE idMedico in (1000,1003);

-- SOMA DOS VALORES DIFERENTES
SELECT sum(DISTINCT salario) FROM medico;
SELECT sum(DISTINCT salario) as SOMA FROM medico;

-- média
SELECT avg(preco) FROM Produto;

-- maximo
SELECT MAX(preco) FROM Produto;

-- minimo
SELECT MIN(preco) FROM Produto;

-- MAIOR E MENOS SALARIO
SELECT max(preco), min(preco) FROM produto;