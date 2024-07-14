-- CROSS JOIN

-- Todos os dados da tabela à esquerda de JOIN são cruzados com
-- os dados da tabela à direita de JOIN, ao utilizarmos CROSS JOIN.

-- As possíveis combinações de linhas em todas as tabelas são
-- conhecidas como produto cartesiano.

-- O tamanho do produto cartesiano será definido pelo número
-- de linhas na primeira tabela multiplicado pelo número
-- de linhas na segunda tabela.

-- É possível cruzar informações de duas ou mais tabelas.

-- Quando CROSS JOIN não possui uma clásula WHERE, gera um produto
-- cartesiano das tabelas envolvidas. Se adicionarmos uma clásula
-- WHERE, CROSS JOIN se comportará como uma INNER JOIN.