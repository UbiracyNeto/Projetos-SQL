
--CREATE Database Move4All

/*

*/

USE Move4All
Go

DROP TABLE IF EXISTS Associar
DROP TABLE IF EXISTS Aluguer
DROP TABLE IF EXISTS Avaliar
DROP TABLE IF EXISTS Cartao
DROP TABLE IF EXISTS Episodio
DROP TABLE IF EXISTS Participar
DROP TABLE IF EXISTS Telemovel
DROP TABLE IF EXISTS Temporada
DROP TABLE IF EXISTS Ator
DROP TABLE IF EXISTS Precario
DROP TABLE IF EXISTS Show
DROP TABLE IF EXISTS Utilizador




CREATE TABLE Utilizador 
(
	Id INT PRIMARY KEY,
	Nome NVARCHAR (50) NOT NULL, 
	Email NVARCHAR (50) NOT NULL,
	NumFiscal VARCHAR(10) NULL,	
	

	CONSTRAINT UN_Cliente_NumFiscal UNIQUE (NumFiscal)
)
GO
 

CREATE TABLE Show 
(
	Id INT PRIMARY KEY,
	Ano SMALLINT NOT NULL,
	Titulo NVARCHAR(50) NOT NULL,
	TipoShow NVARCHAR(15) NOT NULL,
	CodPais CHAR (2) NOT NULL,
	
	
	CONSTRAINT TipoShow_Show CHECK ( TipoShow = 'Filme' OR TipoShow = 'Documentario' OR TipoShow = 'Serie')
)
GO



CREATE TABLE Precario 
(
	Id INT PRIMARY KEY,
	Telefone VARCHAR (10) NOT NULL,
	DataInicio DATE NOT NULL,
    DataFim DATE NOT NULL,
	TipoShow NVARCHAR(15) NOT NULL,
	Preco DECIMAL(5,2) NOT NULL,
	PeriodoDias INT NOT NULL, 

CONSTRAINT TipoShow_Precario CHECK ( TipoShow = 'Filme' OR TipoShow = 'Documentario' OR TipoShow = 'Serie')	
)
GO



CREATE TABLE Ator 
(
	Nickname VARCHAR (20) PRIMARY KEY,
	Nome nvarchar (50) NOT NULL,
	Genero varchar (10) NULL,
	
)
GO



CREATE TABLE Temporada 
(
	Id INT PRIMARY KEY,
	Nome nvarchar (50) NOT NULL, 
	Numero INT NOT NULL,
	IdShow INT NOT NULL,

	
	CONSTRAINT FK_Temporada_IdShow FOREIGN KEY (IdShow) REFERENCES Show (Id),
)
GO

CREATE TABLE Telemovel 
(
	IdUtilizador INT NOT NULL PRIMARY KEY,
	Telemovel VARCHAR (10) NOT NULL,
	
	
	CONSTRAINT FK_Telemovel_IdUtilizador FOREIGN KEY (IdUtilizador) REFERENCES Utilizador (Id),	
)
GO


CREATE TABLE Participar 
(
	IdShow INT NOT NULL,
	IdAtor VARCHAR(20) NOT NULL,	


CONSTRAINT FK_Participar_IdUtilizador FOREIGN KEY (IdShow) REFERENCES Show (Id),
CONSTRAINT FK_Participar_Ator FOREIGN KEY (IdAtor) REFERENCES Ator (NickName),
)
GO


CREATE TABLE Episodio 
(
	Id INT PRIMARY KEY,		
	Nome nvarchar (50) NOT NULL,
	Numero INT NOT NULL,
	DataLanc date NOT NULL,
	IdTemporada INT NOT NULL,

	
	CONSTRAINT FK_Episodio_IdTemporada FOREIGN KEY (IdTemporada) REFERENCES Temporada (Id),
)
GO


CREATE TABLE Cartao 
(
	Id INT PRIMARY KEY,		
	Mes INT NOT NULL,
	Ano INT NOT NULL,
	Numero VARCHAR(15) NOT NULL,
	CVC SMALLINT NOT NULL,
	Nome VARCHAR(30) NOT NULL,
	IdUtilizador INT NOT NULL,


	CONSTRAINT FK_Cartao_IdUtilizador FOREIGN KEY (IdUtilizador) REFERENCES Utilizador (Id),	
)
GO



CREATE TABLE Avaliar 
(
	Stars TINYINT, 
	Descricao VARCHAR(512),
	DescricaoEN VARCHAR(512),
	DataCriacao DATE,
	DataUpdate DATE,
	IdUtilizador INT NOT NULL,
	IdShow INT NOT NULL,


	CONSTRAINT FK_Avaliar_IdShow FOREIGN KEY (IdShow) REFERENCES Show (Id),
	CONSTRAINT FK_Avaliar_IdUtilizador FOREIGN KEY (IdUtilizador) REFERENCES Utilizador (Id),
	CONSTRAINT Stars CHECK ( Stars = '1' OR Stars = '2' OR Stars = '3' OR Stars = '4' OR Stars = '5' ),
)
GO



CREATE TABLE Aluguer 
(
	Id INT PRIMARY KEY,
	Data DATE,
	MetodoPag VARCHAR(10),
	DataFim DATE,
	Valor INT NOT NULL,
	IdUtilizador INT NOT NULL,
	IdShow INT NOT NULL,


	CONSTRAINT FK_Aluguer_IdUtilizador FOREIGN KEY (IdUtilizador) REFERENCES Utilizador (Id),
	CONSTRAINT FK_Aluguer_IdShow FOREIGN KEY (IdShow) REFERENCES Show (Id),
)
GO


CREATE TABLE Associar 
(
	IdAssociado INT NOT NULL,
	IdUtilizadorParent INT,	

CONSTRAINT PK_Associar PRIMARY KEY (IdAssociado),
CONSTRAINT FK_Associar_IdUtilizadorParent FOREIGN KEY (IdUtilizadorParent) REFERENCES Utilizador (Id),

)
GO

CREATE NONCLUSTERED INDEX IDX_ASSOCIAR_IDUTILIZADORPARENT ON ASSOCIAR (IDUTILIZADORPARENT)





