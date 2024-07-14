
-- Subqueries

-- O que são subqueries ou subconsultas?

-- São consultas que estão aninhadas em uma instrução SELECT, INSERT,
-- DELETE ou UPDATE, o máximo de aninhamentos para subconsultas é de
-- 32 níveis, este limite varia de acordo com a complexidade das
-- instruções que formam as subqueries e a quantidade de memória
-- disponível.

-- ==================================================================

-- Exemplo de Subqueries;

SELECT * FROM TABLE_01 T1

WHERE COLUNA_01

IN (SELECT COLUNA_02 FROM TABLE_02 T2
	WHERE T1.ID = T2.ID)

-- ==================================================================

-- Subqueries Principais Características

-- * Subconsultas podem retornar uma linha (escalar) ou muitas linhas
-- (tabular).
-- * É possível obter apenas uma coluna por subquery.
-- * Quando incluímos uma subquery dentro de outra, esta deve estar
-- dentro de parênteses.
-- * Como trabalhamos com consultas estruturadas, as subqueries
-- permitem que partes de um comando sejam separadas das demais partes.
-- * nvarchar(MAX), varchar(MAX) e varbinary(MAX) não podem ser
-- utilizados na lista de seleção de uma subquery.
-- * Um único valor será retornado ao utilizarmos o sinal de igualdade
-- (=) no início da subquery.
-- * Palavras-chave ALL, ANY e SOME podem ser utilizadas para modificar
-- operadores de comparação que introduzem uma subquery.
--		* ALL realiza uma comparação entre um valor escalar e um
--		conjunto de valores e uma coluna, retorna TRUE para os casos
--		em que a comparação for verdadeira para todos os pares.
--		* SOME e ANY realizam uma comparação entre um valor escalar
--		e um conjunto de valores de uma coluna, retorna TRUE nos
--		nos casos em que a comparação for verdadeira para qualquer
--		um dos pares.
-- * Quando utilizamos um operador de comparação (=, <>, >=, <=, etc)
-- para introduzir uma subquery, sua lista de seleção poderá incluir
-- apenas um nome de coluna ou expressão, a não ser que utilizemos IN
-- na lista ou EXISTS no SELECT.
-- * As cláusulas GROUP BY e HAVING não podem ser utilizadas em
-- subqueries introduzidas por um operador de comparação que não seja
-- seguido pelas palavras-chave ANY ou ALL.
-- * ORDER BY só é possível caso a clásula TOP seja específica e não
-- aceitam utilização de DISTINCT.

-- ==================================================================

-- EXEMPLOS:

-- TRAGA A DESCRIÇÃO DOS PRODUTOS QUE POSSUEM O PREÇO MAIOR QUE A 
-- MÉDIA DE TODOS OS PRODUTOS

SELECT P.Descricao FROM TB_PRODUTO AS P
WHERE P.Preco > (SELECT AVG(P2.Preco) FROM TB_PRODUTO AS P2)

-- TRAGA TODOS OS CLIENTES QUE EXISTAM PEDIDOS NO MÊS 7 DE 1996

SELECT C.* FROM TB_CLIENTE AS C
	WHERE EXISTS (SELECT * FROM TB_PEDIDO AS P
					WHERE C.ClienteId = P.ClienteId
					AND P.DataPedido BETWEEN '1996-07-01' AND '1996-07-31')


SELECT C.* FROM TB_CLIENTE AS C
	WHERE EXISTS (SELECT * FROM TB_PEDIDO AS P
					WHERE C.ClienteId = P.ClienteId
					AND P.DataPedido BETWEEN '1996-07-01' AND '1996-07-31')
		AND C.ClienteId = 'CHOPS'

-- TRAGA O NOME E O TOTAL DE PEDIDOS DE CADA CLIENTE

SELECT C.NomeCompleto,
		(SELECT COUNT(*) FROM TB_PEDIDO AS P WHERE P.ClienteId = C.ClienteId) [Total Pedidos]
FROM TB_CLIENTE AS C
ORDER BY [Total Pedidos]
