
-- Conceito do NULL

-- NULL
-- Em SQL Server, o valor NULL indica uma indisponobilidade,
-- ou seja, algo indisponível ou não atribuído.

-- Importante ressaltar que NULL não é igual a zero e nem
-- igual a um espaço (' ') porque ambos são valores atribuídos
-- e NULL representa o contrário, uma não atribuição de
-- valor. Como o NULL não pode ser igual ou diferente de
-- qualquer valor, usamos (1) IS NULL ou (2) IS NOT NULL
-- que em outras palavras são: (1) tem valor atribuído/
-- /disponível ou (2) não tem valor atríbuido/disponível,
-- por isso é importante realizar os filtros comparando
-- IS NULL ou IS NOT NULL e os outros demais valores
-- como por exemplo: zero ou espaço para ter maior
-- assertividade no retorno de sua consulta.
