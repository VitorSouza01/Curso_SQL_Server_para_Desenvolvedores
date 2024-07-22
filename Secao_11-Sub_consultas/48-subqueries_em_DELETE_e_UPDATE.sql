
-- UPDATE

UPDATE TB_PRODUTO
SET Preco -= 1
WHERE CategoriaId = (SELECT CategoriaId FROM TB_CATEGORIA
						WHERE Descricao = 'Bebidas' )

SELECT Preco FROM TB_PRODUTO
WHERE CategoriaId = (SELECT CategoriaId FROM TB_CATEGORIA
						WHERE Descricao = 'Bebidas')

-- DELETE

SELECT * FROM TB_PEDIDO
WHERE FuncionarioId = (SELECT FuncionarioId FROM TB_FUNCIONARIO
						WHERE Cargo = 'Vice-Presidente de Vendas')

DELETE FROM TB_PEDIDO
WHERE FuncionarioId = (SELECT FuncionarioId FROM TB_FUNCIONARIO
						WHERE Cargo = 'Vice-Presidente de Vendas')
