CREATE DATABASE StrawTech;

USE StrawTech;

CREATE TABLE Empresas (
IdEmpresa INT auto_increment NOT NULL PRIMARY KEY,
Nome_Representante VARCHAR (50) not null,
Nome_Empresa VARCHAR (50) not null,
CNPJ CHAR (14) UNIQUE not null,
Email VARCHAR (90) NOT NULL,
Senha VARCHAR (40) not null,
Endereço VARCHAR (70) NOT NULL,
MediaTemp FLOAT,
MediaUmid FLOAT
-- CRIAR CHAVE ESTRANGEIRA DO LEITOR 
);

INSERT INTO Empresas VALUES 
	(null, 'Moranguinho', 'FrutoMel', '12345678901234', 'moranguinho@gmail.com', 'senhaSegura123', 'Vale do morango, 1', null, null),
	(null, 'Melzinho', 'Moranguetes', '43210987654321', 'melzinho@gmail.com', 'senhaSegura456', 'Vale do mel, 1', null, null),
	(null, 'Cleiton', 'Moranguinho do ABC', '09876543211234', 'cleiton@gmail.com', 'senhaSegura789', 'Vale do Cleiton, 1', null, null);
    
SELECT * FROM Empresas;

CREATE TABLE Suporte (
idAtendimento int auto_increment primary key not null,
Tipo_Atendimento varchar (100) not null,
Descricao VARChAR (8000),
Data_Atendimento DATETIME DEFAULT current_timestamp

-- CHAVE ESTRANGEIRA IdEmpresa
);

INSERT INTO Suporte VALUES 
	(null, 'Erro', 'Deu erro', '2023-08-30 13:30:29');

CREATE TABLE Registro (
-- CHAVE ESTRANGEIRA DA IdSensor
Valor_Umidade FLOAT not null,
Valor_Temperatura FLOAT not null,
Data_Hora DATETIME not null
);

INSERT INTO Registro VALUES 
	('20.9', '25.56', '2023-08-30 13:30:29');

CREATE TABLE Sensor (
	IdSensor int not null PRIMARY KEY,
	numSerie int not null,
	Modelo varchar (40)
	-- CHAVE ESTRANGEIRA idEmpresa
);