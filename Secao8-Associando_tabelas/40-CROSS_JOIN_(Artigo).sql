-- CROSS JOIN

-- Todos os dados da tabela � esquerda de JOIN s�o cruzados com
-- os dados da tabela � direita de JOIN, ao utilizarmos CROSS JOIN.

-- As poss�veis combina��es de linhas em todas as tabelas s�o
-- conhecidas como produto cartesiano.

-- O tamanho do produto cartesiano ser� definido pelo n�mero
-- de linhas na primeira tabela multiplicado pelo n�mero
-- de linhas na segunda tabela.

-- � poss�vel cruzar informa��es de duas ou mais tabelas.

-- Quando CROSS JOIN n�o possui uma cl�sula WHERE, gera um produto
-- cartesiano das tabelas envolvidas. Se adicionarmos uma cl�sula
-- WHERE, CROSS JOIN se comportar� como uma INNER JOIN.