--Views

/****************************************************************************************
Crie a vista v_totalClientes para o atributo derivado TotalClientes da tabela Associado.
*****************************************************************************************/


DROP VIEW IF EXISTS v_totalClientes
GO

CREATE VIEW v_totalClientes
AS
SELECT COUNT(IdCliente) as 'Total Cliente'
FROM Associar a
	JOIN Associado  ON a.IdAssociado = Associado.Id 
GO



/****************************************************************************************
Crie uma vista que apresente informação sobre os clientes que se registaram nos últimos
30 dias, incluindo também a cooperativa, e em que associado. Ordene por cooperativa,
associado e cliente, por essa mesma ordem.
*****************************************************************************************/


DROP VIEW IF EXISTS Ultimos30dias
GO

CREATE VIEW Ultimos30dias
AS
SELECT a.CodigoCooperativa, c.IdAssociado, c.IdCliente, c.Data
FROM Cabaz c
	JOIN Associado a ON c.IdAssociado = a.Id
WHERE CAST (DATA AS DATE)
	BETWEEN CAST (DATEADD (DAY,-30,GETDATE()) as DATE)
	AND CAST (GETDATE() AS DATE)
GO


/****************************************************************************************
Crie uma vista para listar todos os clientes que já subscreveram um plano, mas que nunca
receberam nenhum cabaz.
*****************************************************************************************/


DROP VIEW IF EXISTS ClientesSemCabaz
GO

CREATE VIEW ClientesSemCabaz
AS
SELECT  s.IdCliente , c.Id
FROM Subscrever s
JOIN Cliente c ON s.IdCliente IS NULL

GO


/****************************************************************************************
Crie uma vista para listar, para cada plano e cooperativa, o número de clientes
atualmente ativos.
*****************************************************************************************/

DROP VIEW IF EXISTS ClientesAtivos
GO

CREATE VIEW ClientesAtivos
AS
SELECT a.IdCliente, a.Ativo, c.Id, c.CodigoCooperativa
FROM Associar a
INNER JOIN CLiente c on Ativo = 'S' and c.Id = a.IdCliente
GO