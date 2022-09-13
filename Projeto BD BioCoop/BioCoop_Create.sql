

--CREATE DATABASE BioCoop_UbiracyNeto	



USE AutoMan

Go

--DROP TABLE

DROP TABLE IF EXISTS TelefoneCliente   
DROP TABLE IF EXISTS Referir 
DROP TABLE IF EXISTS Subscrever 
DROP TABLE IF EXISTS HistoricoPreco 
DROP TABLE IF EXISTS DetalheCabaz 
DROP TABLE IF EXISTS Cabaz 
DROP TABLE IF EXISTS Autorizar 
DROP TABLE IF EXISTS Associar 
DROP TABLE IF EXISTS Associado
DROP TABLE IF EXISTS Produto 
DROP TABLE IF EXISTS Plano 
DROP TABLE IF EXISTS Cliente 
DROP TABLE IF EXISTS Categoria 
DROP TABLE IF EXISTS Cooperativa  


 
 --CREATE TABLE

 -- Oficina (Id, Nome, Nif, Morada, Distrito, Email)

CREATE TABLE Oficina
(
	Codigo INT PRIMARY KEY NOT NULL,
	Nome NVARCHAR (128) NOT NULL, 
	Email NVARCHAR (128),
	Nif VARCHAR(10) NOT NULL,
	Telefone NVARCHAR(15) NOT NULL,
	CoordWhat3 NVARCHAR(40) NOT NULL, 
	

	CONSTRAINT UN_Cooperativa_Nif UNIQUE (Nif),
)
GO

--Viatura (Id, Niv, Matricula, Marca, Ano, Cilindrada, Cavalagem, Combustivel, Descricao)

CREATE TABLE Plano  
(
	Codigo INT PRIMARY KEY NOT NULL,
	Nome VARCHAR (50) NOT NULL, 
	Descricao VARCHAR (512) NOT NULL,
	Preco NUMERIC(5,2) NOT NULL,
	Ativo CHAR(1) NOT NULL,
	
	
	

	CONSTRAINT Ativo_Plano CHECK ( Ativo = 'S' OR Ativo = 'N' ),
)
GO

--Produto (Id, Produto, Qtd)

CREATE TABLE Cliente  
(
	Id INT PRIMARY KEY,
	Nome VARCHAR (20) NOT NULL, 
	Apelido VARCHAR (20) NOT NULL,
	Email VARCHAR (128) NOT NULL,
	Sexo CHAR(1) NOT NULL,
	Nif VARCHAR(20) NOT NULL,
	CoordWhat3 NVARCHAR(30) NOT NULL,
	CodigoCooperativa INT NOT NULL,
	

	CONSTRAINT UN_Cliente_Nif UNIQUE (Nif),
	CONSTRAINT Sexo_Cliente CHECK ( Sexo = 'M' OR Sexo = 'F' ),
	CONSTRAINT FK_Cliente_CodigoCooperativa FOREIGN KEY (CodigoCooperativa) REFERENCES Cooperativa (Codigo),
		
)
GO

--- Fatura (Codigo, Data)

CREATE TABLE Subscrever  
(
	IdCliente INT NOT NULL,
	Data DATETIME2(7) NOT NULL DEFAULT (GETDATE()), 
	CodigoPlano INT NOT NULL,
	
	CONSTRAINT PK_Subscrever PRIMARY KEY CLUSTERED (IdCliente, CodigoPlano),
	CONSTRAINT FK_Subscrever_IdCliente FOREIGN KEY (IdCliente) REFERENCES Cliente (Id),
	CONSTRAINT FK_Subscrever_IdPlano FOREIGN KEY (CodigoPlano) REFERENCES Plano (Codigo),	
)
GO

--Certificado (CodCert, ValorCert, ValidadeCert, StatusCert, DataCert, IdOficina)

CREATE TABLE Associado  
(
	Id INT PRIMARY KEY NOT NULL,
	Nome VARCHAR (128) NOT NULL,
	Nif VARCHAR(10) NOT NULL,
	Telefone VARCHAR (15) NOT NULL,
	CodigoCooperativa INT NOT NULL,


	CONSTRAINT UN_Associado_Nif UNIQUE (Nif),
	
	CONSTRAINT FK_Associado_CodigoCooperativa FOREIGN KEY (CodigoCooperativa) REFERENCES Cooperativa (Codigo),
)
GO

--Cliente (Id, Nome, DataCad, Nif, Morada, Email, Sexo, IdViatura)

CREATE TABLE Associar  
(
	IdAssociado INT NOT NULL,
	IdCliente INT NOT NULL,
	Data DATETIME2(7) NOT NULL DEFAULT (GETDATE()), 
	Ativo CHAR(1),
	Motivo VARCHAR(256) NOT NULL,


	CONSTRAINT Ativo_Associar CHECK ( Ativo = 'S' OR Ativo = 'N' ),
	
	CONSTRAINT FK_Associar_IdAssociado FOREIGN KEY (IdAssociado) REFERENCES Associado (Id),
	CONSTRAINT FK_Associar_IdCliente FOREIGN KEY (IdCliente) REFERENCES Cliente (Id),
)
GO

--Estocar (IdOficina, IdProduto)

CREATE TABLE Categoria  
(
	Id INT PRIMARY KEY NOT NULL,
	Nome VARCHAR (128) NOT NULL,
	CodigoCooperativa INT NOT NULL,


	CONSTRAINT FK_Categoria_CodigoCooperativa FOREIGN KEY (CodigoCooperativa) REFERENCES Cooperativa (Codigo),
)
GO

--Indicar (IdIndicado, IdCliente)

CREATE TABLE Produto  
(
	Id INT PRIMARY KEY NOT NULL,
	Nome VARCHAR (128) NOT NULL,
	Unidade CHAR(3) NOT NULL,
	PrecoAtual DECIMAL(5,2) NOT NULL, 
	CodigoCooperativa INT NOT NULL,
	IdCategoria INT NOT NULL,

	CONSTRAINT Unidade_Produto CHECK ( Unidade = 'KG' OR Unidade = 'un' ),
	CONSTRAINT FK_Produto_CodigoCooperativa FOREIGN KEY (CodigoCooperativa) REFERENCES Cooperativa (Codigo),
	CONSTRAINT FK_Produto_IdCategoria FOREIGN KEY (IdCategoria) REFERENCES Categoria (Id),
)
GO

--Servico (Id, Tipo, Descricao, Data, PrecoHora, TempoExec, PrecoTotal, DataAtual, Status, CodigoFatura, IdOficina, IdProduto)

CREATE TABLE Autorizar  
(
	IdAssociado INT NOT NULL,
	IdProduto INT NOT NULL,
	Data DATETIME2(7) NOT NULL DEFAULT (GETDATE()),
	IsBlocked CHAR(1),


	CONSTRAINT IsBlocked_Autorizar CHECK ( IsBlocked = 'S' OR IsBlocked = 'N' ),
	
	CONSTRAINT PK_Autorizar PRIMARY KEY CLUSTERED (IdAssociado, IdProduto),
	CONSTRAINT FK_Autorizar_IdAssociado FOREIGN KEY (IdAssociado) REFERENCES Associado (Id),
	CONSTRAINT FK_Autorizar_IdProduto FOREIGN KEY (IdProduto) REFERENCES Produto (Id),
)
GO

--Marcacao (Id, Data, KmAtual, ObsViatura, IdCliente, IdServico, IdOficina)

CREATE TABLE HistoricoPreco  
(
	Id INT PRIMARY KEY NOT NULL,
	Preco DECIMAL(5,2) NOT NULL,
	DataInicio DATETIME2(7) NOT NULL,
	DataFim DATETIME2(7) NOT NULL,
	IdProduto INT NOT NULL,


	CONSTRAINT FK_HistoricoPreco_IdProduto FOREIGN KEY (IdProduto) REFERENCES Produto (Id),
)
GO

--TelefoneCliente (IdCliente, Telefone)

CREATE TABLE TelefoneCliente   
(
	telefone VARCHAR(15) NOT NULL,
	IdCliente INT NOT NULL,

	
	CONSTRAINT PK_TelefoneCliente PRIMARY KEY CLUSTERED(telefone, IdCliente),
	
	CONSTRAINT FK_TelefoneCliente_IdCliente FOREIGN KEY (IdCliente) REFERENCES Cliente (Id),
)
GO

--TelefoneOficina (IdOficina, Telefone)

CREATE TABLE TelefoneOficina   
(
	telefone VARCHAR(15) NOT NULL,
	IdCliente INT NOT NULL,

	
	CONSTRAINT PK_TelefoneCliente PRIMARY KEY CLUSTERED(telefone, IdCliente),
	
	CONSTRAINT FK_TelefoneCliente_IdCliente FOREIGN KEY (IdCliente) REFERENCES Cliente (Id),
)
GO

-- DROP INDEX

DROP INDEX IF EXISTS IDX_Cliente_CodigoCooperativa ON Cliente
DROP INDEX IF EXISTS IDX_Subscrever_IdCliente ON Subscrever
DROP INDEX IF EXISTS IDX_Subscrever_CodigoPlano ON Subscrever
DROP INDEX IF EXISTS IDX_Associado_CodigoCooperativa ON Associado
DROP INDEX IF EXISTS IDX_Associar_IdAssociado ON Associar
DROP INDEX IF EXISTS IDX_Associar_IdCliente ON Associar
DROP INDEX IF EXISTS IDX_Categoria_CodigoCooperativa ON Categoria
DROP INDEX IF EXISTS IDX_Produto_CodigoCooperativa ON Produto
DROP INDEX IF EXISTS IDX_Produto_IdCategoria ON Produto
DROP INDEX IF EXISTS IDX_Autorizar_IdAssociado ON Autorizar
DROP INDEX IF EXISTS IDX_Autorizar_IdProduto ON Autorizar
DROP INDEX IF EXISTS IDX_HistoricoPreco_IdProduto ON HistoricoPreco
DROP INDEX IF EXISTS IDX_Cabaz_IdPlano ON Cabaz
DROP INDEX IF EXISTS IDX_Cabaz_IdAssociado ON Cabaz
DROP INDEX IF EXISTS IDX_Cabaz_IdCliente ON Cabaz
DROP INDEX IF EXISTS IDX_DetalheCabaz_IdCabaz ON DetalheCabaz
DROP INDEX IF EXISTS IDX_DetalheCabaz_IdProduto ON DetalheCabaz
DROP INDEX IF EXISTS IDX_Referir_IdCategoria ON Referir
DROP INDEX IF EXISTS IDX_Referir_IdParentCategoria ON Referir
DROP INDEX IF EXISTS IDX_TelefoneCliente_IdCliente ON TelefoneCliente

--CREATE INDEX

CREATE NONCLUSTERED INDEX IDX_Cliente_CodigoCooperativa ON Cliente (CodigoCooperativa)
CREATE NONCLUSTERED INDEX IDX_Subscrever_IdCliente ON Subscrever (IdCliente)
CREATE NONCLUSTERED INDEX IDX_Subscrever_CodigoPlano ON Subscrever (CodigoPlano)
CREATE NONCLUSTERED INDEX IDX_Associado_CodigoCooperativa ON Associado (CodigoCooperativa)
CREATE NONCLUSTERED INDEX IDX_Associar_IdAssociado ON Associar (IdAssociado)
CREATE NONCLUSTERED INDEX IDX_Associar_IdCliente ON Associar (IdCliente)
CREATE NONCLUSTERED INDEX IDX_Categoria_CodigoCooperativa ON Categoria (CodigoCooperativa)
CREATE NONCLUSTERED INDEX IDX_Produto_CodigoCooperativa ON Produto (CodigoCooperativa)
CREATE NONCLUSTERED INDEX IDX_Produto_IdCategoria ON Produto (IdCategoria)
CREATE NONCLUSTERED INDEX IDX_Autorizar_IdAssociado ON Autorizar (IdAssociado)
CREATE NONCLUSTERED INDEX IDX_Autorizar_IdProduto ON Autorizar (IdProduto)
CREATE NONCLUSTERED INDEX IDX_HistoricoPreco_IdProduto ON HistoricoPreco (IdProduto)
CREATE NONCLUSTERED INDEX IDX_Cabaz_CodigoPlano ON Cabaz (CodigoPlano)
CREATE NONCLUSTERED INDEX IDX_Cabaz_IdAssociado ON Cabaz (IdAssociado)
CREATE NONCLUSTERED INDEX IDX_Cabaz_IdCliente ON Cabaz (IdCliente)
CREATE NONCLUSTERED INDEX IDX_DetalheCabaz_IdCabaz ON DetalheCabaz (IdCabaz)
CREATE NONCLUSTERED INDEX IDX_DetalheCabaz_IdProduto ON DetalheCabaz (IdProduto)
CREATE NONCLUSTERED INDEX IDX_Referir_IdCategoria ON Referir (IdCategoria)
CREATE NONCLUSTERED INDEX IDX_Referir_IdParentCategoria ON Referir (IdParentCategoria)
CREATE NONCLUSTERED INDEX IDX_TelefoneCliente_IdCliente ON TelefoneCliente (IdCliente)














