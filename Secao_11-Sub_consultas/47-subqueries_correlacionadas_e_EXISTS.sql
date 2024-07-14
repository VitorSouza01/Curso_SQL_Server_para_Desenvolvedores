
-- Subqueries Correlacionadas

-- Quando uma subquery possui referência a uma ou mais colunas da query
-- externa, ela é chamada de subquery correlacionada. É uma subquey
-- repetitiva, pois é executada uma vez para cada linha da query externa,
-- ou seja, os valores das subqueries correlacionadas dependem da queey
-- externa.

-- =======================================================================

-- Exemplo de Subquery Correlacionada

SELECT * FROM TB_CLIENTE AS CLI
WHERE CLI.SALARIO = (
	SELECT C.SALARIO FROM TB_CARGO AS C
	WHERE C.ID = CLI.CARGOID)

-- =======================================================================

-- EXISTS

-- Subqueries correlacionadas utilizadas com ao cláusula EXISTS não retornam
-- dados, retornam apenas TRUE ou FALSE. Seu objetivo é executar um teste
-- de existência de linhas, se houver qualquer linha em uma subquery, será
-- retornado TRUE caso contrário retorna FALSE.

-- * Antes de EXISTS não devemos colocar nome de coluna, constante ou
-- expressão
-- * Quando EXISTS é usado em uma subquery, sua lista de seleção será
-- normalmente um asterisco.

-- =======================================================================

-- Exemplo EXISTS

SELECT CLI.* FROM TB_CLIENTE AS CLI

WHERE NOT EXISTS (
	SELECT * FROM TB_PEDIDO AS P
	WHERE P.CLIENTEID = CLI.CLIENTEID AND
	DATA_PEDIDO BETWEEN '2020-07-01' AND '2020-07-31')
