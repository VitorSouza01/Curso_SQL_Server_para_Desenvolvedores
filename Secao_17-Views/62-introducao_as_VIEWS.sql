
-- INTRODU��O �S VIEWS

-- Views
-- Uma view � uma tabela virtual formada por linhas e colunas de dados,
-- os quais s�o provenientes de tabelas referenciadas em uma query que
-- define a view. Suas linhas e colunas s�o geradas de forma din�mica
-- no instante em que a refer�ncia a view � chamada.

-- A query que determina uma view pode ser proveniente de uma ou mais
-- tabelas ou, at� mesmo, de outras views. Para determinar uma view
-- que utiliza dados provenientes de fontes distintas, podemos
-- utilizar as queries distribu�das.

-- Ao criarmos uma view, podemos selecionar o conte�do que desejamos
-- exibir de uma tabela, visto que views podem funcionar como filtros
-- que auxiliam no agrupamento de dados das tabelas, protegendo certas
-- colunas e simplificando o c�digo de uma programa��o.

-- Uma view, depois de criada, n�o deixa de existir no sistema. Embora
-- sejam internamente compostas por SELECT, as views n�o ocupam espa�o
-- no banco de dados.


-- As views podem ser de tr�s tipos conforme sua finalidade:

-- * Views Standard: Neste tipo de view s�o reunidos, em uma tabela
-- virtual, dados provenientes de uma ou mais views ou tabelas base.
-- * Views indexadas: Este tipo de view � obtido por meio da cria��o
-- de um �ndice clusterizado sobre a view.
-- * Views Praticionadas: Esse tipo de view permite que os dados em
-- uma grande tabela sejam divididos em tabelas menores. Os dados
-- s�o particionados entre as tabelas de acordo com os valores
-- aceitos nas colunas.


-- Vantagens das Views

-- * Reutiliza��o: As views s�o objetos de car�ter permanente, portanto,
-- elas podem ser lidas por v�rios usu�rios de forma simult�nea.
-- * Redu��o do custo de execu��o: Os resultados j� computados que ficam
-- armazenados em uma view indexada s�o empregados pelo otimizador de
-- query e, assim, � reduzido o custo de execu��o.
-- * Seguran�a: As views permitem ocultar determinadas colunas de uma
-- tabela.
-- * C�pia de dados: As views podem ser muito �teis para melhoria de
-- desempenho e para a parti��o de dados nos casos em que copiamos dados
-- para o SQL Server ou a partir dele.
-- * Simplifica��o do C�digo: As views permitem criar um c�digo de
-- programa��o muito mais limpo, na medida em que podem conter um SELECT
-- completo.


-- Views
-- CREATE VIEW nome_view [colunas]
-- [WITH [ENCRYPTION] [,SCHEMABINDING]]
-- AS instrucao_select
-- [WITH CHECK OPTION]


-- Views
-- * nome_view: Nome da view.
-- * colunas: Nomes das colunas da view.
-- * WITH ENCRYPTION: Protege o c�digo fonte da view, impedindo que ele
-- seja aberto a partir do Object Explorer.
-- * WITH SCHEMABINDING: Cria uma view ligada �s estrutuas das tabelas
-- �s quais ela faz refer�ncia. As tabelas que participam da view n�o
-- poder�o ter suas estrutuas alteradas enquanto a view n�o for alterada
-- de forma compat�vel.
-- * instrucao_select: Comando SELECT que ser� gravado na view.
-- * WITH CHECK OPTION: Impede a inclus�o e a altera��o de dados atr�ves
-- da view que sejam incompat�veis com a cl�usula WHERE da intru��o SELECT.