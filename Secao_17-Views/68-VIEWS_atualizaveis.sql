
-- VIEWS ATUALIZÁVEIS

-- VIEWS Atualizáveis
-- Podemos utilizar as views para alterar dados nas tabelas, mas as
-- alterações serão feitas com algumas restrições.

-- * As colunas a serem alteradas com instruções UPDATE, INSERT, ou
-- DELETE, por exemplo, devem pertencer a uma mesma tabela base.
-- * As colunas alteradas em uma view devem referenciar diretamente
-- os dados originais nas colunas da tabela.
-- * Para poderem ser modificadas, as colunas não podem ser
-- computadas ou derivadas pelo uso de funções, como AVG, COUNT, SUM,
-- MIN, MAX, GROUPING, STDEV, STDEVP, VAR E VARP.
-- * Para poderem ser modificadas, colunas que tiverem sido computadas
-- por uma expressão ou pelos operadores UNION, UNION ALL, CROSSJOIN,
-- EXCEPT e INTERSECT devem ser especificadas com um trigger INSTEAD OF.
-- * As colunas a serem alteradas não serão afetadas pelo uso das
-- cláusulas GROUP BY, HAVING ou DISTINCT.
-- * É necessário, por meio da instrução INSERT, especificar valores
-- para todas as colunas da tabela original que não permitem valores
-- nulos e que não tenham definições DEFAULT.
-- * TOP não pode ser utilizado com WITH CHECK OPTION no SELECT a
-- ser gravado na view.


