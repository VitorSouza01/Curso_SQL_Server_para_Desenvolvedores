
-- Subqueries

-- O que s�o subqueries ou subconsultas?

-- S�o consultas que est�o aninhadas em uma instru��o SELECT, INSERT,
-- DELETE ou UPDATE, o m�ximo de aninhamentos para subconsultas � de
-- 32 n�veis, este limite varia de acordo com a complexidade das
-- instru��es que formam as subqueries e a quantidade de mem�ria
-- dispon�vel.

-- ==================================================================

-- Exemplo de Subqueries;

SELECT * FROM TABLE_01 T1

WHERE COLUNA_01

IN (SELECT COLUNA_02 FROM TABLE_02 T2
	WHERE T1.ID = T2.ID)

-- ==================================================================

-- Subqueries Principais Caracter�sticas

-- * Subconsultas podem retornar uma linha (escalar) ou muitas linhas
-- (tabular).
-- * � poss�vel obter apenas uma coluna por subquery.
-- * Quando inclu�mos uma subquery dentro de outra, esta deve estar
-- dentro de par�nteses.
-- * Como trabalhamos com consultas estruturadas, as subqueries
-- permitem que partes de um comando sejam separadas das demais partes.
-- * nvarchar(MAX), varchar(MAX) e varbinary(MAX) n�o podem ser
-- utilizados na lista de sele��o de uma subquery.
-- * Um �nico valor ser� retornado ao utilizarmos o sinal de igualdade
-- (=) no in�cio da subquery.
-- * Palavras-chave ALL, ANY e SOME podem ser utilizadas para modificar
-- operadores de compara��o que introduzem uma subquery.
--		* ALL realiza uma compara��o entre um valor escalar e um
--		conjunto de valores e uma coluna, retorna TRUE para os casos
--		em que a compara��o for verdadeira para todos os pares.
--		* SOME e ANY realizam uma compara��o entre um valor escalar
--		e um conjunto de valores de uma coluna, retorna TRUE nos
--		nos casos em que a compara��o for verdadeira para qualquer
--		um dos pares.
-- * Quando utilizamos um operador de compara��o (=, <>, >=, <=, etc)
-- para introduzir uma subquery, sua lista de sele��o poder� incluir
-- apenas um nome de coluna ou express�o, a n�o ser que utilizemos IN
-- na lista ou EXISTS no SELECT.
-- * As cl�usulas GROUP BY e HAVING n�o podem ser utilizadas em
-- subqueries introduzidas por um operador de compara��o que n�o seja
-- seguido pelas palavras-chave ANY ou ALL.
-- * ORDER BY s� � poss�vel caso a cl�sula TOP seja espec�fica e n�o
-- aceitam utiliza��o de DISTINCT.

-- ==================================================================

-- EXEMPLOS:

-- TRAGA A DESCRI��O DOS PRODUTOS QUE POSSUEM O PRE�O MAIOR QUE A 
-- M�DIA DE TODOS OS PRODUTOS

SELECT P.Descricao FROM TB_PRODUTO AS P
WHERE P.Preco > (SELECT AVG(P2.Preco) FROM TB_PRODUTO AS P2)

-- TRAGA TODOS OS CLIENTES QUE EXISTAM PEDIDOS NO M�S 7 DE 1996

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
