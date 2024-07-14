
--UPDATE TB_PRODUTO
--SET Preco += 1
--FROM

SELECT * FROM TB_PRODUTO P
JOIN TB_CATEGORIA C
ON P.CategoriaId = C.CategoriaId
WHERE C.Descricao = 'Condimentos'


UPDATE TB_PRODUTO
SET Preco += 1
FROM TB_PRODUTO P
JOIN TB_CATEGORIA C
ON P.CategoriaId = C.CategoriaId
WHERE C.Descricao = 'Condimentos'

SELECT P.Preco FROM TB_PRODUTO P
JOIN TB_CATEGORIA C
ON P.CategoriaId = C.CategoriaId
WHERE C.Descricao = 'Condimentos'

UPDATE TB_PRODUTO
SET Preco -= 2
FROM TB_PRODUTO P
JOIN TB_CATEGORIA C
ON P.CategoriaId = C.CategoriaId
WHERE C.Descricao = 'Condimentos'

-- =========================================

SELECT * FROM TB_PEDIDO P
JOIN TB_FUNCIONARIO F
ON P.FuncionarioId = F.FuncionarioId
WHERE F.Cargo = 'Vice-Presidente de Vendas'

DELETE TB_PEDIDO
FROM TB_PEDIDO P
JOIN TB_FUNCIONARIO F
ON P.FuncionarioId = F.FuncionarioId
WHERE F.Cargo = 'Vice-Presidente de Vendas'
