
-- VENDEDOR QUE TEVE O MAIOR VALOR NO TOAL DE SUAS VENDAS

SELECT C1.NomeCompleto, C1.Total  FROM
(
	SELECT TOP 1 C2.NomeCompleto, SUM(D.Preco) AS Total FROM TB_DETALHE_PEDIDO AS D
	JOIN (SELECT PE.NumeroPedido, F.NomeCompleto FROM TB_PEDIDO AS PE
			JOIN TB_FUNCIONARIO AS F ON PE.FuncionarioId = F.FuncionarioId
			WHERE F.Cargo = 'Representante de Vendas') AS C2
			ON C2.NumeroPedido = D.NumeroPedido
			GROUP BY C2.NomeCompleto
			ORDER BY Total DESC
) AS C1
