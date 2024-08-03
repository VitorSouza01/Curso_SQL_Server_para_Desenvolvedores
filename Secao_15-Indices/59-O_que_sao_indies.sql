
-- O QUE S�O �NDICES?


-- �ndices
-- Um �ndice � uma estrutura em disco associada a uma tabela, que agiliza
-- a recupera��o das linhas de uma tabela. Um �ndice cont�m chaves criadas
-- em uma ou mais colunas da tabela. Essas chaves s�o armazenadas em uma
-- estrutura em �rvore que habilita o SQL Server a localizar a linha ou
-- as linhas associadas aos valores de forma r�pida e eficaz.


-- Clusterizados
-- Os �ndices clusterizados classificam e armazenam as linhas de dados de
-- uma tabela com base em seus valores de chave. Um �ndice clusterizado
-- determina a ordem em que as linhas de uma tabela s�o armazenadas no
-- disco.

-- Quando uma tabela possui um �ndice clusterizado, no momento da
-- inser��o de dados as linhas dessa tabela s�o armazenadas em disco
-- na ordem exata do mesmo �ndice, isso implicar� em um ganho enorme
-- na performance das pesquisas, pois as colunas da tabela estar�o
-- ordenadas na mesma ordem dos �ndices clusterizados.

-- Geralmente um �ndice clusterizado � inclu�do na primary key na
-- defini��o de uma tabela e pode haver apenas um �ndice clusterizado
-- por tabela, pois as linhas de dados podem ser classificadas somente
-- em uma �nica ordem.


-- N�o Clusterizados
-- �ndices n�o clusterizados n�o possuem o comportamento de ordena��o
-- como os �ndices clusterizados, os �ndices clusterizados ordenam
-- fisicamente em disco tanto as linhas quanto os pr�prios �ndices
-- e mant�m eles pr�ximos uns dos outros, j� os �ndices n�o clusterizados
-- ordenam somente os �ndices, e n�o as linhas que s�o salvas aleatoriamente
-- em disco e armazena no �ndice um ponteiro para o local onde est�
-- essa linha.

-- Por padr�o, ser� criado um �ndice n�o clusterizado se n�o for
-- especificado um �ndice clusterizado. O n�mero m�ximo de �ndices
-- n�o clusterizados que podem ser criados em uma tabela � 999.