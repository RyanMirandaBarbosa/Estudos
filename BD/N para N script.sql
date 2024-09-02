use sprint2;

create table Paciente (
idPaciente int primary key auto_increment,
nome varchar(45));

create table Medico (
idMedico int primary key auto_increment,
nome varchar(45),
salario decimal(10,2));

create table Consulta (
idConsulta int auto_increment,
fkPaciente int,
fkMedico int,
constraint fkPaciente foreign key (fkPaciente) references Paciente (idPaciente),
constraint fkMedico foreign key (fkMedico) references Medico (idMedico),
primary key (idConsulta, fkPaciente, fkMedico),
dtConsulta datetime);

describe Paciente;
describe Medico;
describe Consulta;

insert into Paciente values 
(null, 'Ryan'),
(null, 'Medina'),
(null, 'Iguchi');

insert into Medico values
(null, 'Medico 1', 3000000),
(null, 'Medico 2', 2500000),
(null, 'Medico 3', 1500000);

select * from Paciente;
select * from Medico;
insert into Consulta values
(null, 1, 1, '2023-11-12 11:00:00');
insert into Consulta values
(null, 1, 1, CURRENT_TIMESTAMP);
insert into Consulta values
(null, 2, 3, CURRENT_TIMESTAMP);

select * from Consulta;

insert into Consulta values
(null, 3, 1, '2023-12-01 16:30:00'),
(null, 3, 2, '2024-01-03 08:00:00'),
(null, 2, 2, '2023-11-01 20:00:00');

select * from Consulta;

select P.nome, M.nome, C.dtConsulta from 
	Paciente as P join Consulta as C 
    on C.fkPaciente = P.idPaciente 
    join Medico as M 
    on C.fkMedico = M.idMedico
    order by C.dtConsulta;
    
