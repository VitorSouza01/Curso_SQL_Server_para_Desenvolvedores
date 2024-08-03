
-- O QUE SÃO ÍNDICES?


-- Índices
-- Um índice é uma estrutura em disco associada a uma tabela, que agiliza
-- a recuperação das linhas de uma tabela. Um índice contém chaves criadas
-- em uma ou mais colunas da tabela. Essas chaves são armazenadas em uma
-- estrutura em árvore que habilita o SQL Server a localizar a linha ou
-- as linhas associadas aos valores de forma rápida e eficaz.


-- Clusterizados
-- Os índices clusterizados classificam e armazenam as linhas de dados de
-- uma tabela com base em seus valores de chave. Um índice clusterizado
-- determina a ordem em que as linhas de uma tabela são armazenadas no
-- disco.

-- Quando uma tabela possui um índice clusterizado, no momento da
-- inserção de dados as linhas dessa tabela são armazenadas em disco
-- na ordem exata do mesmo índice, isso implicará em um ganho enorme
-- na performance das pesquisas, pois as colunas da tabela estarão
-- ordenadas na mesma ordem dos índices clusterizados.

-- Geralmente um índice clusterizado é incluído na primary key na
-- definição de uma tabela e pode haver apenas um índice clusterizado
-- por tabela, pois as linhas de dados podem ser classificadas somente
-- em uma única ordem.


-- Não Clusterizados
-- Índices não clusterizados não possuem o comportamento de ordenação
-- como os índices clusterizados, os índices clusterizados ordenam
-- fisicamente em disco tanto as linhas quanto os próprios índices
-- e mantêm eles próximos uns dos outros, já os índices não clusterizados
-- ordenam somente os índices, e não as linhas que são salvas aleatoriamente
-- em disco e armazena no índice um ponteiro para o local onde está
-- essa linha.

-- Por padrão, será criado um índice não clusterizado se não for
-- especificado um índice clusterizado. O número máximo de índices
-- não clusterizados que podem ser criados em uma tabela é 999.