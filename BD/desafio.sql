create database desafio;
use desafio;
create table pessoas (
idPessoa int primary key auto_increment,
nome varchar(45),
cpf char(11),
fkMãe int);
	-- constraint fkM foreign key (fkMãe) references idPessoa,
-- fkPai int);
	-- constraint fk foreign key (fkPai) references idPessoa);
alter table pessoas add constraint fkM foreign key (fkMãe) references pessoas(idPessoa);
-- alter table pessoas add constraint fkP foreign key (fkPai) references pessoas(idPessoa);

insert into pessoas (nome) values
('Ryan');
insert into pessoas (nome) values
('Renata'),
('Fabiano'),
('Maria'),
('Sônia');

-- drop table pessoas;

select * from pessoas;

update pessoas set fkMãe = 2
	where idPessoa = 1;

update pessoas set fkMãe = 5
	where idPessoa = 2;
    
update pessoas set fkMãe = 4
	where idPessoa = 3;
    
select * from pessoas;

select * from pessoas as filho join pessoas as mae on filho.fkMãe = mae.idPessoa;