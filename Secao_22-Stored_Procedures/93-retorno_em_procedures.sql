
-- RETORNO EM PROCEDURES

/*
Por meio do comando RETURN, é possível fazer com que a procedure retorne
um valor, que deve ser um número inteiro, no seu próprio nome.
O retorno de valor com RETURN é utilizado normalmente para sinalizar 
algum tipo de erro na execução ou para indicar que a procedure não
conseguiu executar o que foi solicitado.
*/


-- Part1
SELECT * FROM TB_PEDIDO

-- Part2
SELECT MAX(DataPedido) AS ULT_DATA_PEDIDO 
	FROM TB_PEDIDO
WHERE ClienteId = 'TOMSP'

-- Part3 - Criação da Procedure
CREATE PROCEDURE STP_ULT_DATA_PEDIDO @CLIENTE_ID VARCHAR(10)
AS BEGIN

	IF NOT EXISTS(SELECT * FROM TB_PEDIDO WHERE ClienteId = @CLIENTE_ID)
		RETURN -1;

	SELECT MAX(DataPedido) AS ULT_DATA_PEDIDO 
		FROM TB_PEDIDO
	WHERE ClienteId = @CLIENTE_ID
END


-- Cliente não existe
DECLARE @RESULTADO INT;
EXEC @RESULTADO = STP_ULT_DATA_PEDIDO 'ASFSASD';
IF @RESULTADO < 0 PRINT 'NÃO EXISTE PEDIDO PARA ESTE CLIENTE'

SELECT * FROM TB_PEDIDO

-- Cliente existe
DECLARE @RESULTADO INT;
EXEC @RESULTADO = STP_ULT_DATA_PEDIDO 'HANAR';
IF @RESULTADO < 0 PRINT 'NÃO EXISTE PEDIDO PARA ESTE CLIENTE'
