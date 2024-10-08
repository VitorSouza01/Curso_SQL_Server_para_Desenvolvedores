
-- FUN��ES ESCALARES (PR�TICA)

-- CRIAR UMA FUN��O QUE RETORNA O FATURAMENTO POR N�MERO PEDIDO

SELECT * FROM TB_DETALHE_PEDIDO

SELECT SUM(Quantidade * Preco) AS FATURAMENTO FROM TB_DETALHE_PEDIDO
WHERE NumeroPedido = 10249


CREATE FUNCTION FaturamentoDetalhePedido (@NUMERO_PEDIDO AS INT)
RETURNS FLOAT
AS
BEGIN
	DECLARE @FATURAMENTO FLOAT;
	SELECT @FATURAMENTO = SUM(Quantidade * Preco) FROM TB_DETALHE_PEDIDO
	WHERE NumeroPedido = @NUMERO_PEDIDO

	RETURN @FATURAMENTO;
END


SELECT NumeroPedido FROM TB_PEDIDO

SELECT NumeroPedido, dbo.FaturamentoDetalhePedido(NumeroPedido) AS FATURAMENTO FROM TB_PEDIDO