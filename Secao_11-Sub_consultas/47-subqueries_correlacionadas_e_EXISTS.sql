
-- Subqueries Correlacionadas

-- Quando uma subquery possui refer�ncia a uma ou mais colunas da query
-- externa, ela � chamada de subquery correlacionada. � uma subquey
-- repetitiva, pois � executada uma vez para cada linha da query externa,
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

-- Subqueries correlacionadas utilizadas com ao cl�usula EXISTS n�o retornam
-- dados, retornam apenas TRUE ou FALSE. Seu objetivo � executar um teste
-- de exist�ncia de linhas, se houver qualquer linha em uma subquery, ser�
-- retornado TRUE caso contr�rio retorna FALSE.

-- * Antes de EXISTS n�o devemos colocar nome de coluna, constante ou
-- express�o
-- * Quando EXISTS � usado em uma subquery, sua lista de sele��o ser�
-- normalmente um asterisco.

-- =======================================================================

-- Exemplo EXISTS

SELECT CLI.* FROM TB_CLIENTE AS CLI

WHERE NOT EXISTS (
	SELECT * FROM TB_PEDIDO AS P
	WHERE P.CLIENTEID = CLI.CLIENTEID AND
	DATA_PEDIDO BETWEEN '2020-07-01' AND '2020-07-31')
