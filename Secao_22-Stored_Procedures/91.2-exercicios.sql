
-- EXERCÍCIOS


-- ITENS DO PEDIDO E DETALHES PEDIDO POR PERÍODO DE DATA E/OU CLIENTE E FUNCIONARIO

-- Part1
SELECT *
FROM TB_PEDIDO AS P
JOIN TB_DETALHE_PEDIDO AS D
	ON P.NumeroPedido = D.NumeroPedido
JOIN TB_CLIENTE AS C
	ON P.ClienteId = C.ClienteId
JOIN TB_FUNCIONARIO AS F
	ON F.FuncionarioId = P.FuncionarioId
WHERE P.DataPedido BETWEEN '1997-01-01' AND '1997-12-31'


-- Part2
SELECT  P.NumeroPedido,
		P.DataPedido,
		D.Preco,
		D.Desconto,
		P.Frete,
		C.NomeCompleto AS CLIETE,
		F.NomeCompleto AS FUNCIONARIO
FROM TB_PEDIDO AS P
JOIN TB_DETALHE_PEDIDO AS D
	ON P.NumeroPedido = D.NumeroPedido
JOIN TB_CLIENTE AS C
	ON P.ClienteId = C.ClienteId
JOIN TB_FUNCIONARIO AS F
	ON F.FuncionarioId = P.FuncionarioId
WHERE P.DataPedido BETWEEN '1997-01-01' AND '1997-12-31' AND
	C.NomeCompleto LIKE '%' AND F.NomeCompleto LIKE '%'

-- Eastern Connection
-- Ernst Handel

-- Nancy Davolio
-- Steven Buchanan


-- Part3 - Criação da Procedure
CREATE PROC STP_ITENS_PEDIDO	@DT1 DATETIME2,
								@DT2 DATETIME2,
								@CLIENTE VARCHAR(50) = '%',
								@FUNCIONARIO VARCHAR(50) = '%'
AS BEGIN
	SELECT  P.NumeroPedido,
			P.DataPedido,
			D.Preco,
			D.Desconto,
			P.Frete,
			C.NomeCompleto AS CLIETE,
			F.NomeCompleto AS FUNCIONARIO
	FROM TB_PEDIDO AS P
	JOIN TB_DETALHE_PEDIDO AS D
		ON P.NumeroPedido = D.NumeroPedido
	JOIN TB_CLIENTE AS C
		ON P.ClienteId = C.ClienteId
	JOIN TB_FUNCIONARIO AS F
		ON F.FuncionarioId = P.FuncionarioId
	WHERE P.DataPedido BETWEEN @DT1 AND @DT2 AND
		C.NomeCompleto LIKE @CLIENTE AND F.NomeCompleto LIKE @FUNCIONARIO
END


EXEC STP_ITENS_PEDIDO '1997-01-01', '1997-12-31', 'Eastern Connection', 'Margaret Peacock'
EXEC STP_ITENS_PEDIDO '1997-01-01', '1997-12-31', '%', 'Margaret Peacock'

-- Eastern Connection
-- Ernst Handel

-- Nancy Davolio
-- Steven Buchanan
