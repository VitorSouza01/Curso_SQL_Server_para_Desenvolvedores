
-- QUAL PRODUTO TEVE MAIS VENDAS EM 07 DE 1996

SELECT
	C1.Descricao,
	C1.Quantidade
	FROM
	(
		SELECT TOP 1 PR.Descricao, SUM(D.Quantidade) AS Quantidade FROM TB_PRODUTO AS PR
			JOIN TB_DETALHE_PEDIDO AS D ON PR.ProdutoId = D.ProdutoId
		WHERE D.NumeroPedido IN(
				SELECT PE.NumeroPedido FROM TB_PEDIDO AS PE
				WHERE PE.DataPedido BETWEEN '1996-07-01' AND '1996-07-31')
			GROUP BY PR.Descricao
			ORDER BY SUM(D.Quantidade) DESC
	) AS C1
