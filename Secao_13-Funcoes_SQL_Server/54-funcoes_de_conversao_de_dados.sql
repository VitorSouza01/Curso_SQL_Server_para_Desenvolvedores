
-- CAST / CONVERT - Convertem um tipo de dado em outro.

-- CAST - Fun��o de convers�o de dados padr�o SQL

-- CONVERT - Fun��o de convers�o de dados exclusiva do SQL Server
-- O CONVERT tem mais op��es que o CAST.

SELECT GETDATE()
SELECT CAST(GETDATE() AS VARCHAR)


SELECT CONVERT(VARCHAR, GETDATE(), 101) -- Formato Americano
SELECT CONVERT(VARCHAR, GETDATE(), 1)

SELECT CONVERT(VARCHAR, GETDATE(), 110) -- Formato Europeu
SELECT CONVERT(VARCHAR, GETDATE(), 10)

SELECT CONVERT(VARCHAR, GETDATE(), 102) -- ANSI
SELECT CONVERT(VARCHAR, GETDATE(), 2)

SELECT CONVERT(VARCHAR, GETDATE(), 110) -- Somente Hora
SELECT CONVERT(VARCHAR, GETDATE(), 10)

SELECT CONVERT(VARCHAR, GETDATE(), 120) -- Data e Hora 
SELECT CONVERT(VARCHAR, GETDATE(), 20)


SELECT CONVERT(DECIMAL(10, 2), '123123.123123') -- Converter para Decimal

SELECT CONVERT(BIGINT, '123123123123') -- Converter para Inteiro

SELECT CONVERT(INT, '3123') -- Converter para Inteiro


SELECT
	P.Descricao, D.Preco
	FROM TB_PRODUTO AS P
	JOIN TB_DETALHE_PEDIDO AS D
		ON P.ProdutoId = D.ProdutoId


-- CONCATENA��ES
-- CONCATENA��O 1� OP��O
SELECT
	'Produto '+ P.Descricao, D.Preco
	FROM TB_PRODUTO AS P
	JOIN TB_DETALHE_PEDIDO AS D
		ON P.ProdutoId = D.ProdutoId

-- CONCATENA��O 2� OP��O
SELECT
	CONCAT('Produto ', P.Descricao, ' tem o pre�o de ' , D.Preco)
	FROM TB_PRODUTO AS P
	JOIN TB_DETALHE_PEDIDO AS D
		ON P.ProdutoId = D.ProdutoId

-- CONCATENA��O 3� OP��O
SELECT
	'Produto ' + P.Descricao + ' tem o pre�o de ' + CONVERT(VARCHAR, D.Preco)
	FROM TB_PRODUTO AS P
	JOIN TB_DETALHE_PEDIDO AS D
		ON P.ProdutoId = D.ProdutoId
