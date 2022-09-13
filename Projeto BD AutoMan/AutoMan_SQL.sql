--SQL


/******************************************************************************************
1. Apresente o nome do cliente e o total faturado, de todos os clientes que faturaram mais
do que a média de todos os clientes.
*******************************************************************************************/

SELECT Cliente.Id, Cliente.Nome, Servico.Tipo, Servico.PrecoTotal, Marcacao.Data, Faturar.Status
FROM Cliente JOIN Marcacao ON Marcacao.IdCliente = Cliente.Id
			 JOIN Faturar ON Faturar.IdMarcacao = Marcacao.Id
			 JOIN Servico ON Faturar.IdServico = Servico.Id
WHERE Faturar.Status = 'EXC'
ORDER BY Marcacao.Data

/******************************************************************************************
2. Liste os 10 serviços mais caros. 
*******************************************************************************************/
 
 SELECT TOP(10) Tipo, PrecoTotal 
 FROM Servico
 ORDER BY PrecoTotal desc

/******************************************************************************************
3. Liste os produtos que não estão associados a nenhum serviço.
*******************************************************************************************/

SELECT Produto.Produto 
FROM Produto
WHERE Produto.id NOT IN (SELECT IdProduto FROM Servico); 

/******************************************************************************************
4. Para cada modelo de viatura, liste o serviço mais requisitado.
*******************************************************************************************/

--SELECT DISTINCT Viatura.Combustivel, Faturar.IdServico FROM Viatura, Faturar
--ORDER BY IdServico

  SELECT DISTINCT Faturar.IdMarcacao, Faturar.IdServico, Faturar.Status, Marcacao.Id, Marcacao.IdCliente 
  FROM Faturar, Marcacao
  WHERE Faturar.Status = 'EXC' AND Marcacao.Id = Faturar.IdMarcacao


/******************************************************************************************
5. Crie uma consulta para mostrar o total faturado agrupado por distrito e oficina ao longo
do último ano.
*******************************************************************************************/

SELECT Oficina.Id, Oficina.Nome, Marcacao.Data, Servico.PrecoTotal, Faturar.Status
FROM Oficina JOIN Marcacao ON Marcacao.IdOficina = Oficina.Id
             JOIN Faturar ON Faturar.IdMarcacao = Marcacao.Id
			 JOIN Servico ON Faturar.IdServico =Servico.Id
WHERE Faturar.Status = 'EXC' AND Servico.Id = Faturar.IdServico AND Marcacao.Data >= '2021-09-04'
ORDER BY Marcacao.Data 