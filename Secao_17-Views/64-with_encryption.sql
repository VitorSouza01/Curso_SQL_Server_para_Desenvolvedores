
-- WITH ENCRYPTION

-- Views
-- WITH ENCRYPTION: Protege o código fonte da view, impedindo que ele
-- seja aberto a partir do Object Explorer.


CREATE VIEW VIE_PED1 WITH ENCRYPTION 
AS
SELECT P.NumeroPedido, P.DataPedido, F.NomeCompleto
	FROM TB_PEDIDO AS P
JOIN TB_FUNCIONARIO AS F
	ON P.FuncionarioId = F.FuncionarioId

SELECT * FROM VIE_PED1
WHERE NomeCompleto = 'Michael Suyama'