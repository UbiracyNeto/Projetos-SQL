--VISTAS

/********************************************************************************************
1. Crie uma vista para listar o estado de cada uma das oficinas, isto é, se têm ou ou não
certificação válida. Apresente também a data da primeira certificação.
**********************************************************************************************/

CREATE VIEW CheckCert
AS

select DISTINCT IdOficina, DataCert, StatusCert
from Certificado

GO

/********************************************************************************************
2. Crie uma vista para saber o desconto dos clientes, com base no número de clientes
referenciados, sabendo que o desconto só é válido durante os 3 primeiros meses após o
seu registo. Considere ainda que o desconto máximo é de 100% e que não deve
apresentar clientes que não são elegíveis a desconto.
**********************************************************************************************/

CREATE VIEW CalculaDesconto
AS

select COUNT(*) as 'Num Indicados', IdCliente,cast( 100. * count(*) / sum(count(*)) over () as decimal(10,2)) as 'Desconto %'
from Indicar
group by IdCliente;

GO

/********************************************************************************************
3. Crie uma vista para listar o n.º de oficinas que efetuam cada um dos serviços.
**********************************************************************************************/

CREATE VIEW ContaServicos
AS

SELECT DISTINCT IdOficina AS 'Oficina', COUNT(IdServico) as 'Serviços'
FROM Prestar
group by IdOficina

GO

/********************************************************************************************
--4. Crie uma vista para listar o total faturado por cada cliente ao longo do tempo.
**********************************************************************************************/

SELECT Oficina.Id, Oficina.Nome, Marcacao.Data, Servico.PrecoTotal, Faturar.Status
FROM Oficina JOIN Marcacao ON Marcacao.IdOficina = Oficina.Id
             JOIN Faturar ON Faturar.IdMarcacao = Marcacao.Id
			 JOIN Servico ON Faturar.IdServico =Servico.Id
WHERE Faturar.Status = 'EXC' 
ORDER BY Marcacao.Data