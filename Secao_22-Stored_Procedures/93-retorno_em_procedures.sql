
-- RETORNO EM PROCEDURES

/*
Por meio do comando RETURN, � poss�vel fazer com que a procedure retorne
um valor, que deve ser um n�mero inteiro, no seu pr�prio nome.
O retorno de valor com RETURN � utilizado normalmente para sinalizar 
algum tipo de erro na execu��o ou para indicar que a procedure n�o
conseguiu executar o que foi solicitado.
*/


-- Part1
SELECT * FROM TB_PEDIDO

-- Part2
SELECT MAX(DataPedido) AS ULT_DATA_PEDIDO 
	FROM TB_PEDIDO
WHERE ClienteId = 'TOMSP'

-- Part3 - Cria��o da Procedure
CREATE PROCEDURE STP_ULT_DATA_PEDIDO @CLIENTE_ID VARCHAR(10)
AS BEGIN

	IF NOT EXISTS(SELECT * FROM TB_PEDIDO WHERE ClienteId = @CLIENTE_ID)
		RETURN -1;

	SELECT MAX(DataPedido) AS ULT_DATA_PEDIDO 
		FROM TB_PEDIDO
	WHERE ClienteId = @CLIENTE_ID
END


-- Cliente n�o existe
DECLARE @RESULTADO INT;
EXEC @RESULTADO = STP_ULT_DATA_PEDIDO 'ASFSASD';
IF @RESULTADO < 0 PRINT 'N�O EXISTE PEDIDO PARA ESTE CLIENTE'

SELECT * FROM TB_PEDIDO

-- Cliente existe
DECLARE @RESULTADO INT;
EXEC @RESULTADO = STP_ULT_DATA_PEDIDO 'HANAR';
IF @RESULTADO < 0 PRINT 'N�O EXISTE PEDIDO PARA ESTE CLIENTE'
