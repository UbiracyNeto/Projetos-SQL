--VISTAS

/********************************************************************************************
1. Crie uma vista para listar o estado de cada uma das oficinas, isto �, se t�m ou ou n�o
certifica��o v�lida. Apresente tamb�m a data da primeira certifica��o.
**********************************************************************************************/

CREATE VIEW CheckCert
AS

select DISTINCT IdOficina, DataCert, StatusCert
from Certificado

GO

/********************************************************************************************
2. Crie uma vista para saber o desconto dos clientes, com base no n�mero de clientes
referenciados, sabendo que o desconto s� � v�lido durante os 3 primeiros meses ap�s o
seu registo. Considere ainda que o desconto m�ximo � de 100% e que n�o deve
apresentar clientes que n�o s�o eleg�veis a desconto.
**********************************************************************************************/

CREATE VIEW CalculaDesconto
AS

select COUNT(*) as 'Num Indicados', IdCliente,cast( 100. * count(*) / sum(count(*)) over () as decimal(10,2)) as 'Desconto %'
from Indicar
group by IdCliente;

GO

/********************************************************************************************
3. Crie uma vista para listar o n.� de oficinas que efetuam cada um dos servi�os.
**********************************************************************************************/

CREATE VIEW ContaServicos
AS

SELECT DISTINCT IdOficina AS 'Oficina', COUNT(IdServico) as 'Servi�os'
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