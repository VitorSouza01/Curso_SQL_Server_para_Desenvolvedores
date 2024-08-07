
-- VIEWS ATUALIZ�VEIS

-- VIEWS Atualiz�veis
-- Podemos utilizar as views para alterar dados nas tabelas, mas as
-- altera��es ser�o feitas com algumas restri��es.

-- * As colunas a serem alteradas com instru��es UPDATE, INSERT, ou
-- DELETE, por exemplo, devem pertencer a uma mesma tabela base.
-- * As colunas alteradas em uma view devem referenciar diretamente
-- os dados originais nas colunas da tabela.
-- * Para poderem ser modificadas, as colunas n�o podem ser
-- computadas ou derivadas pelo uso de fun��es, como AVG, COUNT, SUM,
-- MIN, MAX, GROUPING, STDEV, STDEVP, VAR E VARP.
-- * Para poderem ser modificadas, colunas que tiverem sido computadas
-- por uma express�o ou pelos operadores UNION, UNION ALL, CROSSJOIN,
-- EXCEPT e INTERSECT devem ser especificadas com um trigger INSTEAD OF.
-- * As colunas a serem alteradas n�o ser�o afetadas pelo uso das
-- cl�usulas GROUP BY, HAVING ou DISTINCT.
-- * � necess�rio, por meio da instru��o INSERT, especificar valores
-- para todas as colunas da tabela original que n�o permitem valores
-- nulos e que n�o tenham defini��es DEFAULT.
-- * TOP n�o pode ser utilizado com WITH CHECK OPTION no SELECT a
-- ser gravado na view.


