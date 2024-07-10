
-- QUAL PRODUTO TEVE MAIOR QUANTIDADE DE VENDAS NO M�S 7 DE 1996

SELECT TOP 1 PR.Descricao, SUM(D.Quantidade) AS TOTAL FROM TB_PRODUTO AS PR
JOIN TB_DETALHE_PEDIDO AS D ON PR.ProdutoId = D.ProdutoId
JOIN TB_PEDIDO AS P ON D.NumeroPedido = P.NumeroPedido
WHERE P.DataPedido BETWEEN '1996-07-01' AND '1996-07-31'
GROUP BY PR.Descricao
ORDER BY SUM(D.Quantidade) DESC


-- QUAL CLIENTE TEVE O MAIOR GASTO NO M�S 7 de 1996

SELECT TOP 1 C.NomeCompleto, SUM(D.Preco) [TOTAL GASTOS] FROM TB_CLIENTE AS C
JOIN TB_PEDIDO AS P ON C.ClienteId = P.ClienteId
JOIN TB_DETALHE_PEDIDO AS D ON P.NumeroPedido = D.NumeroPedido
WHERE P.DataPedido BETWEEN '1996-07-01' AND '1996-07-31'
GROUP BY C.NomeCompleto
ORDER BY SUM(D.Preco) DESC
