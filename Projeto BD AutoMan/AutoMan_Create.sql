

Use master
GO

DROP DATABASE IF EXISTS AutoMan_UbiracyNeto
GO

CREATE DATABASE AutoMan_UbiracyNeto	
GO

USE AutoMan_UbiracyNeto
GO

--DROP TABLE

DROP TABLE IF EXISTS TelefoneCliente
DROP TABLE IF EXISTS TelefoneOficina
DROP TABLE IF EXISTS Faturar
DROP TABLE IF EXISTS Marcacao
DROP TABLE IF EXISTS Servico
DROP TABLE IF EXISTS Indicar
DROP TABLE IF EXISTS Estocar
DROP TABLE IF EXISTS Produto
DROP TABLE IF EXISTS Cliente
DROP TABLE IF EXISTS Viatura
DROP TABLE IF EXISTS Certificado
DROP TABLE IF EXISTS Oficina
DROP TABLE IF EXISTS Prestar

GO

 
 --CREATE TABLE

 -- Oficina (Id, Nome, Nif, Morada, Distrito, Email) OK

CREATE TABLE Oficina
(
	Id INT PRIMARY KEY IDENTITY(1,1),
	Nome NVARCHAR (128) NOT NULL, 
	Nif VARCHAR(11) NOT NULL,
	Morada NVARCHAR(150) NOT NULL,
	Distrito NVARCHAR(20) NOT NULL, 
	Email NVARCHAR (60),

	CONSTRAINT UN_Oficina_Nif UNIQUE (Nif),
)
GO

--Viatura (Id, Niv, Matricula, Marca, Ano, Cilindrada, Cavalagem, Combustivel, Descricao) OK

CREATE TABLE Viatura 
(
	Id INT PRIMARY KEY IDENTITY(1,1),
	Niv NVARCHAR (25) NOT NULL, 
	Matricula NVARCHAR (10) NOT NULL,
	Marca NVARCHAR (15) NOT NULL,
	Ano INT NOT NULL,
	Cilindrada INT NOT NULL,
	Cavalagem INT NOT NULL,
	Combustivel CHAR(3) NOT NULL,
	Descricao NVARCHAR(512) NOT NULL,		

	CONSTRAINT Combustivel_Viatura CHECK ( Combustivel = 'ELE' OR Combustivel = 'DIE' OR Combustivel = 'GAS' OR Combustivel = 'HIB' ),
)
GO

--Produto (Id, Produto, Qtd) OK

CREATE TABLE Produto  
(
	Id INT PRIMARY KEY IDENTITY(1,1),
	Produto NVARCHAR (50) NOT NULL, 
	Qtd INT NOT NULL,		
)
GO


--Certificado (CodCert, ValorCert, ValidadeCert, StatusCert, DataCert, IdOficina) OK

CREATE TABLE Certificado  
(
	CodCert INT PRIMARY KEY IDENTITY(1,1),
	ValorCert DECIMAL(8,2) NOT NULL,
	ValidadeCert DATE,
	StatusCert CHAR (2) NOT NULL,
	DataCert DATE,
	IdOficina INT NOT NULL,

	CONSTRAINT UN_Certificado_CodCert UNIQUE (CodCert),
	CONSTRAINT StatusCert_Certificado CHECK ( StatusCert = 'AP' OR StatusCert = 'RP' ),	
	CONSTRAINT FK_Certificado_IdOficina FOREIGN KEY (IdOficina) REFERENCES Oficina (Id),
)
GO

--Cliente (Id, Nome, DataCad, Nif, Morada, Email, Sexo, IdViatura) OK

CREATE TABLE Cliente  
(
	Id INT PRIMARY KEY IDENTITY(1,1),
	Nome NVARCHAR (128) NOT NULL, 
	Nif VARCHAR(10) NOT NULL,
	DataCad DATE NOT NULL DEFAULT (GETDATE()),
	Morada NVARCHAR(150) NOT NULL,
	Email NVARCHAR (60),
	Sexo CHAR(1) NOT NULL,
	IdViatura INT NOT NULL,

	CONSTRAINT Sexo_Cliente CHECK ( Sexo = 'M' OR Sexo = 'F' ),	
	CONSTRAINT FK_Cliente_IdViatura FOREIGN KEY (IdViatura) REFERENCES Viatura (Id),	
)
GO

--Estocar (IdOficina, IdProduto) OK

CREATE TABLE Estocar  
(
	IdOficina INT NOT NULL,
	IdProduto INT NOT NULL,

	CONSTRAINT PK_Estocar PRIMARY KEY CLUSTERED (IdOficina, IdProduto), 
	CONSTRAINT FK_Estocar_IdOficina FOREIGN KEY (IdOficina) REFERENCES Oficina (Id),
	CONSTRAINT FK_Estocar_IdProduto FOREIGN KEY (IdProduto) REFERENCES Produto (Id),
)
GO

--Indicar (IdIndicado, IdCliente) OK

CREATE TABLE Indicar  
(
	IdIndicado INT PRIMARY KEY,
	IdCliente INT,

	CONSTRAINT FK_Indicar_IdIndicado FOREIGN KEY (IdIndicado) REFERENCES Cliente (Id),
	CONSTRAINT FK_Indicar_IdCliente FOREIGN KEY (IdCliente) REFERENCES Cliente (Id),
	CONSTRAINT CHK_Indicar_IdCliente CHECK (IdCliente <> IdIndicado),	
)
GO

--Servico (Id, Tipo, Descricao, PrecoHora, TempoExec, PrecoTotal, DataAtual, IdProduto) OK

CREATE TABLE Servico  
(
	Id INT PRIMARY KEY IDENTITY(1,1),
	Tipo NVARCHAR(40) NOT NULL,
	Descricao NVARCHAR(512),
	PrecoHora DECIMAL(8,2) NOT NULL,
	TempoExec TINYINT NOT NULL,
	PrecoTotal DECIMAL(8,2) NOT NULL,
	DataAtual DATETIME2(0) NOT NULL DEFAULT (GETDATE()),
	IdProduto INT NOT NULL,

	CONSTRAINT FK_Servico_IdProduto FOREIGN KEY (IdProduto) REFERENCES Produto (Id),	
)
GO

--Marcacao (Id, Data, KmAtual, ObsViatura,  IdCliente,  IdOficina) OK

CREATE TABLE Marcacao  
(
    Id INT PRIMARY KEY IDENTITY(1,1),
	Data DATETIME2(0)  NOT NULL DEFAULT (GETDATE()),
	KmAtual INT NOT NULL,
	ObsViatura NVARCHAR(512),
	IdCliente INT NOT NULL,
	IdOficina INT NOT NULL,

	CONSTRAINT FK_Marcacao_IdCliente FOREIGN KEY (IdCliente) REFERENCES Cliente (Id),
	CONSTRAINT FK_Marcacao_IdOficina FOREIGN KEY (IdOficina) REFERENCES Oficina (Id),	
)
GO

-- Prestar (IdServico, IdOficina)

CREATE TABLE Prestar  
(
	IdServico INT NOT NULL,
	IdOficina INT NOT NULL,

	CONSTRAINT PK_Prestar PRIMARY KEY CLUSTERED (IdServico, IdOficina), 
	CONSTRAINT FK_Prestar_IdServico FOREIGN KEY (IdServico) REFERENCES Servico (Id),
	CONSTRAINT FK_Prestar_IdOficina FOREIGN KEY (IdOficina) REFERENCES Oficina (Id),
)
GO

-- Faturar (IdServico, IdMarcacao, Data, Status)

CREATE TABLE Faturar  
(
	IdServico INT NOT NULL,
	IdMarcacao INT NOT NULL,
	Data DATE NOT NULL,
	Status CHAR (6) NOT NULL, 

	CONSTRAINT Status_Faturar CHECK ( Status = 'EXC' OR Status = 'NAOEXC' ),	
	CONSTRAINT PK_Faturar PRIMARY KEY CLUSTERED (IdServico, IdMarcacao), 
	CONSTRAINT FK_Faturar_IdServico FOREIGN KEY (IdServico) REFERENCES Servico (Id),
	CONSTRAINT FK_Faturar_IdMarcacao FOREIGN KEY (IdMarcacao) REFERENCES Marcacao (Id),
)
GO


--TelefoneCliente (IdCliente, Telefone) OK

CREATE TABLE TelefoneCliente   
(
	telefone VARCHAR(15) NOT NULL,
	IdCliente INT NOT NULL,
	
	CONSTRAINT PK_TelefoneCliente PRIMARY KEY CLUSTERED(telefone, IdCliente),	
	CONSTRAINT FK_TelefoneCliente_IdCliente FOREIGN KEY (IdCliente) REFERENCES Cliente (Id),
)
GO

--TelefoneOficina (IdOficina, Telefone) OK

CREATE TABLE TelefoneOficina   
(
	telefone VARCHAR(15) NOT NULL,
	IdOficina INT NOT NULL,
	
	CONSTRAINT PK_TelefoneOficina PRIMARY KEY CLUSTERED(telefone, IdOficina),	
	CONSTRAINT FK_TelefoneOficina_IdOficina FOREIGN KEY (IdOficina) REFERENCES Oficina (Id),	
)
GO

-- DROP INDEX

DROP INDEX IF EXISTS IDX_TelefoneCliente_IdCliente ON TelefoneCliente
DROP INDEX IF EXISTS IDX_TelefoneOficina_IdOficina ON TelefoneOficina
DROP INDEX IF EXISTS IDX_Certificado_IdOficina ON Certificado
DROP INDEX IF EXISTS IDX_Cliente_IdViatura ON Cliente
DROP INDEX IF EXISTS IDX_Estocar_IdOficina ON Estocar
DROP INDEX IF EXISTS IDX_Estocar_IdProduto ON Estocar
DROP INDEX IF EXISTS IDX_Indicar_IdIndicado ON Indicar
DROP INDEX IF EXISTS IDX_Indicar_IdCliente ON Indicar
DROP INDEX IF EXISTS IDX_Servico_IdProduto ON Servico
DROP INDEX IF EXISTS IDX_Marcacao_IdCliente ON Marcacao
DROP INDEX IF EXISTS IDX_Marcacao_IdOficina ON Marcacao
DROP INDEX IF EXISTS IDX_Prestar_IdServico ON Prestar
DROP INDEX IF EXISTS IDX_Prestar_IdOficina ON Prestar
DROP INDEX IF EXISTS IDX_Faturar_IdServico ON Faturar
DROP INDEX IF EXISTS IDX_Faturar_IdMarcacao ON Faturar
GO

--CREATE INDEX

CREATE NONCLUSTERED INDEX IDX_TelefoneCliente_IdCliente ON TelefoneCliente (IdCliente)
CREATE NONCLUSTERED INDEX IDX_TelefoneOficina_IdOficina ON TelefoneOficina (IdOficina)
CREATE NONCLUSTERED INDEX IDX_Certificado_IdOficina ON Certificado (IdOficina)
CREATE NONCLUSTERED INDEX IDX_Cliente_IdViatura ON Cliente (IdViatura)
CREATE NONCLUSTERED INDEX IDX_Estocar_IdOficina ON Estocar (IdOficina)
CREATE NONCLUSTERED INDEX IDX_Estocar_IdProduto ON Estocar (IdProduto)
CREATE NONCLUSTERED INDEX IDX_Indicar_IdCliente ON Indicar (IdCliente)
CREATE NONCLUSTERED INDEX IDX_Indicar_IdIndicado ON Indicar (IdIndicado)
CREATE NONCLUSTERED INDEX IDX_Servico_IdProduto ON Servico (IdProduto)
CREATE NONCLUSTERED INDEX IDX_Marcacao_IdCliente ON Marcacao (IdCliente)
CREATE NONCLUSTERED INDEX IDX_Marcacao_IdOficina ON Marcacao (IdOficina)
CREATE NONCLUSTERED INDEX IDX_Prestar_IdServico ON Prestar (IdServico)
CREATE NONCLUSTERED INDEX IDX_Prestar_IdOficina ON Prestar (IdOficina)
CREATE NONCLUSTERED INDEX IDX_Faturar_IdServico ON Faturar (IdServico)
CREATE NONCLUSTERED INDEX IDX_Faturar_IdMarcacao ON Faturar (IdMarcacao)
GO













