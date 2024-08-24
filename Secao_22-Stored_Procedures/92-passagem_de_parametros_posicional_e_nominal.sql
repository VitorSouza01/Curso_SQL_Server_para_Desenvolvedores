
-- PASSAGEM DE PARÂMETROS POSICIONAL E NOMINAL

EXEC dbo.STP_ITENS_PEDIDO '1996-01-01', '1996-12-31', 'Toms Spezialitäten', 'Michael Suyama'

-- Filtrando usando 'CLIENTE'
EXEC dbo.STP_ITENS_PEDIDO '1996-01-01', '1996-12-31', '%', 'Michael Suyama'

-- Filtrando sem 'CLIENTE'
EXEC dbo.STP_ITENS_PEDIDO @DT1='1996-01-01', @DT2='1996-12-31', @FUNCIONARIO='Michael Suyama'
