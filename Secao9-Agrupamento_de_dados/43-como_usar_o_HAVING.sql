
SELECT NumeroPedido, COUNT(*) FROM TB_DETALHE_PEDIDO
GROUP BY NumeroPedido

-- WHERE só filtra por campos
SELECT NumeroPedido, COUNT(*) FROM TB_DETALHE_PEDIDO
WHERE NumeroPedido = 10249
GROUP BY NumeroPedido

-- HAVING -> Especifica um critério de pesquisa para um grupo ou uma agregação
SELECT NumeroPedido, COUNT(*) FROM TB_DETALHE_PEDIDO
WHERE NumeroPedido IN (10249, 10250, 10251, 10252)
GROUP BY NumeroPedido
HAVING COUNT(*) = 3

SELECT NumeroPedido, COUNT(*) FROM TB_DETALHE_PEDIDO
WHERE NumeroPedido IN (10249, 10250, 10251, 10252)
GROUP BY NumeroPedido
HAVING COUNT(*) < 3

SELECT NumeroPedido, COUNT(*) FROM TB_DETALHE_PEDIDO
GROUP BY NumeroPedido
HAVING COUNT(*) = 3

-- ================================================

SELECT * FROM TB_CLIENTE

INSERT INTO TB_CLIENTE
(ClienteId, NomeCompleto, Contato, Cargo)
VALUES
('OPOPO', 'MARCOS ALBERTO', 'MARIA JOAQUINA', 'VENDEDOR'

-- Procurando um item duplicado na tabela
SELECT NomeCompleto, COUNT(NomeCompleto) FROM TB_CLIENTE
GROUP BY NomeCompleto
HAVING COUNT(NomeCompleto) > 1

SELECT * FROM TB_CLIENTE
WHERE NomeCompleto = 'MARCOS ALBERTO'

-- Apagando duplicidade
DELETE TB_CLIENTE WHERE ClienteId = 'OPOPO'