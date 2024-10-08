
SELECT * FROM TB_DETALHE_PEDIDO

-- M�ximo
SELECT MAX(PRECO) FROM TB_DETALHE_PEDIDO
WHERE NumeroPedido = 10248

-- M�nimo
SELECT MIN(PRECO) FROM TB_DETALHE_PEDIDO
WHERE NumeroPedido = 10248

-- M�dia
SELECT NumeroPedido, AVG(PRECO) FROM TB_DETALHE_PEDIDO
GROUP BY NumeroPedido

-- Soma
SELECT NumeroPedido, SUM(PRECO) FROM TB_DETALHE_PEDIDO
GROUP BY NumeroPedido

-- Contar
SELECT NumeroPedido, COUNT(*) FROM TB_DETALHE_PEDIDO
GROUP BY NumeroPedido


SELECT NumeroPedido, MAX(Preco) FROM TB_DETALHE_PEDIDO
GROUP BY NumeroPedido

SELECT NumeroPedido, MIN(Preco) FROM TB_DETALHE_PEDIDO
GROUP BY NumeroPedido